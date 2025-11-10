# 🎯 CÓMO USAR ESTOS HALLAZGOS - Guía Práctica

**Para**: Desarrolladores que quieren implementar el protocolo Gilbarco
**Basado en**: Análisis de decompilación completo

---

## 📋 RESUMEN DE LO QUE TIENES

### Documentación Disponible

| Documento | Qué Contiene | Cuándo Usar |
|-----------|--------------|-------------|
| **RESUMEN_EJECUTIVO_COMPLETO.md** | Overview completo | Empezar aquí |
| **DECOMPILACION_COMPLETA_HALLAZGOS.md** | Detalles técnicos del protocolo | Implementación |
| **FUNCIONES_INTERNAS_DESCUBIERTAS.md** | Clases y métodos internos | Referencia de API |
| **RESUMEN_MAESTRO_TODOS_DLLS.md** | Análisis de 18 DLLs | Background info |
| **PLAN_PROTOCOLO_GPBOX.md** | Plan de 5 días | Planificación |
| **EMPEZAR_AHORA.md** | Quick start | Primeros pasos |

---

## 🚀 PASO 1: ACTUALIZAR EL CONTROLADOR

### Cambios en gilbarco_pump_controller.py

#### 1. Cambiar Baudrate

**Antes**:
```python
self.baudrate = 9600
```

**Ahora**:
```python
self.baudrate = 19200  # ✅ Confirmado por decompilación
```

#### 2. Agregar Constantes de Protocolo

**Agregar al inicio de la clase**:
```python
class GilbarcoPumpController:
    # Constantes de protocolo (confirmadas por decompilación)
    DLE = 0x10  # Data Link Escape
    STX = 0x02  # Start of Text
    ETX = 0x03  # End of Text

    # Baudrate correcto
    BAUDRATE = 19200

    # Timeouts (basados en strings encontrados)
    TIMEOUT_INTERBYTE = 0.1  # 100ms entre bytes
    TIMEOUT_TOTAL = 2.0       # 2s timeout total
    MAX_RETRIES = 3           # Reintentos automáticos
```

#### 3. Implementar Framing DLE-STX-ETX

**Agregar método**:
```python
def _build_frame(self, pump_id: int, cmd: int, data: bytes = b'') -> bytes:
    """
    Construir frame con protocolo DLE-STX-ETX

    Formato descubierto:
    [DLE][STX][PUMP_ID][CMD][DATA...][CHK][DLE][ETX]

    Args:
        pump_id: ID de la bomba (1-99)
        cmd: Código de comando (por determinar)
        data: Datos adicionales (opcional)

    Returns:
        Frame completo listo para enviar
    """
    # Iniciar frame
    frame = bytes([self.DLE, self.STX])

    # Agregar pump_id y comando
    frame += bytes([pump_id, cmd])

    # Agregar datos con byte stuffing
    if data:
        stuffed_data = self._byte_stuff(data)
        frame += stuffed_data

    # Calcular checksum (algoritmo por confirmar)
    # Por ahora usar XOR simple
    checksum = 0
    for byte in frame[2:]:  # Desde pump_id
        checksum ^= byte
    frame += bytes([checksum])

    # Finalizar frame
    frame += bytes([self.DLE, self.ETX])

    return frame
```

#### 4. Implementar Byte Stuffing

**Agregar métodos**:
```python
def _byte_stuff(self, data: bytes) -> bytes:
    """
    Aplicar byte stuffing: DLE → DLE DLE

    Esto previene que un 0x10 en los datos
    se interprete como control DLE.
    """
    result = b''
    for byte in data:
        result += bytes([byte])
        if byte == self.DLE:
            result += bytes([self.DLE])  # Duplicar DLE
    return result

def _byte_unstuff(self, data: bytes) -> bytes:
    """
    Remover byte stuffing: DLE DLE → DLE
    """
    result = b''
    i = 0
    while i < len(data):
        if data[i] == self.DLE and i + 1 < len(data) and data[i + 1] == self.DLE:
            result += bytes([self.DLE])
            i += 2  # Saltar DLE duplicado
        else:
            result += bytes([data[i]])
            i += 1
    return result
```

#### 5. Implementar Lectura de Frames

