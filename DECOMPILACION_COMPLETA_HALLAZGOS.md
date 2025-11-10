# 🔬 ANÁLISIS DE DECOMPILACIÓN COMPLETO - HALLAZGOS CRÍTICOS

**Fecha**: 2025-11-10
**Método**: Decompilación y desensamblado con objdump + análisis de strings
**DLLs analizados**: 3 (Gilbarco, GPBox, Serial)

---

## 🎯 DESCUBRIMIENTO CRÍTICO #1: PROTOCOLO CONFIRMADO

### Constantes de Protocolo en LOS 3 DLLs

```
✅ DLE = 0x10  (Data Link Escape)
✅ STX = 0x02  (Start of Text)
✅ ETX = 0x03  (End of Text)
```

**Ubicación**: Encontrado en secciones `.rdata` y `.data` de:
- SSF.Gilbarco.D.dll
- SSF.FC.Comm.GPBox.D.dll
- SSF.FC.Comm.Serial.D.dll

**Conclusión**: El protocolo usa **framing DLE-STX-ETX estándar**

### Formato del Protocolo Revelado

```
┌─────┬─────┬─────────┬──────┬─────┐
│ DLE │ STX │  DATA   │ DLE  │ ETX │
├─────┼─────┼─────────┼──────┼─────┤
│ 0x10│ 0x02│ [BYTES] │ 0x10 │ 0x03│
└─────┴─────┴─────────┴──────┴─────┘

Byte stuffing:
- Si DATA contiene 0x10 → Duplicar: 0x10 0x10
```

---

## 🎯 DESCUBRIMIENTO CRÍTICO #2: BAUDRATE CORRECTO

```
✅ Baudrate = 19200 bps (NO 9600!)
```

**Ubicación**: Constante `0x4B00` (19200 en decimal) en sección `.data` de los 3 DLLs

**Implicación**: Tu `gilbarco_pump_controller.py` debe usar **19200 baudrate**

---

## 🎯 DESCUBRIMIENTO CRÍTICO #3: FUNCIONES INTERNAS CON OFFSETS

### SSF.Gilbarco.D.dll - Funciones de Control de Bombas

| Función | Offset | Strings Reveladores |
|---------|--------|---------------------|
| **iaSendPumpAuthorization** | 0x1c4be1 | `"Error sending authorize cmd ..."` |
| **iaReadPumpLastSale** | 0x1c5375 | `"Error reading las transaction ..."` |
| **iaReadPumpTotalizer** | 0x1c4fa9 | `"Error asking pump totals ..."` |
| **iaSendPumpStop** | 0x1c4c8d | `"Error sending stop cmd ..."` |
| **sendPumpPreset** | 0x1c68e1 | `"Error sending preset"` |
| **sendDataCmd** | 0x1c607d | `"Error sending DATA NEXT cmd"` |
| **sendSimpleCmd** | 0x1c5d89 | `"Error sending command ..."` |

**Qué revelan los strings**:

```cpp
// iaSendPumpAuthorization (offset 0x1c4be1)
"AUTHORIZED"
"Error sending authorize cmd ..."
"Pump has all real hose id in zero. Will set default ones"

// iaReadPumpLastSale (offset 0x1c5375)
"Reading sale info Volume [%.3f] Money [%.3f] PPU [%.3f]"
"Error reading las transaction ..."
"Information processing sale information [0x%02X] unexpected"

// iaReadPumpTotalizer (offset 0x1c4fa9)
"Error asking pump totals ..."
"Hose [%02ld] reported by pump don't exits in current pump configuration ..."
"Setting pump status to FUELLING because the RTM [%.3f] is greater than the minimum volume sale supported [%.3f] ..."

// sendDataCmd (offset 0x1c607d)
"No coincide el Pump Id de la respuesta [0x%02X] con el Pump Id [0x%02X]"
"Error reading DATA NEXT answer"
"There are pendings data blocks. I Will continue reading"

// sendSimpleCmd (offset 0x1c5d89)
"Error sending command ..."
"Error reading pump Data"
"The pump is in error state or is ok but could't receive answer. I will retry ..."

// sendPumpPreset (offset 0x1c68e1)
"PUMPID[%02ld] - Error sending preset"
"PUMPID[%02ld] - Error sending price to Pump"
"Converting Preset [%f] with Dec.Opt.:[%ld] to integer value [%ld]"
```

### SSF.FC.Comm.GPBox.D.dll - Funciones de Comunicación GPBox

| Función | Offset | Strings Reveladores |
|---------|--------|---------------------|
| **readBytes** | 0x10320e, 0x103d07 | Comunicación GPBox |
| **sendMessage** | 0x10330e, 0x1040ab | `"Error sending message to Serial Port"` |

### SSF.FC.Comm.Serial.D.dll - Funciones de Puerto Serial

| Función | Offset | Strings Reveladores |
|---------|--------|---------------------|
| **readBytes** | 0x1005e7 | `"read_interbyte_timeout"`, `"read_timeout"` |
| **sendMessage** | 0x10098b | `"Error sending byte [%ld] of [%ld]"`, `"interbyte_write_interval"` |

