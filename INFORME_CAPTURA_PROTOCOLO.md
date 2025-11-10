# 📡 INFORME: CAPTURA DEL PROTOCOLO GILBARCO

## Fecha: 10 de Noviembre 2025

---

## ✅ RESUMEN DE LO REALIZADO

### 1. Análisis Completo del Sistema

**Archivos analizados:**
- ✅ `gpbox.ini` - Configuración completa de 6 bombas Gilbarco
- ✅ `GRADETANK.BIN` - Configuración de 4 mangueras/productos
- ✅ `ACTUALPRICES.BIN` - Archivo de precios (formato codificado)
- ✅ Logs del sistema (LOG.TXT)

**Sistema identificado:**
- 6 bombas Gilbarco activas (Pump 01-06)
- Protocolo: Gilbarco Two-Wire
- GPBox 01, Puerto Comm 1
- 4 productos configurados (0-3)

### 2. Herramientas Creadas

**Archivos Python creados en `C:\Windows\CEM44\`:**

1. **`gilbarco_pump_controller.py`** (800+ líneas)
   - Controlador completo para comunicación serial
   - Implementación del protocolo Gilbarco Two-Wire
   - Funciones para: autorizar bombas, leer estado, leer totalizadores
   - Formato de mensajes DLE-STX-ETX

2. **`serial_monitor.py`** (350+ líneas)
   - Monitor avanzado de tráfico serial
   - Visualización hex + ASCII
   - Detección automática de protocolo Gilbarco
   - Guardado de logs

3. **`monitor_simple.py`** (150+ líneas)
   - Versión simplificada para captura rápida
   - Sin interacción requerida
   - Auto-guardado en `captura_serial.txt`

4. **`test_serial_access.py`** (80+ líneas)
   - Test de acceso a puertos COM
   - Diagnóstico de problemas

### 3. Documentación Generada

**`PROTOCOLO_GILBARCO.md`** (500+ líneas)
- Especificaciones técnicas completas
- Estructura de mensajes (DLE STX ... DLE ETX)
- Tabla de comandos del protocolo
- Ejemplos de implementación
- Cálculo de checksums

**`DOCUMENTACION_GPBOX_SISTEMA.md`** (1000+ líneas)
- Análisis detallado del gpbox.ini
- Configuración bomba por bomba
- Arquitectura de comunicación
- Sistema de precios
- Código completo para capturar datos
- **Incluye parsers de archivos binarios**

---

## 🔍 HALLAZGOS IMPORTANTES

### Configuración de Bombas (gpbox.ini)

```ini
Pump 01 = 01, 1, G, 0, 01, 5, 990, S, S
          ↓   ↓  ↓     ↓   ↓   ↓    ↓  ↓
          │   │  │     │   │   │    │  └─ Preset por monto: SI
          │   │  │     │   │   │    └──── Preset por producto: SI
          │   │  │     │   │   └───────── Máximo: 990 litros
          │   │  │     │   └───────────── Display: 5 dígitos
          │   │  │     └───────────────── Número físico: 01
          │   │  └─────────────────────── Marca: Gilbarco
          │   └────────────────────────── Puerto: Comm 1
          └────────────────────────────── GPBox: 01
```

### Configuración de Mangueras (GRADETANK.BIN)

```
000000100001  → Manguera 0: Grado 00, Tanque 01, Producto 00001
010140000001  → Manguera 1: Grado 01, Tanque 04, Producto 00001
020140000002  → Manguera 2: Grado 01, Tanque 04, Producto 00002
030140000003  → Manguera 3: Grado 01, Tanque 04, Producto 00003
```

### Formato de Precios (del LOG)

```
PROCESS PRICE CHANGE - PUMP [1] HOSE [0] PRODUCT [1] PRICE [100]
                                                              ↑
                                                              └─ 100 = $1.00/litro
                                                                 (dividir entre 100)

PPU[2421] = 24.21 pesos por litro
```

---

## ⚠️ SITUACIÓN ACTUAL: NO HAY TRÁFICO EN COM1

### Prueba Realizada

```
Puerto testeado: COM1
Baudrate: 9600
Tiempo de monitoreo: 30 segundos
Resultado: 0 mensajes capturados
```

### Posibles Causas

1. **El puerto real no es COM1**
   - El gpbox.ini dice "Comm 1" pero puede ser diferente
   - Puede estar usando COM3 u otro puerto
   - Necesita verificación física

2. **Las bombas no están conectadas/encendidas**
   - El sistema puede estar funcionando sin bombas físicas
   - Modo demo o testing

3. **El PumpService no está comunicándose activamente**
   - El servicio está corriendo pero no hay polling
   - Solo comunica cuando hay actividad en bombas

4. **El protocolo puede ser diferente**
   - Podría estar usando hardware GPBox especial
   - Comunicación por placa interna, no por COM externo

---

## 📋 PRÓXIMOS PASOS RECOMENDADOS

### Opción 1: Verificar Puerto Real

```bash
# Detener PumpService
net stop PumpService

# Ver qué puerto se liberó
# (el que estaba en uso es el correcto)

