# 🎯 PLAN DE ACCIÓN: Protocolo GPBox Directo

## ✅ Decisión Tomada

**Ir directo al protocolo GPBox** - Independencia total del software viejo.

---

## 📋 LO QUE YA TIENES

```
✅ gilbarco_pump_controller.py   ← Protocolo Gilbarco implementado
✅ PROTOCOLO_GILBARCO.md         ← Documentación del protocolo
✅ serial_monitor.py             ← Captura de tráfico serial
✅ DOCUMENTACION_GPBOX_SISTEMA.md ← Configuración del sistema
✅ Hardware: GPBox + 6 Bombas Gilbarco configuradas
```

---

## 🎯 OBJETIVO

Capturar y documentar el protocolo real entre GPBox y los dispensadores para:

1. ✅ **Autorizar bomba** (preset monto/volumen)
2. ✅ **Seguir despacho** (volumen actual, monto)
3. ✅ **Finalizar venta** (totales de transacción)
4. ✅ **Leer totalizadores** (acumulados)
5. ✅ **Cambiar precios** (por manguera/producto)
6. ✅ **Leer estado** (idle, despachando, error)

---

## 📅 PLAN DE 5 DÍAS

### 🔹 DÍA 1: Captura de Tráfico (4 horas)

**Objetivo**: Capturar las tramas reales del protocolo

#### Paso 1.1: Identificar Puerto COM

```bash
# Windows
mode

# O en Python
python -c "import serial.tools.list_ports; [print(p.device) for p in serial.tools.list_ports.comports()]"
```

**Ver también**: `GUIA_CONFIGURACION_PUERTOS.md` - Dice que GPBox usa Comm 1

#### Paso 1.2: Preparar Captura

```bash
# Opción A: Usar el monitor existente
python serial_monitor.py

# Cuando se ejecute, especificar:
# - Puerto: COM1 (o el que uses)
# - Baudrate: 9600
# - Log file: capturas/dia1_operaciones.log
```

#### Paso 1.3: Realizar Operaciones con SSF

**IMPORTANTE**: Mantén `serial_monitor.py` corriendo mientras haces esto.

1. **Abrir Smart Ship Factory**
2. **Realizar estas operaciones** (una a la vez):

```
Operación 1: AUTORIZAR BOMBA 1 con $50
   → Guardar captura como: capturas/01_autorizar_bomba1_50pesos.log

Operación 2: LEER ESTADO de bomba 1
   → Guardar: capturas/02_leer_estado_bomba1.log

Operación 3: DETENER BOMBA 1
   → Guardar: capturas/03_detener_bomba1.log

Operación 4: RESET BOMBA 1
   → Guardar: capturas/04_reset_bomba1.log

Operación 5: LEER TOTALIZADORES bomba 1
   → Guardar: capturas/05_leer_totalizadores.log

Operación 6: CAMBIAR PRECIO manguera 1
   → Guardar: capturas/06_cambiar_precio.log
```

#### Paso 1.4: Organizar Capturas

```bash
mkdir capturas
# Copiar todos los logs a este directorio
# Renombrar con nombres descriptivos
```

**Resultado Día 1**: 6+ archivos de captura con operaciones documentadas

---

### 🔹 DÍA 2: Análisis de Tramas (4 horas)

**Objetivo**: Entender el formato de cada comando

#### Paso 2.1: Analizar Estructura

Para cada captura, identificar:

```
PATRÓN A BUSCAR:

1. COMANDO (Master → GPBox):
   [DLE STX] [ADDR] [CMD] [LEN] [DATA...] [CHECKSUM] [DLE ETX]

2. RESPUESTA (GPBox → Master):
   [DLE STX] [ADDR] [CMD] [LEN] [DATA...] [CHECKSUM] [DLE ETX]

Donde:
- DLE = 0x10
- STX = 0x02
- ETX = 0x03
- ADDR = Dirección bomba (0x01 - 0x06)
- CMD = Código de comando
- LEN = Longitud de DATA
- DATA = Payload del comando
- CHECKSUM = XOR de todos los bytes desde ADDR hasta último DATA
```

#### Paso 2.2: Crear Documento de Comandos

Archivo: `doc/COMANDOS_GPBOX_DESCUBIERTOS.md`

```markdown
# Comandos GPBox Descubiertos

## Comando: AUTORIZAR BOMBA

### Captura Original
```
Archivo: capturas/01_autorizar_bomba1_50pesos.log
Timestamp: 2025-11-10 10:23:45

