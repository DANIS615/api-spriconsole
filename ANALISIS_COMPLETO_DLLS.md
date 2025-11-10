# 📚 ANÁLISIS COMPLETO DE TODOS LOS DLLs

## 🎯 Objetivo

Analizar **TODOS** los DLLs del sistema Smart Ship Factory para:

1. **Identificar funciones exportadas** que podamos usar
2. **Mapear dependencias** entre componentes
3. **Encontrar DLLs de comunicación** (GPBox, Serial, TCP)
4. **Documentar arquitectura completa** del sistema

---

## 🚀 INICIO RÁPIDO

### Opción 1: Análisis Masivo Automático (RECOMENDADO)

```batch
REM Ejecutar desde el directorio del proyecto
analizar_todos_dlls.bat
```

**Esto hará**:
1. Buscar TODOS los DLLs en `C:\Windows\CEM44\Smart Ship Factory\Spirit`
2. Analizar cada uno automáticamente
3. Guardar resultados JSON en `analisis_dlls/`
4. Generar índice HTML interactivo

**Tiempo estimado**: 5-15 minutos (depende de cuántos DLLs haya)

### Opción 2: Análisis Individual

```batch
REM Analizar un DLL específico
python analizar_dll_auto.py "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"
```

---

## 📋 DLLs CRÍTICOS A ANALIZAR

### Prioridad ALTA (Comunicación con Hardware)

#### 1. SSF.FC.Comm.GPBox.D.dll ⭐⭐⭐⭐⭐

**Ubicación**: `Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll`

**Por qué es crítico**:
- Maneja comunicación directa con GPBox
- Probablemente contiene protocolo serial
- Funciones de bajo nivel para bombas

**Funciones esperadas**:
```
GPBoxConnect()
GPBoxSendCommand()
GPBoxReadResponse()
GPBoxAuthorize()
GPBoxStop()
GPBoxReadStatus()
```

**Comando para analizar**:
```batch
python analizar_dll_auto.py "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll" --output analisis_dlls
```

#### 2. SSF.FC.Comm.Serial.D.dll ⭐⭐⭐⭐

**Ubicación**: `Spirit\bin\communications\SSF.FC.Comm.Serial.D.dll`

**Por qué es crítico**:
- Maneja puerto serial (COM)
- Configuración de baudrate, paridad, etc.
- Envío/recepción de bytes

**Funciones esperadas**:
```
SerialOpen()
SerialClose()
SerialWrite()
SerialRead()
SerialConfig()
```

#### 3. SSF.Router.Message.D.dll ⭐⭐⭐

**Ubicación**: `Spirit\lib\SSF.Router.Message.D.dll`

**Por qué es importante**:
- Sistema de mensajería interno
- Enrutamiento entre componentes
- Podría revelar arquitectura

### Prioridad MEDIA (Lógica de Negocio)

#### 4. SSF.Gilbarco.D.dll ⭐⭐

**Ubicación**: `Spirit\bin\pumps\SSF.Gilbarco.D.dll`

**Ya analizado**: ✅

**Resultado conocido**:
- Sistema de plugins
- 5 funciones: Initialize, Shutdown, GetPlugInInstance, GetPlugInConfigParam, DestroyPlugInInstance
- No tiene funciones directas de control

#### 5. SSF.Wayne.D.dll ⭐⭐

**Ubicación**: `Spirit\bin\pumps\SSF.Wayne.D.dll`

**Por qué puede ser útil**:
- Soporte para bombas Wayne
- Puede tener protocolo similar
- Comparar con Gilbarco

### Prioridad BAJA (Utilidades)

#### 6. SSF.Tools.Library.D.dll ⭐

**Ubicación**: `Spirit\lib\SSF.Tools.Library.D.dll`

**Propósito**:
- Funciones de utilidad general
- Logging, formateo, conversiones

#### 7. Otros DLLs

Cualquier otro DLL en:
- `Spirit\bin\`
- `Spirit\lib\`
- `Spirit\bin\communications\`
- `Spirit\bin\pumps\`

---

## 🛠️ HERRAMIENTAS DISPONIBLES

### 1. analizar_dll_auto.py (Principal)

**Descripción**: Analizador automático de DLLs con pefile

**Uso**:
```bash
# Analizar una DLL
python analizar_dll_auto.py "ruta\a\archivo.dll"

# Guardar en directorio específico
python analizar_dll_auto.py "ruta\a\archivo.dll" --output "analisis_dlls"