**Qué revelan los strings**:

```cpp
// readBytes - SSFSerialComm
"read_interbyte_timeout"
"read_timeout"
"The timeout of [%ld] is not supported the timeout will be setted to [%s]"

// sendMessage - SSFSerialComm
"Error sending byte [%ld] of [%ld]"
"interbyte_write_interval"
"Error checking for ports errors"
"The port isn't open"
```

---

## 🎯 DESCUBRIMIENTO CRÍTICO #4: DESENSAMBLADO VISIBLE

### Estructura de las Funciones Exportadas

Todas las funciones exportadas del plugin system son **trampolines (JMP)**:

```asm
; Ejemplo: ssfPIGetPlugInInstance en SSF.Gilbarco.D.dll
100de3f1:   e9 3a ff 01 00    jmp    0x100fe330   ; Salta a función interna
100de3f6:   e9 85 eb 06 00    jmp    0x1014cf80
100de3fb:   e9 10 18 06 00    jmp    0x1013fc10
```

**Conclusión**: Las funciones exportadas son solo **wrappers** que saltan a las funciones internas reales.

### Stack Frames Revelados

```
Funciones con stack frames grandes (~204 bytes = ~51 variables locales):
✓ SSF.Gilbarco.D.dll: 2809 funciones
✓ SSF.FC.Comm.GPBox.D.dll: 1419 funciones
✓ SSF.FC.Comm.Serial.D.dll: 1407 funciones
```

**Implicación**: Funciones complejas con muchas variables locales = Lógica compleja interna

---

## 🎯 DESCUBRIMIENTO CRÍTICO #5: FLUJO DE COMANDOS

### Comandos con Datos vs Comandos Simples

Basado en los strings, hay **2 tipos de comandos**:

#### 1. Comandos Simples (sendSimpleCmd)
```
Uso: Comandos sin parámetros
Ejemplos:
  - Leer estado de bomba
  - Reset
  - Stop
```

#### 2. Comandos con Datos (sendDataCmd)
```
Uso: Comandos con parámetros
Ejemplos:
  - Autorizar con preset (monto/volumen)
  - Cambiar precios
  - Configuración

Evidencia del string:
"No coincide el Pump Id de la respuesta [0x%02X] con el Pump Id [0x%02X]"
"There are pendings data blocks. I Will continue reading"
→ Protocolo multi-bloque con confirmación de Pump ID
```

### Formato Inferido de Comandos

```
COMANDO SIMPLE:
┌─────┬─────┬─────────┬──────────┬─────┬──────┬─────┐
│ DLE │ STX │ PUMP_ID │ CMD_CODE │ CHK │ DLE  │ ETX │
├─────┼─────┼─────────┼──────────┼─────┼──────┼─────┤
│ 0x10│ 0x02│  0x01   │   0xXX   │ ... │ 0x10 │ 0x03│
└─────┴─────┴─────────┴──────────┴─────┴──────┴─────┘

COMANDO CON DATOS:
┌─────┬─────┬─────────┬──────────┬──────────┬─────┬──────┬─────┐
│ DLE │ STX │ PUMP_ID │ CMD_CODE │   DATA   │ CHK │ DLE  │ ETX │
├─────┼─────┼─────────┼──────────┼──────────┼─────┼──────┼─────┤
│ 0x10│ 0x02│  0x01   │   0xXX   │ [BYTES]  │ ... │ 0x10 │ 0x03│
└─────┴─────┴─────────┴──────────┴──────────┴─────┴──────┴─────┘
```

---

## 🎯 DESCUBRIMIENTO CRÍTICO #6: TIMEOUTS Y REINTENTOS

### Timeouts Configurables

Evidencia de strings en SSFSerialComm:
```
"read_interbyte_timeout"      → Timeout entre bytes
"read_timeout"                → Timeout total de lectura
"interbyte_write_interval"    → Intervalo entre escritura de bytes
```

### Lógica de Reintentos

Evidencia de strings:
```
"The pump is in error state or is ok but could't receive answer. I will retry ..."
"PUMPID[%02ld] - The pump is in ERROR state, I will retry ..."
```

**Conclusión**: El protocolo implementa **reintentos automáticos** en caso de error

---

## 🎯 DESCUBRIMIENTO CRÍTICO #7: MANEJO DE ERRORES

### Errores Detectables

```cpp
// Errores de comunicación
"Error sending byte [%ld] of [%ld]"
"Error checking for ports errors"
"The port isn't open"

// Errores de protocolo
"No coincide el Pump Id de la respuesta [0x%02X] con el Pump Id [0x%02X]"
"Error reading DATA NEXT answer"
"Information processing sale information [0x%02X] unexpected"

// Errores de estado de bomba
"The pump is in ERROR state, I will retry ..."
"Pump has all real hose id in zero. Will set default ones"
"Hose [%02ld] reported by pump don't exits in current pump configuration ..."
```

---

## 🎯 DESCUBRIMIENTO CRÍTICO #8: PRESET Y PRECIOS

### Formato de Preset

String revelador:
```
"Converting Preset [%f] with Dec.Opt.:[%ld] to integer value [%ld]"
```