TX: 10 02 01 05 0A 01 01 00 00 13 88 00 00 00 00 XX 10 03
RX: 10 02 01 05 01 06 XX 10 03
```

### Interpretación
```
Comando: 0x05 (AUTHORIZE_PUMP)
Dirección: 0x01 (Bomba 1)
Data (10 bytes):
  [0] = 0x01 : Tipo preset (1=monto, 2=volumen, 3=ambos)
  [1] = 0x01 : Nivel de precio
  [2-5] = 0x00001388 : Monto = 5000 centavos = $50.00
  [6-9] = 0x00000000 : Volumen = sin límite

Respuesta: 0x06 (ACK) = Éxito
```

### Implementación Python
```python
def authorize_pump(self, pump_address, amount, volume=0):
    preset_type = 0x01 if amount > 0 else 0x02
    price_level = 0x01

    amount_cents = int(amount * 100)
    volume_tenths = int(volume * 10)

    data = struct.pack('>BB I I',
        preset_type,
        price_level,
        amount_cents,
        volume_tenths
    )

    return self.send_command(pump_address, 0x05, data)
```
```

**Repetir este proceso para cada comando capturado**.

**Resultado Día 2**: Documento completo de comandos descubiertos

---

### 🔹 DÍA 3: Implementación (6 horas)

**Objetivo**: Actualizar `gilbarco_pump_controller.py` con comandos reales

#### Paso 3.1: Revisar Implementación Actual

```bash
# Ver qué ya está implementado
grep "def " gilbarco_pump_controller.py
```

Ya tienes:
- ✅ `connect()` - Conexión serial
- ✅ `build_message()` - Construcción de mensajes
- ✅ `send_message()` - Envío
- ✅ `receive_message()` - Recepción
- ✅ `parse_response()` - Parseo
- ✅ `calculate_checksum()` - Checksum
- ⚠️ Comandos específicos (pueden necesitar ajuste)

#### Paso 3.2: Actualizar Códigos de Comando

En `gilbarco_pump_controller.py`, actualizar `GilbarcoCommands`:

```python
class GilbarcoCommands(IntEnum):
    """Comandos del protocolo - ACTUALIZADOS con capturas reales"""
    VERSION_REQUEST = 0x01    # Confirmar con captura
    CONFIG_REQUEST = 0x02     # Confirmar con captura
    STATUS_REQUEST = 0x03     # Confirmar con captura
    PRESET_COMMAND = 0x04     # Confirmar con captura
    AUTHORIZE_PUMP = 0x05     # Confirmar con captura
    STOP_PUMP = 0x06          # Confirmar con captura
    RESET_PUMP = 0x07         # Confirmar con captura
    READ_TOTALIZERS = 0x08    # Confirmar con captura
    READ_PRICE = 0x09         # IMPLEMENTAR CON CAPTURA
    WRITE_PRICE = 0x0A        # IMPLEMENTAR CON CAPTURA
```

#### Paso 3.3: Implementar Comandos Faltantes

```python
def read_price(self, pump_address: int, hose_number: int) -> Optional[float]:
    """
    Leer precio de una manguera específica

    Basado en captura: capturas/XX_leer_precio.log
    """
    # Construir comando según formato descubierto
    data = struct.pack('B', hose_number)

    message = self.build_message(pump_address, GilbarcoCommands.READ_PRICE, data)

    if self.send_message(message):
        response = self.receive_message()
        if response:
            parsed = self.parse_response(response)
            if parsed and len(parsed['data']) >= 4:
                # Precio en centavos (según formato descubierto)
                price_cents = struct.unpack('>I', parsed['data'][0:4])[0]
                return price_cents / 100.0

    return None

def write_price(self, pump_address: int, hose_number: int, price: float) -> bool:
    """
    Escribir precio a una manguera específica

    Basado en captura: capturas/06_cambiar_precio.log
    """
    price_cents = int(price * 100)

    # Formato según captura real
    data = struct.pack('>B I', hose_number, price_cents)

    message = self.build_message(pump_address, GilbarcoCommands.WRITE_PRICE, data)

    if self.send_message(message):
        response = self.receive_message()
        if response:
            parsed = self.parse_response(response)
            return parsed is not None and parsed.get('checksum_ok', False)

    return False
```

**Resultado Día 3**: `gilbarco_pump_controller.py` actualizado con comandos reales

---

### 🔹 DÍA 4: Testing con Hardware Real (4-6 horas)

**Objetivo**: Probar cada función con una bomba real

#### Paso 4.1: Preparar Entorno de Pruebas

```bash
# Crear script de testing
cp gilbarco_pump_controller.py test_gpbox_real.py
```

#### Paso 4.2: Script de Testing

Archivo: `test_gpbox_real.py`

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
TESTING CON HARDWARE REAL
==========================
Probar cada función contra GPBox y bomba real