**Agregar método**:
```python
def _read_frame(self, timeout: float = 2.0) -> Optional[bytes]:
    """
    Leer frame DLE-STX-ETX con timeout

    Returns:
        Frame completo sin DLE-STX-ETX, o None si timeout
    """
    frame = b''
    state = 'WAIT_DLE1'
    start_time = time.time()

    while time.time() - start_time < timeout:
        if self.ser.in_waiting > 0:
            byte = self.ser.read(1)[0]

            if state == 'WAIT_DLE1':
                if byte == self.DLE:
                    state = 'WAIT_STX'

            elif state == 'WAIT_STX':
                if byte == self.STX:
                    state = 'READ_DATA'
                else:
                    state = 'WAIT_DLE1'

            elif state == 'READ_DATA':
                if byte == self.DLE:
                    state = 'CHECK_ETX_OR_STUFF'
                else:
                    frame += bytes([byte])

            elif state == 'CHECK_ETX_OR_STUFF':
                if byte == self.ETX:
                    # Frame completo
                    return self._byte_unstuff(frame)
                elif byte == self.DLE:
                    # Era byte stuffing
                    frame += bytes([self.DLE])
                    state = 'READ_DATA'
                else:
                    # Error de protocolo
                    frame += bytes([self.DLE, byte])
                    state = 'READ_DATA'

        time.sleep(0.01)  # Pequeña pausa

    # Timeout
    return None
```

#### 6. Implementar Reintentos

**Agregar método**:
```python
def _send_command_with_retry(self, pump_id: int, cmd: int,
                             data: bytes = b'', max_retries: int = 3) -> Optional[bytes]:
    """
    Enviar comando con reintentos automáticos

    Basado en el string encontrado:
    "The pump is in error state or is ok but could't receive answer. I will retry ..."
    """
    for attempt in range(max_retries):
        try:
            # Construir y enviar frame
            frame = self._build_frame(pump_id, cmd, data)
            self.ser.write(frame)

            # Leer respuesta
            response = self._read_frame(timeout=self.TIMEOUT_TOTAL)

            if response:
                # Verificar pump_id en respuesta
                if len(response) > 0 and response[0] == pump_id:
                    return response
                else:
                    print(f"⚠️  Pump ID mismatch: esperado {pump_id}, recibido {response[0] if len(response) > 0 else 'N/A'}")

            # Retry
            print(f"🔄 Reintento {attempt + 1}/{max_retries}...")
            time.sleep(0.5)

        except Exception as e:
            print(f"❌ Error en intento {attempt + 1}: {e}")
            time.sleep(0.5)

    return None
```

---

## 🚀 PASO 2: CAPTURAR CÓDIGOS DE COMANDO

### Actualizar serial_monitor.py

**Cambiar baudrate**:
```python
def __init__(self, port='COM1', baudrate=19200):  # ✅ Cambio aquí
    self.port = port
    self.baudrate = baudrate  # Antes era 9600
```

### Ejecutar Captura

```bash
# Terminal 1: Iniciar captura
python serial_monitor.py

# Terminal 2: Ejecutar SSF y hacer estas operaciones:
# 1. Autorizar bomba sin preset
# 2. Autorizar bomba CON preset de $10.00
# 3. Leer estado de bomba
# 4. Detener bomba
# 5. Leer última venta
# 6. Leer totalizadores
```

### Analizar Capturas

**Buscar en los logs**:
```
capturas/
  └─ captura_YYYY-MM-DD_HH-MM-SS.txt
```

**Qué buscar**:

1. **Comando de Autorización**:
   ```
   TX: 10 02 01 XX ... 10 03
          ↑  ↑  ↑
          |  |  └─ Código de comando
          |  └──── Pump ID
          └─────── DLE STX
   ```

2. **Comando de Preset**:
   ```
   TX: 10 02 01 XX DD DD DD DD ... 10 03
                   ↑  ↑  ↑  ↑
                   └──────────── Datos del preset
   ```

3. **Respuesta de Venta**:
   ```
   RX: 10 02 01 XX DD DD DD DD DD DD DD DD DD ... 10 03
                   └────────────────────────────── Volume, Money, PPU
   ```

**Crear tabla de comandos**:
```python
# En gilbarco_pump_controller.py
class Commands:
    """Códigos de comando descubiertos por captura"""
    AUTHORIZE = 0xXX      # ← Por descubrir
    PRESET = 0xXX         # ← Por descubrir
    STOP = 0xXX           # ← Por descubrir
    STATUS = 0xXX         # ← Por descubrir
    READ_SALE = 0xXX      # ← Por descubrir
    READ_TOTALIZER = 0xXX # ← Por descubrir
```

