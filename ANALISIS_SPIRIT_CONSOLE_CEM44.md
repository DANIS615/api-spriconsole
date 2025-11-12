# SPIRIT CONSOLE / CEM-44 - ANALISIS COMPLETO

**Fecha**: 11 Noviembre 2025
**Sistema**: SmartShip Factory Spirit Console (CEM-44)

---

## RESUMEN EJECUTIVO

**Spirit Console** (tambien conocido como **CEM-44**) es el sistema de control y gestion de estaciones de servicio desarrollado por **SmartShip Factory** (SSF) para controlar bombas de combustible de multiples marcas a traves del multiplexor **GPBox**.

---

## COMPONENTES DEL SISTEMA

### 1. Ejecutables Principales

#### CEM-44.exe
**Ubicacion**: `/CONSOLE/CEM-44.exe`
**Tipo**: Ejecutable PE32 Windows (Visual Basic 5)
**Tamaño**: 3.5 MB
**Desarrollador**: Gilbarco Veeder-Root
**Descripcion**: Controlador de Estacion (Controlador de Surtidores)

**Caracteristicas**:
- Interface grafica principal (VB5)
- Control de bombas multimarca
- Gestion de preset y autorizaciones
- Reportes e impresion
- Comunicacion con GPBox

**Funciones principales identificadas**:
- `GetAuthoritationStatus` - Obtener estado de autorizacion
- `SendPreset` - Enviar preset a bomba
- `cmdBorrarPreset` - Comando para borrar preset
- `RefreshPresetButtons` - Actualizar botones de preset
- `ConfiguracionPuertos` - Configuracion de puertos
- `CPumpsConfig` - Configuracion de bombas

---

#### Spirit Console (Java)
**Ubicacion**: `/Smart Ship Factory/Spirit/spiritWeb/smartConsole/`
**Tipo**: Aplicacion Java Web Start (JNLP)
**Descripcion**: "Pump controller console"
**Vendor**: SmartShip Factory

**Componentes Java** (JAR files):
- `smartConsole.jar` (100 KB) - Aplicacion principal
- `GUIConsole.jar` (109 KB) - Interface de consola
- `GUIPump.jar` (189 KB) - Interface de bombas
- `GUIConfig.jar` (15 KB) - Configuracion
- `GUIPay.jar` (179 KB) - Modulo de pago
- `GUITicket.jar` (687 KB) - Sistema de tickets
- `GUIPrinter.jar` (302 KB) - Control de impresion
- `GUIShift.jar` (118 KB) - Turnos
- `GUITouchScreen.jar` (359 KB) - Pantalla tactil
- `RXTXcomm.jar` (63 KB) - Comunicacion serial

**Clase principal**: `smartConsole.SmartConsole`

**Configuracion**:
- Puerto TCP/IP: **3011**
- Log: `/smartConsole.log`
- Soporte Windows y Linux
- Requiere Java 1.5+

---

### 2. Archivos de Configuracion

#### gpbox.ini
**Ubicacion**: `/gpbox.ini`
**Proposito**: Configuracion completa del sistema GPBox y bombas

**Secciones principales**:

##### [GPBOX COMM ADDRESS]
```ini
Version = 02
GPBox 01 = 0001, 0000, 0000, 0000
```
- Address formato hexadecimal
- CEM-DBox addresses: JP1-A=0300, JP1-B=0308, JP1-C=0310, JP1-D=0318

##### [PUMP]
**Formato de configuracion**:
```
Pump ## = GPBox, Comm, Marca, Slot, Numero, Digitos, MaxLitros, PresetProd, PresetMonto

Pump 01 = 01, 1, G, 0, 01, 5, 990, S, S
```

**Parametros**:
- **GPBox**: Numero de GPBox (01-10)
- **Comm**: Puerto comunicacion (1-4)
- **Marca**:
  - `G` = Gilbarco
  - `W` = Wayne
  - `T` = Tokheim
  - `S` = Schlumberger
  - `N` = GNC
  - `D` = Dunclare
  - `X` = Ninguno
- **Slot**: Siempre 0 para CEM-DBox (0-99 para GPBox)
- **Numero**: Numero en surtidor (01-99)
- **Digitos**: 5 o 6 digitos en monto (solo Gilbarco/Wayne)
- **MaxLitros**: 990 o 9990 (Gilbarco), 990 o 1950 (Wayne)
- **PresetProd**: Preset por producto habilitado (S/N) - solo Gilbarco
- **PresetMonto**: Preset por monto habilitado (S/N) - solo Gilbarco

