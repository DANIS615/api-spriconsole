# ANALISIS CODIGODEV6 - CODIGO DECOMPILADO VB6

**Fecha**: 12 Noviembre 2025
**Carpeta**: `/codigodev6/`
**Contenido**: Codigo fuente decompilado de CEM-44 / Spirit Console

---

## RESUMEN EJECUTIVO

La carpeta `codigodev6` contiene el codigo fuente **decompilado** del sistema CEM-44 (Spirit Console) en formato VB6. Sin embargo, el codigo esta en **P-code bytecode**, no en Visual Basic legible.

**Conclusion**: No se pueden extraer comandos del protocolo directamente del codigo decompilado. Se requiere **captura de trafico serial** del ejecutable en ejecucion.

---

## CONTENIDO DE LA CARPETA

### Estadisticas

```
Total archivos:      ~250+
Formularios (.frm):  128
Modulos (.bas):      23
Clases (.123):       ~15
Recursos (.frx):     ~100
```

### Archivos Clave Identificados

#### 1. Relacionados con Autorizacion

| Archivo | Tamaño | Descripcion |
|---------|--------|-------------|
| Form_Autoriza.frm | 2236 lineas | Formulario de autorizacion |
| frmEstadoAutorizacion.frm | - | Estado de autorizacion |
| TDesautorizacion.frm | - | Desautorizacion |

#### 2. Configuracion

| Archivo | Tamaño | Descripcion |
|---------|--------|-------------|
| ConfiguracionPuertos.frm | - | Configuracion de puertos seriales |
| Configuracion_Consola.frm | - | Configuracion de consola |
| CPumpsConfig.123 | 227 lineas | Configuracion de bombas (clase) |

#### 3. Modulos Importantes

| Archivo | Tamaño | Descripcion |
|---------|--------|-------------|
| modDll.bas | - | Llamadas a DLLs |
| Constantes.bas | - | Constantes del sistema |
| Estructures.bas | - | Estructuras de datos |
| modGNC.bas | - | Gas Natural Comprimido |
| modTanques.bas | - | Gestion de tanques |

#### 4. Licencias y Comandos

| Archivo | Tamaño | Descripcion |
|---------|--------|-------------|
| CommandConsolelicence.123 | 59 KB | Comandos de consola y licencia |
| CCEMLicence.123 | 13 KB | Clase de licencia CEM |

---

## FORMATO DEL CODIGO

### Ejemplo de Codigo P-code

Todos los archivos .123, .bas y .frm contienen codigo en este formato:

```
Private Function Proc_159_0_7028C8() '7028C8
  'Data Table: 403450
  loc_7016E0: LitI2_Byte 3
  loc_7016E2: CUI1I2
  loc_7016E4: FStUI1 var_8E
  loc_7016E8: LitI2_Byte 0
  loc_7016EA: FStI2 var_8A
  loc_7016ED: LitI2_Byte 0
  loc_7016EF: FStI2 var_8C
  loc_7016F2: FLdRfVar var_96
  ...
```

**Caracteristicas**:
- Direcciones de memoria (loc_XXXXXX)
- Operaciones de bajo nivel (FStI2, LitI2_Byte, etc.)
- Variables numericas (var_XX)
- Imposible de leer directamente

### Referencias a SysWow64

**Encontrado en**: ConfiguracionPuertos.frm (linea 2)

```vb
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.OCX"
```

**Explicacion**:
- SysWow64 es una carpeta de Windows (no del repositorio)
- Contiene controles OCX de 32-bit en Windows 64-bit
- THREED32.OCX = Control 3D para VB6 (botones, frames, etc.)

**Otros controles encontrados**:
- COMCTL32.OCX - Common Controls
- MSCHART.OCX - Graficos
- MCI32.OCX - Multimedia
- MSMASK32.OCX - Masked Edit
- COMDLG32.OCX - Common Dialogs

---

## BUSQUEDA DE COMANDOS DEL PROTOCOLO

### Intentos Realizados

#### 1. Busqueda de Comandos Numericos