---

## 🚀 PASO 3: IMPLEMENTAR COMANDOS ESPECÍFICOS

### Ejemplo: Autorizar Bomba

**Una vez que tengas el código de comando** (digamos 0x50):

```python
def authorize_pump(self, pump_id: int, hose: int = 1,
                   preset_amount: Optional[float] = None) -> bool:
    """
    Autorizar bomba

    Basado en función descubierta:
    SSFPumpGilbarco::iaSendPumpAuthorization (offset 0x1c4be1)

    Args:
        pump_id: ID de la bomba (1-99)
        hose: Número de manguera (1-8)
        preset_amount: Monto en USD (opcional)

    Returns:
        True si autorización exitosa
    """
    cmd = 0x50  # ← Código descubierto por captura

    # Construir datos
    data = bytes([hose])

    if preset_amount:
        # Convertir preset a entero con decimal option
        # String encontrado: "Converting Preset [%f] with Dec.Opt.:[%ld]"
        decimal_option = 2  # 2 decimales
        preset_int = int(preset_amount * (10 ** decimal_option))

        # Agregar preset (formato BCD de 4 bytes, por ejemplo)
        data += preset_int.to_bytes(4, byteorder='big')

    # Enviar comando con reintentos
    response = self._send_command_with_retry(pump_id, cmd, data)

    if response:
        # String encontrado: "AUTHORIZED"
        print(f"✅ Bomba {pump_id} autorizada")
        return True
    else:
        # String encontrado: "Error sending authorize cmd ..."
        print(f"❌ Error autorizando bomba {pump_id}")
        return False
```

### Ejemplo: Leer Última Venta

```python
def read_last_sale(self, pump_id: int) -> Optional[dict]:
    """
    Leer última venta

    Basado en función descubierta:
    SSFPumpGilbarco::iaReadPumpLastSale (offset 0x1c5375)

    String encontrado:
    "Reading sale info Volume [%.3f] Money [%.3f] PPU [%.3f]"

    Returns:
        {
            'volume': float,  # 3 decimales
            'money': float,   # 3 decimales
            'ppu': float      # 3 decimales
        }
    """
    cmd = 0xXX  # ← Por descubrir con captura

    response = self._send_command_with_retry(pump_id, cmd)

    if response and len(response) >= 13:
        # Parsear respuesta (formato exacto por confirmar)
        # Basado en "%.3f" en el string, son 3 decimales

        # Ejemplo (ajustar según captura):
        volume_raw = int.from_bytes(response[1:5], byteorder='big')
        money_raw = int.from_bytes(response[5:9], byteorder='big')
        ppu_raw = int.from_bytes(response[9:13], byteorder='big')

        return {
            'volume': volume_raw / 1000.0,  # 3 decimales
            'money': money_raw / 1000.0,    # 3 decimales
            'ppu': ppu_raw / 1000.0         # 3 decimales
        }

    return None
```

---

## 🚀 PASO 4: PROBAR CON HARDWARE