# Analizar todas las DLLs de SSF
python analizar_dll_auto.py --all
```

**Salida**:
- Información en pantalla (arquitectura, exports, imports, strings)
- Archivo JSON con análisis completo
- Categorización de funciones por tipo

**Requisitos**:
```bash
pip install pefile
```

### 2. analizar_todos_dlls.bat (Automatización Windows)

**Descripción**: Script batch que busca y analiza TODOS los DLLs automáticamente

**Uso**:
```batch
analizar_todos_dlls.bat
```

**Proceso**:
1. Busca recursivamente todos los *.dll en Smart Ship Factory
2. Ejecuta analizar_dll_auto.py en cada uno
3. Guarda resultados en `analisis_dlls/`
4. Genera índice HTML
5. Muestra resumen final

**Salida**:
- `analisis_dlls/*.json` - Un JSON por cada DLL
- `analisis_dlls/indice.html` - Índice visual interactivo

### 3. generar_indice_dlls.py (Visualización)

**Descripción**: Genera índice HTML interactivo con todos los análisis

**Uso**:
```bash
python generar_indice_dlls.py "analisis_dlls"
```

**Características del índice**:
- ✅ Vista de tarjetas para cada DLL
- ✅ Búsqueda en tiempo real
- ✅ Resaltar funciones importantes
- ✅ Estadísticas globales
- ✅ Click para expandir detalles
- ✅ Responsive design

**Salida**:
- `analisis_dlls/indice.html` - Abrir en navegador

### 4. analizar_dll.bat (Nativo Windows)

**Descripción**: Usa dumpbin.exe de Visual Studio

**Uso**:
```batch
analizar_dll.bat "C:\ruta\a\archivo.dll"
```

**Ventajas**:
- No requiere Python
- Usa herramientas nativas de Windows
- Muy detallado

**Desventajas**:
- Requiere Visual Studio instalado
- Solo texto plano (sin JSON)

### 5. analizar_dll_linux.sh (Linux/WSL)

**Descripción**: Usa objdump y strings

**Uso**:
```bash
./analizar_dll_linux.sh /path/to/file.dll
```

**Ventajas**:
- Funciona en WSL
- No requiere Python

---

## 📊 ESTRUCTURA DE SALIDA

### Directorio analisis_dlls/

```
analisis_dlls/
├── indice.html                                    ← Índice HTML interactivo
├── SSF.Gilbarco.D.dll_analysis.json              ← Análisis individual
├── SSF.FC.Comm.GPBox.D.dll_analysis.json         ← Análisis individual
├── SSF.FC.Comm.Serial.D.dll_analysis.json        ← Análisis individual
├── SSF.Router.Message.D.dll_analysis.json        ← Análisis individual
├── SSF.Wayne.D.dll_analysis.json                 ← Análisis individual
└── ... (todos los demás DLLs)
```

### Formato JSON de análisis

```json
{
  "path": "C:\\Windows\\CEM44\\..\\SSF.FC.Comm.GPBox.D.dll",
  "exists": true,
  "is_32bit": true,
  "is_dll": true,
  "timestamp": "2008-06-06T09:21:52",
  "exports": [
    {
      "name": "GPBoxConnect",
      "ordinal": 1,
      "address": "0x10001000"
    },
    ...
  ],
  "imports": [
    {
      "dll": "KERNEL32.dll",
      "functions": ["CreateFileA", "ReadFile", "WriteFile", ...]
    },
    ...
  ],
  "strings": [
    "COM1",
    "9600",
    "GPBox",
    ...
  ],
  "sections": [...]
}
```

---

## 🔍 QUÉ BUSCAR EN LOS ANÁLISIS

### Funciones Críticas

Al revisar las funciones exportadas, busca estas palabras clave:

#### Comunicación
```
Connect, Disconnect, Open, Close
Send, Receive, Read, Write
Serial, Port, COM
Initialize, Shutdown
```

#### Control de Bombas
```
Authorize, Start, Stop, Reset
Pump, Dispenser, Nozzle, Hose
Preset, Amount, Volume
Price, Grade, Product
```

#### Estado y Datos
```
Status, State, Get, Set
Total, Totalizer, Counter
Transaction, Sale
Error, Alarm
```

### Dependencias Importantes

Si un DLL importa estas funciones, es relevante:

#### Comunicación Serial (KERNEL32.dll / WS2_32.dll)
```
CreateFile - Abrir puerto COM
ReadFile - Leer del puerto
WriteFile - Escribir al puerto
SetCommState - Configurar puerto
CloseHandle - Cerrar puerto
```

#### Comunicación de Red (WS2_32.dll)
```
socket, connect, send, recv
WSAStartup, WSACleanup
```

#### Base de Datos (ODBC32.dll)
```
SQLConnect, SQLExecute
SQLFetch, SQLBindCol
```

### Strings Interesantes

Los strings pueden revelar:

```
"COM1", "COM2" - Puerto serial usado
"9600", "19200" - Baudrate
"GPBox", "Gilbarco" - Protocolo
"Authorize", "Stop" - Comandos
"Error:", "Failed to" - Mensajes de error
```

---

## 📝 INTERPRETACIÓN DE RESULTADOS

### Caso 1: DLL con Muchas Funciones Exportadas

**Ejemplo**: SSF.FC.Comm.GPBox.D.dll exporta 50+ funciones

**Interpretación**:
✅ **EXCELENTE** - Probablemente podemos usarlo directamente

**Acción**:
1. Documentar todas las funciones exportadas
2. Crear wrapper en C# 32-bit
3. Probar funciones una por una

### Caso 2: DLL Solo con Funciones de Plugin

**Ejemplo**: SSF.Gilbarco.D.dll (ya visto)

**Interpretación**:
⚠️ **COMPLEJO** - Solo expone sistema de plugins

**Acción**:
1. Investigar cómo usar GetPlugInInstance()
2. O mejor: ir directo al protocolo

### Caso 3: DLL Sin Exports Públicos

**Ejemplo**: Algunos DLLs internos

**Interpretación**:
❌ **NO ÚTIL** - Para uso interno del sistema

**Acción**:
1. Ignorar ese DLL
2. Buscar otros más útiles

---

## 🎯 ANÁLISIS PRIORITARIO: GPBox DLL

### Comando Específico

```batch
python analizar_dll_auto.py "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll" --output analisis_dlls
```

### Qué Esperar

Si este DLL es útil, debería tener funciones como:

```
✅ Conexión:
   - GPBoxConnect(char* port)
   - GPBoxDisconnect()
   - GPBoxInitialize()

✅ Comandos:
   - GPBoxAuthorize(int pump, float amount)
   - GPBoxStop(int pump)
   - GPBoxReset(int pump)
   - GPBoxGetStatus(int pump)

✅ Configuración:
   - GPBoxSetPrice(int pump, int hose, float price)
   - GPBoxGetTotalizers(int pump)
```

### Si NO Tiene Funciones Útiles

**Plan B**: Ir directo al protocolo

```
1. Usar serial_monitor.py para capturar tráfico
2. Analizar tramas en capturas/
3. Implementar en gilbarco_pump_controller.py
4. Ver PLAN_PROTOCOLO_GPBOX.md
```

---

## 📊 EJEMPLO DE USO COMPLETO

### Paso 1: Análisis Masivo

```batch
REM Terminal Windows
cd C:\Users\tu_usuario\api-spriconsole
analizar_todos_dlls.bat
```

**Esperar**: 5-15 minutos

### Paso 2: Abrir Índice HTML

```batch
REM Se abre automáticamente, o manualmente:
start analisis_dlls\indice.html
```

### Paso 3: Buscar en el Índice

En el navegador:
- Buscar: "GPBox" → Encontrar SSF.FC.Comm.GPBox.D.dll
- Click en la tarjeta para expandir
- Revisar funciones exportadas

### Paso 4: Análisis Detallado

Si el DLL es prometedor:

```batch
REM Ver el JSON completo
notepad analisis_dlls\SSF.FC.Comm.GPBox.D.dll_analysis.json
```

### Paso 5: Decisión

**Opción A**: El DLL tiene funciones útiles
```
→ Ir a GUIA_CONSUMIR_DLLS.md
→ Implementar wrapper en C# 32-bit
→ Crear API REST
```

**Opción B**: El DLL NO es útil
```
→ Ir a PLAN_PROTOCOLO_GPBOX.md
→ Capturar protocolo directamente
→ Implementar en Python
```

---

## 🚨 TROUBLESHOOTING

### Error: "pefile no encontrado"

```bash
pip install pefile
```

### Error: "Archivo no encontrado"

Verificar ruta de instalación de SSF:

```batch
dir "C:\Windows\CEM44\Smart Ship Factory\Spirit"
```

Si está en otra ubicación, editar `analizar_todos_dlls.bat`:

```batch
set "SSF_ROOT=C:\ruta\correcta\Smart Ship Factory\Spirit"
```

### Error: "Access Denied"

Ejecutar terminal como Administrador:
- Click derecho en CMD/PowerShell
- "Ejecutar como administrador"

### El índice HTML no se genera

Ejecutar manualmente:

```bash
python generar_indice_dlls.py analisis_dlls
```

---

## 📈 PRÓXIMOS PASOS SEGÚN RESULTADOS

### Escenario 1: SSF.FC.Comm.GPBox.D.dll Tiene Funciones Útiles

**Acción**:
1. ✅ Documentar todas las funciones en `doc/FUNCIONES_GPBOX_DLL.md`
2. ✅ Crear servicio C# 32-bit (ver `servicio_bombas_csharp_32bit/`)
3. ✅ Probar cada función con hardware real
4. ✅ Crear API REST para consumir desde cualquier lenguaje

**Ventajas**:
- ✅ No necesitas reverse-engineer el protocolo
- ✅ Funciones ya probadas por el fabricante
- ✅ Más rápido de implementar

**Desventajas**:
- ⚠️ Dependencia de DLLs viejas
- ⚠️ Solo funciona en Windows
- ⚠️ Requiere runtime 32-bit

### Escenario 2: SSF.FC.Comm.GPBox.D.dll NO Es Útil

**Acción**:
1. ✅ Ir directo al protocolo GPBox
2. ✅ Seguir `PLAN_PROTOCOLO_GPBOX.md`
3. ✅ Usar `serial_monitor.py` para capturas
4. ✅ Implementar en `gilbarco_pump_controller.py`

**Ventajas**:
- ✅ Independencia total de SSF
- ✅ Control completo del protocolo
- ✅ Portabilidad a Linux/otros OS
- ✅ Sin dependencias de DLLs viejas

**Desventajas**:
- ⚠️ Requiere más tiempo (3-5 días)
- ⚠️ Necesitas capturar y analizar tráfico
- ⚠️ Prueba y error con hardware

---

## 📚 DOCUMENTOS RELACIONADOS

### Si vas por DLLs
- `GUIA_CONSUMIR_DLLS.md` - Cómo usar DLLs desde Python/C#
- `SOLUCION_DLL_32BITS.md` - Solución específica para 32-bit
- `servicio_bombas_csharp_32bit/README.md` - Servicio C# completo

### Si vas por Protocolo Directo
- `PLAN_PROTOCOLO_GPBOX.md` - Plan completo de 5 días
- `EMPEZAR_AHORA.md` - Guía de inicio rápido
- `PROTOCOLO_GILBARCO.md` - Documentación del protocolo
- `doc/PLANTILLA_COMANDO.md` - Template para documentar comandos

### Referencia General
- `DOCUMENTACION_GPBOX_SISTEMA.md` - Configuración de gpbox.ini
- `RESULTADO_ANALISIS_DLLS.md` - Resultados del primer análisis

---

## ✅ CHECKLIST

### Antes de Empezar
- [ ] Python instalado
- [ ] pefile instalado (`pip install pefile`)
- [ ] Ubicación de SSF verificada
- [ ] Permisos de administrador (si es necesario)

### Análisis Masivo
- [ ] Ejecutar `analizar_todos_dlls.bat`
- [ ] Verificar creación de `analisis_dlls/`
- [ ] Abrir `analisis_dlls/indice.html`
- [ ] Revisar todas las DLLs encontradas

### Análisis de DLLs Críticos
- [ ] SSF.FC.Comm.GPBox.D.dll
- [ ] SSF.FC.Comm.Serial.D.dll
- [ ] SSF.Router.Message.D.dll
- [ ] SSF.Wayne.D.dll
- [ ] SSF.Tools.Library.D.dll

### Documentación
- [ ] Crear `doc/FUNCIONES_GPBOX_DLL.md` con exports encontrados
- [ ] Crear `doc/ANALISIS_DEPENDENCIAS.md` con imports
- [ ] Crear `doc/ARQUITECTURA_SSF.md` con diagrama del sistema

### Decisión Final
- [ ] Evaluar si DLLs son útiles
- [ ] Elegir enfoque: DLL vs Protocolo Directo
- [ ] Seguir guía correspondiente

---

## 🎉 RESULTADO ESPERADO

Al terminar este proceso tendrás:

```
✅ Lista completa de TODOS los DLLs del sistema
✅ Funciones exportadas de cada uno
✅ Dependencias entre componentes
✅ Índice HTML navegable y buscable
✅ Archivos JSON con análisis detallado
✅ Decisión informada sobre qué enfoque seguir
```

---

## 💡 TIPS FINALES

### Tip 1: Prioriza GPBox y Serial

Estos son los más importantes para comunicación directa.

### Tip 2: No Te Pierdas en Detalles

Si un DLL no tiene exports públicos, ignóralo y sigue con los demás.

### Tip 3: Compara con Documentación

Cruza las funciones encontradas con `PROTOCOLO_GILBARCO.md` y `DOCUMENTACION_GPBOX_SISTEMA.md`.

### Tip 4: Pregúntate Siempre

> "¿Este DLL me acerca más a controlar las bombas?"

Si la respuesta es NO, no pierdas tiempo en él.

### Tip 5: El Índice HTML es tu Amigo

Usa la búsqueda para encontrar rápidamente funciones por palabra clave:
- "Authorize"
- "Pump"
- "Serial"
- "Connect"

---

**¡Éxito con el análisis!** 🚀

Si después del análisis decides ir por el protocolo directo, ve a:
→ **EMPEZAR_AHORA.md**

Si decides usar DLLs, ve a:
→ **GUIA_CONSUMIR_DLLS.md**