IMPORTANTE: Usar con precaución en ambiente de pruebas
"""

from gilbarco_pump_controller import GilbarcoPumpController
import time

def test_sequence():
    """Secuencia de pruebas con hardware real"""

    print("=" * 70)
    print("TESTING CON HARDWARE REAL")
    print("=" * 70)
    print()

    # Configurar (ajustar puerto según tu sistema)
    port = input("Puerto COM (default: COM1): ").strip() or "COM1"
    pump_address = int(input("Dirección de bomba (default: 1): ") or "1")

    controller = GilbarcoPumpController(port=port, baudrate=9600, timeout=2.0)

    if not controller.connect():
        print("✗ Error al conectar")
        return

    print("✓ Conectado a GPBox")
    print()

    try:
        # TEST 1: Leer estado
        print("[TEST 1] Leer estado de bomba...")
        status = controller.request_status(pump_address)
        if status:
            print(f"✓ Estado: {status}")
        else:
            print("✗ No se pudo leer estado")

        time.sleep(1)

        # TEST 2: Leer totalizadores
        print("\n[TEST 2] Leer totalizadores...")
        totalizers = controller.read_totalizers(pump_address)
        if totalizers:
            print(f"✓ Volumen total: {totalizers.get('total_volume_liters', 0):.2f} L")
            print(f"✓ Monto total: ${totalizers.get('total_amount', 0):.2f}")
        else:
            print("✗ No se pudieron leer totalizadores")

        time.sleep(1)

        # TEST 3: Leer precio (si está implementado)
        print("\n[TEST 3] Leer precio de manguera 0...")
        try:
            price = controller.read_price(pump_address, hose_number=0)
            if price:
                print(f"✓ Precio: ${price:.2f}/L")
            else:
                print("⚠️  No se pudo leer precio (puede no estar implementado)")
        except AttributeError:
            print("⚠️  read_price() no está implementado aún")

        time.sleep(1)

        # TEST 4: Autorizar (CUIDADO - esto autoriza la bomba real)
        print("\n[TEST 4] ¿Autorizar bomba con preset de $10?")
        confirm = input("ESTO AUTORIZARÁ LA BOMBA REAL. ¿Continuar? (s/n): ")

        if confirm.lower() == 's':
            print("Autorizando bomba...")
            success = controller.authorize_pump(pump_address, preset_amount=10.0)
            if success:
                print("✓ Bomba autorizada con éxito")
                print("  → Puedes levantar la manguera y verificar")

                # Esperar y monitorear
                input("\nPresiona ENTER cuando termines de probar...")

                # Reset
                print("\nReseteando bomba...")
                controller.reset_pump(pump_address)
                print("✓ Bomba reseteada")
            else:
                print("✗ Error al autorizar bomba")

    except KeyboardInterrupt:
        print("\n\n✗ Cancelado por usuario")

    finally:
        controller.disconnect()
        print("\n✓ Desconectado")

if __name__ == "__main__":
    test_sequence()
```

#### Paso 4.3: Ejecutar Tests

```bash
python test_gpbox_real.py
```

**Resultado Día 4**: Todas las funciones probadas y validadas con hardware real

---

### 🔹 DÍA 5: Documentación y Refinamiento (3 horas)

**Objetivo**: Documentar todo y crear ejemplos de uso

#### Paso 5.1: Actualizar Documentación

Actualizar `PROTOCOLO_GILBARCO.md` con:
- ✅ Comandos confirmados con hardware real
- ✅ Formatos exactos de cada comando
- ✅ Códigos de respuesta
- ✅ Casos de error y soluciones

#### Paso 5.2: Crear Ejemplos

Archivo: `ejemplos/ejemplo_completo.py`

```python
"""
EJEMPLO COMPLETO DE USO
========================
Muestra cómo usar el controlador para operaciones comunes
"""

from gilbarco_pump_controller import GilbarcoPumpController

def ejemplo_venta_completa():
    """Ejemplo de venta completa"""

    controller = GilbarcoPumpController(port='COM1', baudrate=9600)

    if not controller.connect():
        print("Error de conexión")
        return

    try:
        pump_address = 1

        # 1. Verificar estado
        print("1. Verificando estado...")
        status = controller.request_status(pump_address)
        print(f"   Estado: {status.get('pump_status')}")

        # 2. Autorizar con preset
        print("\n2. Autorizando bomba con $50...")
        controller.authorize_pump(pump_address, preset_amount=50.0)

        # 3. Monitorear despacho
        print("\n3. Monitoreando despacho...")
        while True:
            status = controller.request_status(pump_address)
            if status['pump_status'] == 'DISPENSING':
                print(f"   Despachando... {status.get('volume', 0):.2f} L")
            elif status['pump_status'] == 'FINISHED':
                print(f"   ✓ Terminado: {status.get('volume', 0):.2f} L")
                break
            time.sleep(1)

        # 4. Reset
        print("\n4. Reseteando bomba...")
        controller.reset_pump(pump_address)

        print("\n✓ Venta completa")

    finally:
        controller.disconnect()

if __name__ == "__main__":
    ejemplo_venta_completa()
```

**Resultado Día 5**: Documentación completa y ejemplos de uso

---

## 📁 ESTRUCTURA DE ARCHIVOS AL FINAL

```
api-spriconsole/
├── gilbarco_pump_controller.py    ← Actualizado con protocolo real
├── test_gpbox_real.py              ← Tests con hardware
├── PROTOCOLO_GILBARCO.md           ← Documentación actualizada
├── PLAN_PROTOCOLO_GPBOX.md         ← Este plan
├── capturas/
│   ├── 01_autorizar_bomba1_50pesos.log
│   ├── 02_leer_estado_bomba1.log
│   ├── 03_detener_bomba1.log
│   ├── 04_reset_bomba1.log
│   ├── 05_leer_totalizadores.log
│   └── 06_cambiar_precio.log
├── doc/
│   └── COMANDOS_GPBOX_DESCUBIERTOS.md
└── ejemplos/
    └── ejemplo_completo.py
```

---

## ✅ CHECKLIST DE PROGRESO

### Día 1: Captura
- [ ] Identificar puerto COM
- [ ] Configurar serial_monitor.py
- [ ] Capturar: Autorizar bomba
- [ ] Capturar: Leer estado
- [ ] Capturar: Detener bomba
- [ ] Capturar: Reset bomba
- [ ] Capturar: Leer totalizadores
- [ ] Capturar: Cambiar precio

### Día 2: Análisis
- [ ] Analizar estructura de mensajes
- [ ] Identificar códigos de comando
- [ ] Documentar formato de datos
- [ ] Crear documento de comandos

### Día 3: Implementación
- [ ] Actualizar códigos de comando
- [ ] Implementar read_price()
- [ ] Implementar write_price()
- [ ] Ajustar comandos existentes
- [ ] Crear test_gpbox_real.py

### Día 4: Testing
- [ ] Probar conexión
- [ ] Probar leer estado
- [ ] Probar leer totalizadores
- [ ] Probar leer precio
- [ ] Probar autorizar bomba
- [ ] Probar detener bomba
- [ ] Probar reset

### Día 5: Documentación
- [ ] Actualizar PROTOCOLO_GILBARCO.md
- [ ] Crear ejemplos de uso
- [ ] Documentar casos de error
- [ ] README final

---

## 🚀 EMPEZAR AHORA

**Primer paso** (toma 5 minutos):

```bash
# 1. Crear directorio para capturas
mkdir capturas
mkdir doc
mkdir ejemplos

# 2. Identificar puerto COM
python -c "import serial.tools.list_ports; [print(p.device, p.description) for p in serial.tools.list_ports.comports()]"

# 3. Preparar monitor
python serial_monitor.py
```

---

## 💡 TIPS IMPORTANTES

### Durante la Captura

1. **Una operación a la vez**: No hagas varias cosas simultáneamente
2. **Anota todo**: Timestamp, operación, resultado esperado
3. **Guarda logs inmediatamente**: Etiqueta cada captura
4. **Repite si es necesario**: Si una captura no es clara, repítela

### Durante el Análisis

1. **Busca patrones**: Los comandos similares tienen estructura similar
2. **Compara con documentación**: Usa PROTOCOLO_GILBARCO.md como referencia
3. **Valida checksums**: Recalcula para confirmar tu entendimiento

### Durante Testing

1. **Empieza con lectura**: Comandos de lectura son más seguros
2. **Prueba con una bomba**: No pruebes en todas al mismo tiempo
3. **Ten un plan B**: Si algo falla, usa el software viejo
4. **Documenta errores**: Son tan valiosos como los éxitos

---

## 📞 ¿NECESITAS AYUDA?

### Si estás en Día 1 (Captura):
- Lee `serial_monitor.py` - Ya está listo para usar
- Consulta `GUIA_CONFIGURACION_PUERTOS.md` para identificar puerto

### Si estás en Día 2 (Análisis):
- Usa `PROTOCOLO_GILBARCO.md` como referencia
- Compara tus capturas con los ejemplos ahí

### Si estás en Día 3 (Implementación):
- `gilbarco_pump_controller.py` tiene la estructura base
- Solo necesitas ajustar códigos y formatos

### Si estás en Día 4 (Testing):
- Empieza con comandos de lectura (seguros)
- Usa ambiente de pruebas si es posible

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0

¡Éxito con la implementación! 🚀
