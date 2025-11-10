# PROTOCOLO GILBARCO TWO-WIRE - DOCUMENTACIÓN COMPLETA

## 📋 ÍNDICE

1. [Resumen Ejecutivo](#resumen-ejecutivo)
2. [Especificaciones Técnicas](#especificaciones-técnicas)
3. [Estructura de Mensajes](#estructura-de-mensajes)
4. [Comandos del Protocolo](#comandos-del-protocolo)
5. [Configuración del Hardware](#configuración-del-hardware)
6. [Implementación Práctica](#implementación-práctica)
7. [Troubleshooting](#troubleshooting)
8. [Referencias](#referencias)

---

## 🎯 RESUMEN EJECUTIVO

El **Protocolo Gilbarco Two-Wire** es un protocolo propietario de comunicación serial utilizado para controlar dispensadores de combustible Gilbarco desde sistemas POS (Point of Sale) o controladores centralizados como el CEM-44.

### Características Principales

- **Arquitectura**: Master-Slave (Maestro-Esclavo)
- **Topología**: Multi-drop (hasta 16 dispensadores)
- **Medio Físico**: RS-232, RS-485, o Current Loop (2-wire)
- **Velocidad**: 9600 baudios (estándar)
- **Formato**: 8 bits de datos, 1 bit de parada, sin paridad

---

## 🔧 ESPECIFICACIONES TÉCNICAS

### Configuración Serial

```
Baudrate:    9600 bps
Data bits:   8
Stop bits:   1
Parity:      None (sin paridad)
Flow control: None (sin control de flujo)
```

### Formato de Bits

El protocolo usa un formato especial de 11 bits:
- 1 bit de inicio (start)
- 8 bits de datos
- 1 bit de paridad (opcional, generalmente sin paridad)
- 1 bit de parada (stop)

### Interfaces Soportadas

1. **RS-232**: Comunicación punto a punto (1 maestro, 1 esclavo)
2. **RS-485**: Multi-drop (1 maestro, hasta 16 esclavos)
3. **Current Loop**: 2-wire (4-20mA) - protocolo propietario Gilbarco

---

## 📦 ESTRUCTURA DE MENSAJES

### Formato General

```
┌─────┬─────┬─────────┬─────────┬────────┬──────┬──────────┬─────┬─────┐
│ DLE │ STX │ ADDRESS │ COMMAND │ LENGTH │ DATA │ CHECKSUM │ DLE │ ETX │
└─────┴─────┴─────────┴─────────┴────────┴──────┴──────────┴─────┴─────┘
  1B    1B      1B        1B        1B     0-nB      1B       1B    1B
```

### Descripción de Campos

| Campo | Tamaño | Valor | Descripción |
|-------|--------|-------|-------------|
| **DLE** | 1 byte | 0x10 | Data Link Escape - Inicio de frame |
| **STX** | 1 byte | 0x02 | Start of Text - Inicio de mensaje |
| **ADDRESS** | 1 byte | 0x01-0x10 | Dirección del dispensador (1-16) |
| **COMMAND** | 1 byte | 0x01-0xFF | Código de comando |
| **LENGTH** | 1 byte | 0x00-0xFF | Longitud del campo DATA |
| **DATA** | 0-n bytes | Variable | Datos del comando/respuesta |
| **CHECKSUM** | 1 byte | XOR | XOR de ADDRESS hasta último byte de DATA |
| **DLE** | 1 byte | 0x10 | Data Link Escape - Fin de frame |
| **ETX** | 1 byte | 0x03 | End of Text - Fin de mensaje |

### Caracteres Especiales

```c
#define DLE 0x10  // Data Link Escape
#define STX 0x02  // Start of Text
#define ETX 0x03  // End of Text
#define ACK 0x06  // Acknowledge
#define NAK 0x15  // Negative Acknowledge
```

### Cálculo de Checksum

El checksum se calcula como XOR de todos los bytes desde ADDRESS hasta el último byte de DATA:

```python
def calculate_checksum(data: bytes) -> int:
    checksum = 0
    for byte in data:
        checksum ^= byte
    return checksum
```

**Ejemplo:**
```
Mensaje: 10 02 [01 03 00] 10 03
         DLE STX [datos] DLE ETX

Checksum = 0x01 XOR 0x03 XOR 0x00 = 0x02
```

---

## 🎮 COMANDOS DEL PROTOCOLO

### Tabla de Comandos

| Comando | Código | Descripción | Dirección | Datos |
|---------|--------|-------------|-----------|-------|
| **VERSION_REQUEST** | 0x01 | Solicitar versión de firmware | Master → Slave | Ninguno |
| **CONFIG_REQUEST** | 0x02 | Solicitar configuración | Master → Slave | Ninguno |
| **STATUS_REQUEST** | 0x03 | Solicitar estado actual | Master → Slave | Ninguno |
| **PRESET_COMMAND** | 0x04 | Establecer preset | Master → Slave | Preset data |
| **AUTHORIZE_PUMP** | 0x05 | Autorizar dispensador | Master → Slave | Auth data |
| **STOP_PUMP** | 0x06 | Detener dispensador | Master → Slave | Ninguno |
| **RESET_PUMP** | 0x07 | Resetear dispensador | Master → Slave | Ninguno |
| **READ_TOTALIZERS** | 0x08 | Leer totalizadores | Master → Slave | Ninguno |
| **READ_PRICE** | 0x09 | Leer precio | Master → Slave | Grade ID |
| **WRITE_PRICE** | 0x0A | Escribir precio | Master → Slave | Grade + Price |

### Detalle de Comandos

#### 1. VERSION_REQUEST (0x01)

**Request:**
```
10 02 01 01 00 00 10 03
DLE STX AD CM LN CS DLE ETX

AD = Dirección del dispensador (0x01)
CM = Comando (0x01)
LN = Longitud de datos (0x00)
CS = Checksum (0x01 XOR 0x01 XOR 0x00 = 0x00)
```

**Response:**
```
10 02 01 01 08 [VERSION_DATA] CS 10 03
                 └─ 8 bytes ─┘

VERSION_DATA formato:
- Byte 0-1: Major version
- Byte 2-3: Minor version
- Byte 4-7: Build number
```

#### 2. STATUS_REQUEST (0x03)

**Request:**
```
10 02 01 03 00 02 10 03
```

**Response:**
```
10 02 01 03 04 [STATUS_DATA] CS 10 03

STATUS_DATA formato:
- Byte 0: Estado de la bomba
  * 0x00 = IDLE (inactiva)
  * 0x01 = AUTHORIZED (autorizada)
  * 0x02 = DISPENSING (despachando)
  * 0x03 = STOPPED (detenida)
  * 0x04 = FINISHED (finalizada)
  * 0xFF = ERROR

- Byte 1: Manguera seleccionada (0-7)
- Byte 2-3: Código de error (si aplica)
```

#### 3. AUTHORIZE_PUMP (0x05)

**Request:**
```
10 02 01 05 0A [AUTH_DATA] CS 10 03

AUTH_DATA formato (10 bytes):
- Byte 0: Tipo de preset
  * 0x00 = Sin preset (Full Tank)
  * 0x01 = Preset por monto
  * 0x02 = Preset por volumen
  * 0x03 = Preset por monto y volumen

- Byte 1: Nivel de precio (1-4)

- Bytes 2-5: Monto preset (4 bytes, big-endian)
  * En centavos (ej: 5000 = $50.00)
  * 0x00000000 = sin límite

- Bytes 6-9: Volumen preset (4 bytes, big-endian)
  * En décimas de litro (ej: 500 = 50.0 litros)
  * 0x00000000 = sin límite
```

**Ejemplo - Autorizar con preset de $50.00:**
```python
preset_type = 0x01      # Preset por monto
price_level = 0x01      # Nivel de precio 1
amount = 5000           # $50.00 en centavos
volume = 0              # Sin límite de volumen

data = bytes([
    preset_type,
    price_level,
    (amount >> 24) & 0xFF,
    (amount >> 16) & 0xFF,
    (amount >> 8) & 0xFF,
    amount & 0xFF,
    0x00, 0x00, 0x00, 0x00  # Volumen = 0
])
```

**Response:**
```
10 02 01 05 01 [STATUS] CS 10 03

STATUS:
- 0x06 (ACK) = Autorización exitosa
- 0x15 (NAK) = Error en autorización
```

#### 4. READ_TOTALIZERS (0x08)

**Request:**
```
10 02 01 08 00 09 10 03
```

**Response:**
```
10 02 01 08 10 [TOTALIZER_DATA] CS 10 03

TOTALIZER_DATA formato (16 bytes):
- Bytes 0-3: Volumen total (litros × 10)
- Bytes 4-7: Monto total (centavos)
- Bytes 8-11: Contador de transacciones
- Bytes 12-15: Reservado
```

---

## ⚙️ CONFIGURACIÓN DEL HARDWARE

### Conexión RS-232

```
┌─────────────┐        ┌──────────────┐
│   MAESTRO   │        │   ESCLAVO    │
│  (CEM-44)   │        │ (Dispensador)│
│             │        │              │
│   TX  ──────┼───────►│  RX          │
│   RX  ◄─────┼────────│  TX          │
│   GND ──────┼────────│  GND         │
└─────────────┘        └──────────────┘

Pin 2: RX (Receive)
Pin 3: TX (Transmit)
Pin 5: GND (Ground)
```

### Conexión RS-485 (Multi-drop)

```
                    ┌─── 120Ω ───┐
                    │             │
    ┌───────┬───────┴───────┬─────┴─────┬───────┐
    │       │               │           │       │
┌───┴───┐ ┌─┴──────┐  ┌────┴────┐ ┌────┴────┐ │
│Maestro│ │Esclavo │  │Esclavo  │ │Esclavo  │ │
│CEM-44 │ │Bomba 1 │  │Bomba 2  │ │Bomba N  │ │
│       │ │        │  │         │ │         │ │
└───────┘ └────────┘  └─────────┘ └─────────┘ │
    A/B       A/B         A/B         A/B       │
    │                                           │
    └────────── 120Ω Terminación ──────────────┘

A = Data+ (RS485-A)
B = Data- (RS485-B)
```

**Resistencias de terminación:** 120Ω en ambos extremos del bus

### Identificación de Puertos COM

En Windows, verificar puertos disponibles:

```bash
# PowerShell
[System.IO.Ports.SerialPort]::GetPortNames()

# Administrador de dispositivos
devmgmt.msc → Puertos (COM y LPT)
```

---

## 💻 IMPLEMENTACIÓN PRÁCTICA

### Instalación de Dependencias

```bash
# Instalar Python 3.8 o superior
python --version

# Instalar biblioteca pyserial
pip install pyserial
```

### Uso del Controlador Python

#### 1. Conexión Básica

```python
from gilbarco_pump_controller import GilbarcoPumpController

# Crear controlador
controller = GilbarcoPumpController(port='COM1', baudrate=9600)

# Conectar
if controller.connect():
    print("Conectado exitosamente")
else:
    print("Error de conexión")
```

#### 2. Verificar Estado de Bomba

```python
# Solicitar estado de bomba 1
status = controller.request_status(pump_address=1)

if status:
    pump_status = status.get('pump_status')
    print(f"Estado de bomba: {pump_status}")
```

#### 3. Autorizar Despacho

```python
# Autorizar bomba con preset de $50.00
success = controller.authorize_pump(
    pump_address=1,
    preset_amount=50.00,   # $50.00
    preset_volume=0,        # Sin límite de volumen
    price_level=1
)

if success:
    print("Bomba autorizada")
```

#### 4. Leer Totalizadores

```python
# Leer totalizadores de bomba 1
result = controller.read_totalizers(pump_address=1)

if result:
    volume = result.get('total_volume_liters')
    amount = result.get('total_amount')

    print(f"Volumen total: {volume:.2f} L")
    print(f"Monto total: ${amount:.2f}")
```

### Monitor de Tráfico Serial

Para aprender el protocolo real observando la comunicación existente:

```bash
python serial_monitor.py
```

**Características:**
- Captura en tiempo real
- Visualización hexadecimal y ASCII
- Detección automática de estructura Gilbarco
- Guardado de log para análisis posterior
- Estadísticas de tráfico

---

## 🔍 TROUBLESHOOTING

### Problema 1: No se puede abrir el puerto COM

**Síntomas:**
```
Error: [Errno 2] No such file or directory: 'COM1'
```

**Soluciones:**
1. Verificar que el puerto existe:
   - Windows: `Device Manager → Ports (COM & LPT)`
   - Linux: `ls /dev/ttyS* /dev/ttyUSB*`

2. Verificar que no esté en uso:
   ```bash
   # Cerrar otros programas que usen el puerto
   # Verificar servicios: PumpService, CEM-44
   ```

3. Verificar permisos (Linux):
   ```bash
   sudo chmod 666 /dev/ttyUSB0
   sudo usermod -a -G dialout $USER
   ```

### Problema 2: No se recibe respuesta

**Síntomas:**
```
→ TX: 10 02 01 03 00 02 10 03
✗ No se recibió respuesta
```

**Soluciones:**
1. Verificar baudrate correcto (probar 9600, 19200, 4800)
2. Verificar cableado (TX ↔ RX invertidos)
3. Verificar configuración de bits (8N1)
4. Verificar dirección de bomba correcta (1-16)
5. Verificar que el dispensador esté encendido
6. Usar serial_monitor.py para ver tráfico real

### Problema 3: Checksum incorrecto

**Síntomas:**
```
✗ Error de checksum: esperado 0x05, recibido 0x03
```

**Soluciones:**
1. Verificar cálculo de checksum (XOR de todos los bytes)
2. Verificar que no se incluya DLE/STX/ETX en checksum
3. Revisar byte stuffing (si DLE aparece en datos, duplicarlo)

### Problema 4: Bomba no autoriza

**Síntomas:**
```
← RX: 10 02 01 05 01 15 10 03  (NAK)
```

**Posibles causas:**
1. Bomba ocupada (ya despachando)
2. Precio no configurado
3. Manguera no colgada correctamente
4. Error en datos de preset
5. Bomba en modo de error

**Solución:**
```python
# Reset de bomba antes de autorizar
controller.reset_pump(pump_address=1)
time.sleep(0.5)

# Verificar estado
status = controller.request_status(pump_address=1)
print(f"Estado: {status}")

# Autorizar
controller.authorize_pump(pump_address=1, preset_amount=50.0)
```

### Problema 5: Comunicación intermitente

**Soluciones:**
1. Verificar calidad del cable (cambiar cable serial)
2. Reducir longitud del cable (< 15m para RS-232)
3. Usar RS-485 para distancias largas
4. Agregar resistencias de terminación (RS-485)
5. Verificar interferencia electromagnética
6. Revisar alimentación eléctrica del dispensador

---

## 📚 REFERENCIAS

### Documentación Oficial

- **Gilbarco Gold Docs**: https://docs.gilbarco.com/gold/
- **Gilbarco Latin America**: https://www.gilbarco.com/la/

### Especificaciones del Protocolo

- Gilbarco Two Wire Protocol Specification (documento propietario)
- Manual de instalación CEM-44
- Gilbarco Encore/SK700 Communication Manual

### Herramientas Útiles

- **PetroSol 2-Wire Pump Test Application**: Software de testing
- **Serial Port Monitor**: Monitoreo avanzado de puertos COM
- **RealTerm**: Terminal serial avanzado

### Hardware Recomendado

- **Convertidor USB-RS232**: FTDI FT232RL (chipset confiable)
- **Convertidor USB-RS485**: USB-485M
- **Adaptador RS232-RS485**: Automatic direction control

### Información de Contacto

Para soporte técnico de Gilbarco:
- Gilbarco Latin America: soporte@gilbarco.com
- Distribuidores autorizados en cada país

### Comunidad y Foros

- Control.com Forum - Fuel Dispensers
- Electrician Talk - Commercial Fuel Dispenser Communication
- GitHub - Proyectos open source relacionados

---

## 📝 NOTAS IMPORTANTES

### Consideraciones Legales

⚠️ **IMPORTANTE**: El protocolo Gilbarco Two-Wire es propietario. Esta documentación es para:
- Integración autorizada con sistemas de control
- Mantenimiento de sistemas existentes
- Propósitos educativos
- Desarrollo de software compatible

**NO usar para:**
- Manipulación de precios o volúmenes
- Evasión de sistemas de medición
- Fraude en transacciones
- Modificación no autorizada de equipos

### Seguridad

- Implementar autenticación en sistemas de control
- Registrar todas las transacciones (audit log)
- Validar comandos antes de ejecutar
- Implementar timeouts y límites de reintentos
- Monitorear anomalías en comunicación

### Compatibilidad

Este protocolo es compatible con:
- ✓ Gilbarco Encore Series
- ✓ Gilbarco SK700
- ✓ Gilbarco Legacy Pumps
- ✓ CEM-44 Controller
- ⚠️ Otros fabricantes (requiere verificación)

---

## 🆕 HISTORIAL DE VERSIONES

| Versión | Fecha | Cambios |
|---------|-------|---------|
| 1.0 | 2025-11-10 | Documentación inicial |
| | | - Especificaciones básicas |
| | | - Comandos principales |
| | | - Ejemplos de implementación |

---

## 📧 CONTRIBUCIONES

Para mejoras a esta documentación:
1. Reportar errores o inconsistencias
2. Agregar ejemplos adicionales
3. Compartir casos de uso
4. Contribuir con código de ejemplo

---

**Última actualización:** Noviembre 2025
**Versión del documento:** 1.0