**Configuracion actual del sistema**:
```ini
Pump 01 = 01, 1, G, 0, 01, 5, 990, S, S
Pump 02 = 01, 1, G, 0, 02, 5, 990, S, S
Pump 03 = 01, 1, G, 0, 03, 5, 990, S, S
Pump 04 = 01, 1, G, 0, 04, 5, 990, S, S
Pump 05 = 01, 1, G, 0, 05, 5, 990, S, S
Pump 06 = 01, 1, G, 0, 06, 5, 990, S, S
```

**Interpretacion**:
- 6 bombas Gilbarco configuradas
- Todas en GPBox 01, puerto Comm 1
- Slot 0 (modo CEM-DBox o GPBox slot-based)
- 5 digitos en monto
- 990 litros maximo
- Preset por producto: SI
- Preset por monto: SI

##### [GILBARCO] - Configuraciones especificas
```ini
; AUTH_STOP_COMMAND = 0 Funcionalidad anterior (Default)
;                     1 Nueva Funcionalidad.

; GENERAL_ACTIVE_PRESET = 1 (habilitado)
;                       = 0 (deshabilitado)

; PUMP ID G=N
;   ID es el Id del surtidor (de dos digitos)
;   G es el numero de grade en Cem44 (posicion de manguera 0,1,2 o 3)
;   N es el numero de grade que reporta el surtidor
```

##### [WAYNE] - Configuraciones Wayne
```ini
; Entrada de Valvula Lenta en accion (Preset)
Slow Down Preset = 0.350
Litros (L) o Galones (G) en Surtidor = L
Factor Multiplicador = 1

MIN_VOL_PRESET = 500
ALTERNATE_WAYNE_PRESET = 0
```

##### [SEETAX] - Configuracion de cambio de precios
```ini
DEBUG = 1
REINTENTOS CAMBIO PRECIO = 3
SLEEP CAMBIO PRECIOS = 500  ; Milisegundos
```

---

#### Cem44.ini
**Ubicacion**: `/DataBackup/Cem44.ini`
**Proposito**: Configuracion de la consola CEM-44

**Secciones principales**:

##### [GENERAL]
```ini
AUTOPAY_OPERADOR=1
ACTIVE_OLD_DECIMAL_OPTION=0
TOUCHSCREEN=1
ARCHIVO_MAXIMO=58
MAXIMO_VOLUMEN=40000
Impresora=1
DESCARGA_MINIMA=400
```

##### [CONECTIVIDAD]
```ini
MOSTRAR_EVENTOS=0
```

##### [TCPIP]
```ini
PORT=9010
```

##### [PRESET]
```ini
FULLTANK_CAPTION=ESTANQUE LLENO
```

---

### 3. Bases de Datos

**Formato**: Microsoft Access (.mdb)
**Ubicacion**: `/CONSOLE/`

#### msgeng.mdb (242 KB)
- Motor de mensajes
- Textos de la interface

#### flotas.mdb (72 KB)
- Gestion de flotas
- Clientes corporativos

#### reporte.mdb (462 KB)
- Almacenamiento de reportes
- Historico de transacciones

#### ExistenciasProductos.mdb (126 KB)
- Inventario de productos
- Control de stock

#### ExistenciasProductosNew.mdb (144 KB)
- Version nueva de inventario

---

### 4. Servicios del Sistema

#### PumpService.exe
**Ubicacion**: `/PumpService/PumpService.exe`
**Proposito**: Servicio de comunicacion con bombas

#### TankService.exe
**Ubicacion**: `/TankService/TankService.exe`
**Proposito**: Servicio de gestion de tanques (inventario)

#### PosService.exe
**Ubicacion**: `/PosService/PosService.exe`
**Proposito**: Servicio de punto de venta (POS)

#### SMSService.exe
**Ubicacion**: `/CEM441/SMSService/SMSService.exe`
**Proposito**: Servicio de mensajes SMS

---

## ARQUITECTURA DE COMUNICACION

### Topologia del Sistema

```
[CEM-44.exe / Spirit Console]
         |
         | TCP/IP (Puerto 9010 / 3011)
         |
    [PumpService]
         |
         | Serial 115200 bps
         |
      [GPBox]
         |
         | Serial RS485 19200 bps
         |
  [Bombas Gilbarco]
```

### Protocolo de Comunicacion

**PC -> GPBox**: 115200 bps
**GPBox -> Bombas**: 19200 bps

**Protocolo**: DLE-STX-ETX con LRC (descubierto en sesion anterior)

---

## FUNCIONALIDADES PRINCIPALES

### 1. Control de Bombas

**Funciones disponibles**:
- Autorizacion de despacho (AUTHORIZE)
- Preset por monto
- Preset por volumen
- Preset "Estanque Lleno"
- Borrar preset (CLEAR PRESET)
- Lectura de status
- Control de valvula lenta (Slow Down)

**Modos de operacion**:
- Modo operador
- Modo touchscreen
- Control remoto (consola remota)

### 2. Gestion de Precios