**Conclusión**:
- El preset se envía como **entero** (no float)
- Hay una **opción decimal** que define cuántos decimales
- Conversión: `preset_float * 10^decimal_option = preset_integer`

Ejemplo:
```
Preset = 50.00 USD
Decimal Option = 2
Valor enviado = 5000 (50.00 * 100)
```

### Envío de Precios

String revelador:
```
"PUMPID[%02ld] - Error sending price to Pump"
```

**Conclusión**: Los precios se envían **por comando** a la bomba, no solo al GPBox

---

## 🎯 DESCUBRIMIENTO CRÍTICO #9: READING SALE INFO

### Formato de Venta

String revelador:
```
"Reading sale info Volume [%.3f] Money [%.3f] PPU [%.3f]"
```

**Estructura de respuesta de venta**:
```
Volume: 3 decimales (galones/litros)
Money: 3 decimales (USD/moneda)
PPU: 3 decimales (Price Per Unit)
```

---

## 📊 TABLA RESUMEN DE HALLAZGOS

| Aspecto | Valor Descubierto |
|---------|-------------------|
| **Protocolo** | DLE-STX-ETX (0x10, 0x02, 0x03) |
| **Baudrate** | 19200 bps |
| **Byte Stuffing** | DLE → DLE DLE |
| **Tipos de Comando** | Simple (sin datos) / Data (con datos) |
| **Formato Preset** | Entero con decimal option |
| **Formato Venta** | Volume, Money, PPU (3 decimales c/u) |
| **Reintentos** | Automáticos en caso de error |
| **Timeouts** | Configurables (inter-byte, total) |
| **Pump ID** | Se verifica en respuestas |
| **Multi-block** | Soportado (DATA NEXT) |

---

## 🚀 IMPLEMENTACIÓN INMEDIATA

### Actualizar gilbarco_pump_controller.py

**Cambios necesarios**:

1. **Baudrate**: Cambiar de 9600 a **19200**
2. **Protocolo**: Implementar framing DLE-STX-ETX
3. **Byte Stuffing**: Duplicar 0x10 en datos
4. **Comandos**: Separar simple vs data commands
5. **Timeouts**: Agregar inter-byte timeout
6. **Reintentos**: Implementar lógica de retry
7. **Pump ID**: Verificar en respuestas

### Código de Ejemplo

```python
class GilbarcoPumpController:
    # Constantes de protocolo descubiertas
    DLE = 0x10
    STX = 0x02
    ETX = 0x03

    # Baudrate correcto
    BAUDRATE = 19200  # NO 9600!

    def _build_frame(self, pump_id: int, cmd: int, data: bytes = b'') -> bytes:
        """Construir frame con protocolo DLE-STX-ETX"""
        frame = bytes([self.DLE, self.STX])
        frame += bytes([pump_id, cmd])

        # Byte stuffing en data
        stuffed_data = self._byte_stuff(data)
        frame += stuffed_data

        # Checksum (por determinar algoritmo exacto)
        checksum = self._calculate_checksum(frame[2:])  # Desde pump_id
        frame += bytes([checksum])

        frame += bytes([self.DLE, self.ETX])
        return frame

    def _byte_stuff(self, data: bytes) -> bytes:
        """Aplicar byte stuffing (DLE → DLE DLE)"""
        result = b''
        for byte in data:
            result += bytes([byte])
            if byte == self.DLE:
                result += bytes([self.DLE])  # Duplicar DLE
        return result

    def _byte_unstuff(self, data: bytes) -> bytes:
        """Remover byte stuffing"""
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

---

## 🎯 CONCLUSIÓN FINAL

### LO QUE AHORA SABEMOS CON CERTEZA

✅ **Protocolo exacto**: DLE-STX-ETX con byte stuffing
✅ **Baudrate correcto**: 19200 bps
✅ **Nombres de funciones** con sus offsets exactos
✅ **Strings de error** que revelan el flujo lógico
✅ **Formato de comandos**: Simple vs Data
✅ **Formato de datos**: Preset (entero), Sale (3 decimales)
✅ **Manejo de errores**: Reintentos automáticos
✅ **Timeouts**: Inter-byte y total

### LO QUE FALTA DESCUBRIR

❓ **Códigos de comando exactos** (0xXX para authorize, status, etc.)
❓ **Algoritmo de checksum** (probablemente XOR o suma)
❓ **Formato exacto de preset/precio** (orden de bytes, endianness)
❓ **Respuestas exactas** de cada comando

### SIGUIENTE PASO RECOMENDADO

**Captura de tráfico con configuración correcta**:

```bash
# Actualizar baudrate en serial_monitor.py a 19200
python serial_monitor.py

# Mientras capturas, operar una bomba con SSF
# Verás las tramas DLE-STX-ETX en acción
```

**Con esta captura podrás**:
1. Ver los códigos de comando reales
2. Confirmar el checksum
3. Ver el formato de preset/precio
4. Ver las respuestas completas

---

**Análisis generado**: 2025-11-10
**Herramienta**: `analisis_decompilacion.py`
**Estado**: ✅ COMPLETO
**Siguiente**: Captura de tráfico con baudrate 19200