**Busqueda**: `030|031|032|033|AUTHORIZE|PRESET|CLEAR|STATUS`
**Archivos**: Form_Autoriza.frm, CommandConsolelicence.123, CPumpsConfig.123
**Resultado**: ❌ No encontrado (codigo en bytecode)

#### 2. Busqueda de Referencias a Bombas

**Busqueda**: `pump|bomba|gpbox|command|serial|port`
**Archivos**: Todos los .bas y .frm
**Resultado**: ✅ Encontradas referencias genericas:
- "PUMPS" - Seccion de bombas
- "INIPUMP" - Inicializacion de bombas
- "mnuPumpIni" - Menu de inicializacion

#### 3. Busqueda de Funciones de Protocolo

**Busqueda**: `SendPreset|GetStatus|Authorize|ClearPreset`
**Archivos**: modDll.bas, Constantes.bas
**Resultado**: ❌ No encontrado (funciones ofuscadas en bytecode)

---

## ARCHIVOS ANALIZADOS EN DETALLE

### 1. CommandConsolelicence.123

**Tamaño**: 59 KB (2236 lineas)
**Formato**: P-code bytecode
**Contenido**:
- Gestion de licencias
- Comandos de consola
- Referencias a modulos: "PUMPS", "REPORTES", "IMPORT", "INIPUMP"

**Funciones identificadas**:
```
Proc_159_0_7028C8() - Funcion desconocida
  Referencias a: PanelCierres, CCEMLicence, Formx
  Mensajes: "Error, no se detecto la presencia de un hardlock."
```

**Conclusion**: Licencia y permisos, no protocolos de comunicacion

---

### 2. CPumpsConfig.123

**Tamaño**: 5.9 KB (227 lineas)
**Formato**: P-code bytecode
**Contenido**: Configuracion de bombas

**Funciones identificadas**:
```
Proc_83_0_5E7B3C() - Inicializacion de configuracion
Proc_83_1_5E9934() - Validacion de configuracion
Proc_83_2_5E73AC() - Comparacion de parametros
Proc_83_3_5DC84C() - Procesamiento de parametro
Proc_83_4_5D4348() - Conversion booleana
Proc_83_5_5D9284() - Reset de configuracion
```

**Conclusion**: Logica de configuracion, no comandos de protocolo

---

### 3. ConfiguracionPuertos.frm

**Tamaño**: ~200 lineas visible
**Formato**: VB Form (parcialmente legible)
**Contenido**: Interface de configuracion de puertos

**Componentes UI**:
- 9 ComboBox para velocidades (CSpeed(0) a CSpeed(8))
- Opciones de velocidad: 300, 600, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200
- Frame principal con controles

**Referencia SysWow64**:
```vb
Object = "C:\WINDOWS\SysWow64\THREED32.OCX"
```

**Conclusion**: Solo interface de usuario, no logica de protocolo

---

### 4. Form_Autoriza.frm

**Tamaño**: 2236 lineas
**Formato**: Mixto (Form definition + P-code)
**Contenido**: Formulario de autorizacion de despachos

**Estado**: No se puede extraer logica de autorizacion por estar en bytecode

---

### 5. modDll.bas

**Tamaño**: ~200 lineas analizadas
**Formato**: P-code bytecode
**Contenido**: Llamadas a funciones de DLL

**Funciones identificadas**:
```
Proc_137_0_63A288(arg_C, arg_10) - Procesamiento de strings
Proc_137_1_5D844C(arg_C) - Limpieza/validacion
```

**Observacion**: Manipulacion de strings, posiblemente formateo de comandos

**Conclusion**: Funciones auxiliares, no comandos directos

---

### 6. Constantes.bas

**Tamaño**: ~300 lineas analizadas
**Formato**: P-code bytecode
**Contenido**: Constantes del sistema

**Observaciones**:
- Referencias a archivos: "Conectividad.bin"
- Mensajes: "Aviso de debito de Consignacion"
- Logica de horarios y fechas
- No se encontraron constantes de comandos numericos

**Conclusion**: Constantes de aplicacion, no de protocolo

---

## LIMITACIONES DEL CODIGO DECOMPILADO

### 1. P-code vs Source Code

**P-code** (pseudocode):
- Codigo intermedio compilado
- Instrucciones de maquina virtual VB
- Dificil de entender sin reconstruccion completa