**Caracteristicas**:
- Cambio de precios por surtidor
- Reintentos automaticos (3 intentos)
- Delay configurable (500ms)
- Verificacion de aplicacion

### 3. Reportes

**Tipos de reportes** (archivos .rpt):
- `cierre.rpt` - Cierre de turno
- `cierreAgrup.rpt` - Cierre agrupado
- `reporte.rpt` - Reporte general
- `Repo1.rpt` / `repo2.rpt` - Reportes adicionales
- `factura.rpt` - Facturacion
- `anexoiii.rpt` - Anexo III
- `clp.rpt` - Comisiones por litro
- `Comisiones.rpt` - Comisiones
- `productos.rpt` - Productos
- `mezclas.rpt` - Mezclas
- `grupos.rpt` - Grupos
- `Precios.rpt` - Precios

### 4. Gestion de Flotas

- Base de datos de flotas
- Control de creditos
- Reportes de consumo

### 5. Interface de Usuario

**Componentes GUI**:
- Pantalla principal con bombas
- Botones de preset
- Display de status
- Animaciones de estado
- Touchscreen opcional
- Sonidos de eventos

**Archivos multimedia**:
- `pump.avi` - Animacion de bomba
- `despach.avi` - Despachando
- `finalizado.wav` - Despacho finalizado
- `solicitud.wav` - Solicitud de autorizacion
- `error.avi`, `warning.avi`, `fatalerror.avi` - Errores

---

## CONFIGURACION DETALLADA DE GPBOX

### Direccionamiento

**CEM-DBox Jumpers**:
- JP1-A = 0x0300
- JP1-B = 0x0308
- JP1-C = 0x0310
- JP1-D = 0x0318

**GPBox**: 4 puertos de comunicacion por GPBox
**Formato Address**: 0000 hexadecimal

### Bombas Soportadas

**Marcas compatibles**:
1. **Gilbarco** (G)
   - Preset por producto: SI
   - Preset por monto: SI
   - 5 o 6 digitos en monto
   - 990 o 9990 litros maximo

2. **Wayne** (W)
   - Preset por monto
   - Slow Down configurable
   - Factor multiplicador: 1 o 10
   - MIN_VOL_PRESET = 500ml

3. **Tokheim** (T)
   - Slot siempre 0

4. **Schlumberger** (S)
   - Slot siempre 0

5. **GNC** (N)
   - Gas Natural Comprimido

6. **Dunclare** (D)

### Parametros de Preset

**Gilbarco**:
- Preset por producto: Habilitado/Deshabilitado
- Preset por monto: Habilitado/Deshabilitado
- Preset pasivo: Por bomba

**Wayne**:
- Slow Down: 0.350 litros (default)
- Volumen minimo preset: 500ml
- Preset alternativo: Deshabilitado (0)

**Generales**:
- Maximo volumen: 40000 litros (Cem44.ini)
- Descarga minima: 400 (Cem44.ini)

---

## LIMITACIONES CONOCIDAS

### Por Marca

**Gilbarco**:
- 5/6 digitos en monto
- 990/9990 litros maximo
- Necesita configuracion de grade mapping

**Wayne**:
- 5/6 digitos en monto
- 990/1950 litros maximo
- Requiere slow down preset
- Minimo 500ml para preset

**Tokheim/Schlumberger**:
- Slot siempre 0 (no slot-based)
- 5 digitos en monto
- 990 litros maximo

---

## RELACION CON PROTOCOLO GPBOX

### Comandos Identificados en CEM-44

Basado en strings extraidos del ejecutable:
- `GetAuthoritationStatus` - Leer estado de autorizacion
- `SendPreset` - Enviar preset
- `cmdBorrarPreset` - Borrar preset

### Configuracion de Protocolo

**Del archivo gpbox.ini**:
- Comunicacion bidireccional PC <-> GPBox
- Slot-based addressing para GPBox
- Slot 0 para CEM-DBox
- Configuracion de preset por bomba

### Relacion con Comandos Descubiertos

**Comandos que hemos descubierto**:
- `016` - READ STATUS (GetAuthoritationStatus)
- `033` - CLEAR PRESET (cmdBorrarPreset)
- `030[H][T][MONTO]` - AUTHORIZE (SendPreset)

**IMPORTANTE**: El formato del comando AUTHORIZE que descubrimos puede no ser correcto porque:
1. gpbox.ini menciona "Preset por producto" y "Preset por monto" como opciones separadas
2. CEM-44 tiene funciones especificas para cada tipo
3. El parametro `[T]` (tipo) puede no existir en el protocolo real

**Nueva hipotesis**:
- Quizas hay comandos diferentes para preset por monto vs preset por producto
- El numero de manguera puede especificarse de otra forma
- La configuracion en gpbox.ini sugiere que el preset es mas complejo