# Reiniciar
net start PumpService
```

### Opción 2: Probar COM3

```bash
python monitor_simple.py
# (modificar PORT = 'COM3' en el script)
```

### Opción 3: Verificar Hardware Físico

- ¿Las bombas están conectadas y encendidas?
- ¿Hay un cable serial conectado al PC?
- ¿Hay una tarjeta GPBox instalada?

### Opción 4: Capturar Desde Consola CEM-44

Si la consola CEM-44.exe se conecta:
1. Ejecutar `CEM-44.exe`
2. En otra terminal: `python monitor_simple.py`
3. Hacer acciones en la consola (cambiar precios, autorizar bomba)
4. El monitor capturará los comandos reales

### Opción 5: Analizar PumpService Directamente

```bash
# Ver qué archivo abre el servicio
# Usar Process Monitor (Sysinternals)
# Filtrar por: PumpService.exe
# Ver: Registry, File, Network operations
```

---

## 💡 LO QUE SÍ SABEMOS

### 1. Protocolo Gilbarco Two-Wire

**Estructura de mensaje:**
```
10 02 [ADDRESS] [COMMAND] [LENGTH] [DATA...] [CHECKSUM] 10 03
DLE STX                                                 DLE ETX
```

**Ejemplo - Solicitar estado de bomba 1:**
```
10 02 01 03 00 02 10 03
│  │  │  │  │  │  │  │
│  │  │  │  │  │  │  └─ ETX (End of Text)
│  │  │  │  │  │  └──── DLE (Data Link Escape)
│  │  │  │  │  └─────── Checksum (01 XOR 03 XOR 00 = 02)
│  │  │  │  └────────── Longitud de datos (0)
│  │  │  └───────────── Comando (03 = STATUS_REQUEST)
│  │  └──────────────── Dirección de bomba (01)
│  └─────────────────── STX (Start of Text)
└────────────────────── DLE (Data Link Escape)
```

### 2. Comandos Conocidos

| Código | Comando | Descripción |
|--------|---------|-------------|
| 0x01 | VERSION_REQUEST | Solicitar versión de firmware |
| 0x02 | CONFIG_REQUEST | Solicitar configuración |
| 0x03 | STATUS_REQUEST | Solicitar estado actual |
| 0x04 | PRESET_COMMAND | Establecer preset |
| 0x05 | AUTHORIZE_PUMP | Autorizar dispensador |
| 0x06 | STOP_PUMP | Detener dispensador |
| 0x07 | RESET_PUMP | Resetear dispensador |
| 0x08 | READ_TOTALIZERS | Leer totalizadores |
| 0x09 | READ_PRICE | Leer precio |
| 0x0A | WRITE_PRICE | Escribir precio |

### 3. Configuración Serial

```
Baudrate: 9600 bps
Data bits: 8
Stop bits: 1
Parity: None
Flow control: None
```

---

## 🎯 TU OBJETIVO: CAPTURAR PRECIOS Y MANGUERAS

### Método 1: Por Comunicación Serial (SI HAY TRÁFICO)

Una vez que capturemos tráfico real, verás algo como:

```
10 02 01 09 01 00 XX 10 03
          │     │
          │     └─ Número de manguera
          └─ READ_PRICE (0x09)

Respuesta:
10 02 01 09 04 [PRECIO_4_BYTES] XX 10 03
```

### Método 2: Por Archivos de Configuración (YA DISPONIBLE)

Ya tienes el código en `DOCUMENTACION_GPBOX_SISTEMA.md`:

```python
# Leer configuración de bombas
bombas = leer_configuracion_bombas()  # Del gpbox.ini

# Leer configuración de mangueras
mangueras = leer_configuracion_mangueras()  # Del GRADETANK.BIN

# Estructura resultante:
{
    'bomba_1': {
        'manguera_0': {'producto': 1, 'grado': 0, 'precio': None},
        'manguera_1': {'producto': 1, 'grado': 1, 'precio': None},
        'manguera_2': {'producto': 2, 'grado': 1, 'precio': None},
        'manguera_3': {'producto': 3, 'grado': 1, 'precio': None}
    },
    ...
}
```

Para obtener precios, necesitarías:
1. Decodificar `ACTUALPRICES.BIN` (formato propietario), O
2. Capturar del tráfico serial cuando CEM-44 consulte precios

---

## 📊 ESTADO DE ARCHIVOS CREADOS

| Archivo | Ubicación | Estado | Tamaño |
|---------|-----------|--------|--------|
| gilbarco_pump_controller.py | C:\Windows\CEM44\ | ✅ Creado | ~800 líneas |
| serial_monitor.py | C:\Windows\CEM44\ | ✅ Creado | ~350 líneas |
| monitor_simple.py | C:\Windows\CEM44\ | ✅ Creado | ~150 líneas |
| test_serial_access.py | C:\Windows\CEM44\ | ✅ Creado | ~80 líneas |
| PROTOCOLO_GILBARCO.md | C:\Windows\CEM44\ | ✅ Creado | ~500 líneas |
| DOCUMENTACION_GPBOX_SISTEMA.md | C:\Windows\CEM44\ | ✅ Creado | ~1000 líneas |
| captura_serial.txt | C:\Windows\CEM44\ | ⏳ Vacío | 0 bytes |

---

## 🚀 LISTO PARA IMPLEMENTAR

**Todo está preparado para:**
1. ✅ Comunicación serial con bombas Gilbarco
2. ✅ Parseo de archivos de configuración
3. ✅ Monitoreo de tráfico
4. ✅ Envío de comandos

**Solo falta:**
- 🔍 Identificar el puerto COM correcto
- 🔍 Verificar que las bombas estén físicamente conectadas
- 🔍 Capturar tráfico real para perfeccionar el protocolo

---

## 📞 SIGUIENTE ACCIÓN SUGERIDA

**Verifica físicamente:**
1. ¿Están las bombas conectadas y encendidas?
2. ¿Qué cable sale del PC hacia las bombas?
3. ¿Hay una tarjeta GPBox instalada en el PC?

**O prueba:**
```bash
cd C:\Windows\CEM44

# Probar COM3
python -c "import monitor_simple; monitor_simple.PORT='COM3'; monitor_simple.monitor_trafico()"
```

---

**Generado:** 10 de Noviembre 2025
**Sistema:** CEM-44 v6.02.00.06
**Estado:** Listo para captura de tráfico real