**Source Code** (esperado):
- Codigo VB legible
- Comentarios y nombres descriptivos
- Logica clara

### 2. Ofuscacion por Compilacion

Al compilar VB6:
- Nombres de variables se pierden (var_XX)
- Nombres de funciones se pierden (Proc_XX_Y_ZZZZZZ)
- Constantes pueden estar en tablas binarias
- Strings pueden estar cifrados

### 3. Informacion Perdida

Lo que NO se puede recuperar:
- Nombres originales de funciones
- Comentarios del codigo
- Estructura logica de alto nivel
- Valores exactos de comandos si estan en tablas binarias

---

## HALLAZGOS POSITIVOS

### 1. Estructura de Archivos

Identificados modulos clave:
- **Form_Autoriza**: Autorizacion
- **CPumpsConfig**: Configuracion bombas
- **modDll**: Comunicacion con DLLs
- **ConfiguracionPuertos**: Puertos seriales

### 2. Referencias a Modulos

Confirmado que el sistema tiene:
- Modulo PUMPS (bombas)
- Modulo INIPUMP (inicializacion)
- Integracion con licencias (hardlock)
- Gestion de reportes

### 3. Configuracion de Puertos

Velocidades soportadas confirmadas:
- 300, 600, 1200, 2400, 4800, 9600, 19200, 38400, 57600, **115200** bps

---

## CONCLUSION Y RECOMENDACIONES

### Conclusion Principal

**El codigo decompilado NO es util** para extraer el formato exacto de los comandos del protocolo GPBox porque:

1. Esta en formato P-code bytecode
2. Nombres de funciones y variables ofuscados
3. Comandos pueden estar en tablas binarias
4. Logica fragmentada en multiples funciones indirectas

### Recomendacion

**Usar sniffer de trafico serial** para capturar comunicacion real:

```bash
python sniffer_serial_gpbox.py COM1 60
```

**Ventajas**:
1. **Formato EXACTO** de comandos
2. **Parametros reales** usados por CEM-44
3. **Secuencia completa** de comunicacion
4. **Sin ambiguedad**

---

## ARCHIVOS COMPLETOS LISTADOS

### Formularios (.frm) - 128 archivos