---

## ARCHIVOS RELEVANTES PARA INGENIERIA INVERSA

### Codigo Fuente VB6 Decompilado

**Ubicacion**: `/codigodev6/`
- `CommandConsolelicence.123` - Comandos de licencia

**Estado**: Bytecode P-code (no legible directamente)

### DLLs del Sistema SSF

**Ubicacion**: `/Smart Ship Factory/Spirit/bin/`

**DLLs relevantes** (de sesion anterior):
- `SSF.Gilbarco.D.dll` - Protocolo Gilbarco
- `SSF.FC.D.exe` - Forecourt Controller
- `SSF.Spirit.Watchdog.D.exe` - Watchdog
- `SSF.Msg.Router.D.exe` - Enrutador de mensajes

---

## PUERTOS Y COMUNICACION

### Puertos TCP/IP

**CEM-44**:
- Puerto: 9010

**Spirit Console**:
- Puerto: 3011

### Puertos Seriales

**Configuracion** (de gpbox.ini):
- GPBox 01: Puerto 1 (0001)
- Otros puertos: Deshabilitados (0000)

**Velocidades**:
- PC -> GPBox: 115200 bps
- GPBox -> Bombas: 19200 bps

---

## PROXIMOS PASOS RECOMENDADOS

### 1. Capturar Trafico del CEM-44

**Objetivo**: Obtener formato EXACTO del comando AUTHORIZE

**Metodo**:
1. Ejecutar `sniffer_serial_gpbox.py` en puerto COM
2. Abrir CEM-44.exe
3. Hacer autorizacion de preset desde la consola
4. Capturar comando exacto

**Archivo creado**: Ya existe `sniffer_serial_gpbox.py`

### 2. Analizar Bases de Datos

**Objetivo**: Encontrar configuracion de comandos

**Archivos a revisar**:
- `msgeng.mdb` - Puede contener strings de comandos
- `reporte.mdb` - Puede tener log de comunicacion

**Herramienta**: mdb-tools (Linux) o Access (Windows)

### 3. Analizar Spirit Console Java

**Objetivo**: Codigo fuente mas legible que VB5

**Metodo**:
1. Descompilar `GUIConsole.jar` y `GUIPump.jar`
2. Buscar clases de comunicacion serial
3. Identificar formato de comandos

**Herramienta**: JD-GUI, jadx

### 4. Revisar Logs

**Archivos de log posibles**:
- `/smartConsole.log` (Spirit Console)
- Logs de PumpService
- Logs de comunicacion (si DEBUG=1)

---

## CONCLUSIONES

### Sistema Spirit Console / CEM-44

1. **Sistema maduro y completo** para gestion de estaciones de servicio
2. **Multi-marca**: Soporta Gilbarco, Wayne, Tokheim, Schlumberger, GNC, Dunclare
3. **Arquitectura modular**: Console + Services + GPBox + Bombas
4. **Configuracion flexible** via gpbox.ini
5. **Doble interface**: VB5 (CEM-44.exe) y Java (Spirit Console)

### Relacion con Protocolo GPBox

1. **Configuracion confirma**: Sistema slot-based para GPBox
2. **Preset complejo**: Por producto y por monto son opciones separadas
3. **Grade mapping**: Necesario para Gilbarco (mapeo de mangueras)
4. **Formato AUTHORIZE**: Probablemente diferente al que intentamos

### Problema Actual AUTHORIZE

**Hipotesis revisada**:
- El comando `030[H][T][MONTO]` puede ser incorrecto
- Quizas preset por monto y por producto son comandos diferentes
- El numero de manguera puede necesitar grade mapping
- El formato puede depender de configuracion en gpbox.ini

**Solucion definitiva**:
- **Capturar trafico de CEM-44.exe** con `sniffer_serial_gpbox.py`
- Ver formato REAL que usa el software
- Comparar con nuestra hipotesis

---

## REFERENCIAS

**Archivos analizados**:
- `/CONSOLE/CEM-44.exe` - Ejecutable principal
- `/gpbox.ini` - Configuracion GPBox y bombas
- `/DataBackup/Cem44.ini` - Configuracion consola
- `/Smart Ship Factory/Spirit/spiritWeb/smartConsole/` - Sistema Java

**Strings extraidos de CEM-44.exe**:
- Manufacturer: Gilbarco Veeder-Root
- Product: Controlador de Estacion (CEM-44)
- Technology: Visual Basic 5 (MSVBVM50.DLL)
- Controls: COMCTL32.OCX, THREED32.OCX, MSCHART.OCX, etc.

---

**FIN DEL ANALISIS**

**Siguiente paso**: Ejecutar `sniffer_serial_gpbox.py` mientras CEM-44 hace un AUTHORIZE