### Script de Prueba

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Prueba del protocolo descubierto
"""

from gilbarco_pump_controller import GilbarcoPumpController

def main():
    # Conectar con baudrate correcto
    controller = GilbarcoPumpController(port='COM1', baudrate=19200)

    if not controller.connect():
        print("❌ Error conectando")
        return

    print("✅ Conectado a COM1 @ 19200 bps")
    print()

    # Test 1: Leer estado
    print("Test 1: Leer estado de bomba 1")
    status = controller.request_status(pump_id=1)
    print(f"  Estado: {status}")
    print()

    # Test 2: Autorizar sin preset
    print("Test 2: Autorizar bomba 1 sin preset")
    result = controller.authorize_pump(pump_id=1, hose=1)
    print(f"  Resultado: {'✅ OK' if result else '❌ FAIL'}")
    print()

    # Test 3: Autorizar con preset
    print("Test 3: Autorizar bomba 1 con preset de $10.00")
    result = controller.authorize_pump(pump_id=1, hose=1, preset_amount=10.00)
    print(f"  Resultado: {'✅ OK' if result else '❌ FAIL'}")
    print()

    # Test 4: Detener
    print("Test 4: Detener bomba 1")
    result = controller.stop_pump(pump_id=1)
    print(f"  Resultado: {'✅ OK' if result else '❌ FAIL'}")
    print()

    # Test 5: Leer venta
    print("Test 5: Leer última venta de bomba 1")
    sale = controller.read_last_sale(pump_id=1)
    if sale:
        print(f"  Volume: {sale['volume']:.3f}")
        print(f"  Money: ${sale['money']:.2f}")
        print(f"  PPU: ${sale['ppu']:.3f}")
    else:
        print("  ❌ No se pudo leer venta")
    print()

    # Desconectar
    controller.disconnect()
    print("✅ Desconectado")

if __name__ == "__main__":
    main()
```

---

## 📊 CHECKLIST DE IMPLEMENTACIÓN

### Fase 1: Actualizar Código ✅
- [ ] Cambiar baudrate de 9600 a 19200
- [ ] Agregar constantes DLE, STX, ETX
- [ ] Implementar `_build_frame()`
- [ ] Implementar `_byte_stuff()` y `_byte_unstuff()`
- [ ] Implementar `_read_frame()`
- [ ] Implementar `_send_command_with_retry()`

### Fase 2: Capturar Comandos 🔄
- [ ] Actualizar `serial_monitor.py` con baudrate 19200
- [ ] Capturar comando de autorización
- [ ] Capturar comando de preset
- [ ] Capturar comando de stop
- [ ] Capturar comando de status
- [ ] Capturar comando de leer venta
- [ ] Capturar comando de leer totalizador
- [ ] Crear tabla de códigos de comando

### Fase 3: Implementar Comandos 🔄
- [ ] Implementar `authorize_pump()`
- [ ] Implementar `stop_pump()`
- [ ] Implementar `request_status()`
- [ ] Implementar `read_last_sale()`
- [ ] Implementar `read_totalizers()`

### Fase 4: Probar 🔄
- [ ] Probar conexión
- [ ] Probar lectura de estado
- [ ] Probar autorización sin preset
- [ ] Probar autorización con preset
- [ ] Probar detener bomba
- [ ] Probar leer venta
- [ ] Probar leer totalizadores

### Fase 5: Documentar ✅
- [ ] Crear README con ejemplos
- [ ] Documentar códigos de comando
- [ ] Documentar formato de respuestas
- [ ] Crear guía de troubleshooting

---

## 🎯 PRÓXIMOS PASOS INMEDIATOS

### HOY (1-2 horas):
1. ✅ Actualizar baudrate a 19200
2. ✅ Agregar constantes de protocolo
3. ✅ Implementar framing DLE-STX-ETX
4. 🔄 Capturar tráfico con baudrate correcto

### MAÑANA (2-3 horas):
1. Analizar capturas
2. Crear tabla de códigos de comando
3. Implementar comandos básicos
4. Probar con hardware

### SIGUIENTE (1 día):
1. Implementar todos los comandos
2. Agregar manejo de errores robusto
3. Crear tests automatizados
4. Documentar API

---

## 💡 TIPS IMPORTANTES

### Al Capturar Tráfico
- ✅ Usar baudrate 19200 (NO 9600)
- ✅ Capturar en hexadecimal
- ✅ Buscar patrones DLE-STX-ETX (10 02 ... 10 03)
- ✅ Verificar byte stuffing (10 10 en los datos)

### Al Implementar
- ✅ Siempre aplicar byte stuffing a los datos
- ✅ Verificar pump_id en respuestas
- ✅ Implementar reintentos (3 veces)
- ✅ Usar timeouts (inter-byte: 100ms, total: 2s)

### Al Probar
- ✅ Empezar con comandos simples (status)
- ✅ Probar con bomba en IDLE
- ✅ Verificar cada comando individualmente
- ✅ No asumir que funciona, verificar respuestas

---

## 🔗 REFERENCIAS RÁPIDAS

```bash
# Ver protocolo completo
cat DECOMPILACION_COMPLETA_HALLAZGOS.md

# Ver funciones internas
cat FUNCIONES_INTERNAS_DESCUBIERTAS.md

# Ver resumen ejecutivo
cat RESUMEN_EJECUTIVO_COMPLETO.md

# Capturar tráfico
python serial_monitor.py

# Probar con hardware
python test_gilbarco_protocol.py
```

---

**Documento creado**: 2025-11-10
**Estado**: ✅ LISTO PARA USAR
**Siguiente paso**: Actualizar baudrate y capturar tráfico