```
AnexoIII.frm, BrowseCli.frm, CEMBrowser.frm, Calculadora.frm,
CambioCodificacionProducto.frm, Cambios_Diferidos.frm, CambiosdePrecio.frm,
CargaEstadisticas.frm, ConfiguracionPuertos.frm, Configuracion_Consola.frm,
Configuracion_Tanques.frm, CrtReporte.frm, Error.frm, FActFact.frm,
FActFacturacion.frm, FActFacturacion2.frm, FActFacturacion3.frm,
FActGrupos.frm, FActNueva.frm, FActPack.frm, FActPrepaid.frm,
FActReport.frm, FCierraDeVenta.frm, FComAnul.frm, FComAnulacion.frm,
FComAnulacionAbrev.frm, FComisiones.frm, FDescuento_Semanal.frm,
FDescuento_Venta.frm, FDespa.frm, FExistenciasProductos.frm,
FExplic.frm, FFacturas.frm, FFormaPago.frm, FImportacionPrecios.frm,
FInventario.frm, FLA.frm, FNotaLiqComb.frm, FOk.frm, FRepDescSem.frm,
FReproXCod.frm, FSelection.frm, FSubGruposPorProducto.frm, FValenota.frm,
FabMedida.frm, FacOpcionTotal.frm, Form1.frm, FormArchivoDatos.frm,
FormAyuda.frm, FormClientes.frm, FormColorTabla.frm, FormContrase.frm,
FormDescuentos.frm, FormDescuentosPrecioSemana.frm, FormExpiraPrecio.frm,
FormFactFacturas.frm, FormGeneraCiudad.frm, FormMensajes.frm,
FormReclasificador.frm, FormRetenciones.frm, FormTanqueVirtual.frm,
FormTicket.frm, FormTickets.frm, Form_Autoriza.frm, Formxplsh.frm,
ImportConf.frm, Importacion37.frm, InvoicePrinterConfig.frm,
KeyboardForm.frm, LCH.frm, LCHDuplicado.frm, MDICem44.frm,
MainMenuForm.frm, MezclaProductos.frm, ModificarPrecioPorConcepto.frm,
MotivoDesbloqueo.frm, NotaLiqComb.frm, NotificacionEmergencia.frm,
NotificacionLock.frm, Numerador.frm, PreAnulCod.frm, PreEntCond.frm,
PreImport.frm, PreImprimirLCH.frm, PreModPrAgrup.frm, PreOpGrp.frm,
PreOpProd.frm, PreOpSeniat.frm, PrePrecXProd.frm, PreSelCodCli.frm,
PreSelVale.frm, PreSeleccionarVale.frm, Precios.frm, PreciosCompetencia.frm,
PruebaBomba.frm, PumpConfig.frm, PumpPriceConfig.frm, PumpTableForm.frm,
PumpsControlForm.frm, PumpsTableForm.frm, RepoCierreXProducto.frm,
RepoConceptosCierre.frm, RepoLineRepPosVenta.frm, RepoProdCier.frm,
Reportes_Anteriores.frm, SeataxLoadPriceForm.frm, SelectClp.frm,
SelectFactNum.frm, SelectReport.frm, TDesautorizacion.frm,
TEST_DB_SCHEMA.frm, TicketControl.frm, TicketFrmAuto.frm,
TicketNumberForm.frm, TicketSell.frm, ValeAbrev.frm, ValeControl.frm,
ValeNuevo.frm, frmAdministracionClientes.frm, frmConfigImpresoras.frm,
frmDetalleTanque.frm, frmEmergencia.frm, frmEstadoAutorizacion.frm,
frmFlotas.frm, frmHelp.frm, frmImportTables.frm, frmMediosDePago.frm,
frmMenuFuncionesEspeciales.frm, frmPaises.frm, frmReporteCisterna.frm,
frmReporteGrupos.frm, frmReporteTickets.frm, frmSeccionesReporte.frm
```

### Modulos (.bas) - 23 archivos

```
Constantes.bas, Estructures.bas, Iva.bas, MainSub.bas, ModAplic.bas,
ModFecha.bas, ModReporte.bas, ModReporteCisterna.bas, Mod_drv.bas,
ReportConverter.bas, ShowWindows.bas, modAlarmas.bas, modCountry.bas,
modDll.bas, modEvents.bas, modGNC.bas, modHardLock.bas,
modProgramacionEventos.bas, modReportPending.bas, modSalesInfo.bas,
modTanques.bas, modTicket.bas, modTranslator.bas
```

### Clases (.123) - 15 archivos

```
CCEMLicence.123, CFuente.123, CMsgPrice.123, CPrice.123, CPumpsConfig.123,
CReporte.123, CResumePriceList.123, CommandConsolelicence.123, FORECOURT.123,
clsAnexoiii.123, clsDataBase.123, clsMsg.123, clsSeetax.123,
clsSeetaxDetail.123, clsTransaction.123
```

---

## PROXIMOS PASOS

### Paso 1: Capturar Trafico (RECOMENDADO)

```bash
# Cerrar CEM-44.exe si esta abierto
python sniffer_serial_gpbox.py COM1 60

# Abrir CEM-44.exe en otra ventana
# Hacer autorizacion de $5.00 desde la consola
# Presionar Ctrl+C para terminar captura
```

**Resultado esperado**: Formato EXACTO del comando AUTHORIZE

### Paso 2: Analizar DLLs Binarias

Si el sniffer no funciona, analizar DLLs compiladas:
- SSF.Gilbarco.D.dll
- SSF.FC.D.exe (Forecourt Controller)

Buscar tablas de comandos en secciones de datos.

### Paso 3: Reverse Engineering Avanzado

Como ultima opcion:
- Usar IDA Pro / Ghidra para analizar CEM-44.exe
- Buscar funciones de envio serial
- Reconstruir logica de formateo de comandos

---

**FIN DEL ANALISIS**

**Conclusion**: Codigo decompilado **NO es suficiente**. Se requiere **captura de trafico serial** para obtener formato exacto de comandos.
