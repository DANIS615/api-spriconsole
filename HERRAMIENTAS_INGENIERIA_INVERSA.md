# 🔍 Herramientas de Ingeniería Inversa para DLLs

Herramientas de línea de comandos para analizar las DLLs de Smart Ship Factory sin necesidad de programar.

## 🎯 ¿Qué Lograste?

```
C:\Windows\CEM44\dll_wrappers\cpp>ssf_wrapper.exe
[OK] DLL cargada: C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll
ssfPIInitialize() -> 0x2c3ce01
```

**¡Eso es un GRAN avance!** Ya lograste:
- ✅ Cargar la DLL de 32 bits
- ✅ Llamar una función (`ssfPIInitialize`)
- ✅ Obtener un resultado (`0x2c3ce01` = handle o código de éxito)

---

## 📦 Herramientas Creadas

### 1️⃣ analizar_dll_auto.py (PYTHON - RECOMENDADO)

**Mejor opción**: Funciona en cualquier sistema, no requiere Visual Studio.

```bash
# Instalar dependencia
pip install pefile

# Analizar una DLL
python analizar_dll_auto.py "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# Analizar TODAS las DLLs de SSF
python analizar_dll_auto.py --all
```

**Lo que hace**:
- ✅ Extrae **TODAS** las funciones exportadas
- ✅ Categoriza funciones por tipo (Initialize, Authorize, Status, etc.)
- ✅ Lista dependencias (DLLs requeridas)
- ✅ Busca strings interesantes
- ✅ Guarda resultado en JSON para análisis posterior
- ✅ Funciona sin cargar la DLL (no hay riesgo)

---

### 2️⃣ analizar_dll.bat (WINDOWS NATIVO)

**Para Windows**: Usa `dumpbin.exe` (viene con Visual Studio).

```batch
REM Analizar una DLL
analizar_dll.bat "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

REM Analizar TODAS
analizar_dll.bat --all
```

**Ventajas**:
- ✅ Usa herramientas oficiales de Microsoft
- ✅ Muy detallado
- ✅ Genera reportes TXT fáciles de leer

**Requisitos**:
- Visual Studio instalado (Community es gratis)
- O Windows SDK

Si no tienes Visual Studio, el script te dice cómo instalarlo.

---

### 3️⃣ analizar_dll_linux.sh (LINUX/WSL)

**Para Linux o WSL**: Usa `objdump` y `strings`.

```bash
# Instalar herramientas (si no las tienes)
sudo apt install binutils

# Analizar una DLL
./analizar_dll_linux.sh "/mnt/c/Windows/CEM44/Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll"

# Analizar TODAS
./analizar_dll_linux.sh --all
```

---

## 🚀 INICIO RÁPIDO (5 minutos)

### Opción A: Python (RECOMENDADO)

```bash
# 1. Instalar pefile
pip install pefile

# 2. Analizar la DLL de Gilbarco
python analizar_dll_auto.py "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# 3. Ver las funciones exportadas en pantalla
# 4. El script guarda un JSON con TODO el análisis
```

**Resultado esperado**:
```
============================================================
FUNCIONES EXPORTADAS (LO MÁS IMPORTANTE)
============================================================

  [   1] 0x10001000  ssfPIInitialize
  [   2] 0x10001100  ssfPIShutdown
  [   3] 0x10001200  ssfPumpAuthorize
  [   4] 0x10001300  ssfPumpStop
  [   5] 0x10001400  ssfPumpGetStatus
  ... etc
```

---

## 📋 ¿Qué Información Obtienes?

### 1. Funciones Exportadas (LO MÁS IMPORTANTE)

Lista **TODAS** las funciones que puedes llamar desde tu código:

```
ssfPIInitialize         ← Ya llamaste esta!
ssfPIShutdown
ssfPumpAuthorize        ← Probablemente autoriza bomba
ssfPumpStop             ← Detiene bomba
ssfPumpGetStatus        ← Lee estado
ssfPumpGetTotalizers    ← Lee totales
ssfPriceSet             ← Cambia precio
...
```

### 2. Dependencias

Qué otras DLLs necesita:

```
KERNEL32.dll            ← Sistema Windows
MSVCR100.dll            ← Visual C++ Runtime
SSF.Tools.Library.D.dll ← Otra DLL de SSF
```

### 3. Strings Interesantes

Mensajes de error, configuración, etc.:

```
"Failed to initialize pump"
"COM port open error"
"Authorize success"
"Price updated"
```

### 4. Arquitectura

```
✓ Arquitectura: 32 bits (x86)  ← Confirma que es 32 bits
✓ Tipo: DLL
✓ Compilado: 2018-05-15 10:23:45
```

---

## 🎯 Próximos Pasos PRÁCTICOS

### 1️⃣ Ejecutar el Análisis (5 min)

```bash
pip install pefile
python analizar_dll_auto.py --all
```

Esto genera archivos JSON con TODA la información de cada DLL.

### 2️⃣ Revisar las Funciones (10 min)

Abrir los archivos `*_analysis.json` y buscar funciones que contengan:
- `Initialize` / `Init` → Inicialización
- `Authorize` → Autorizar bomba
- `Stop` / `Reset` → Control
- `Status` / `Get` → Lectura de estado
- `Price` / `Set` → Precios
- `Total` → Totalizadores

### 3️⃣ Crear Wrapper Básico (1 hora)

Con las funciones identificadas, crear wrapper simple:

```python
import ctypes

# Cargar DLL (requiere Python 32-bit)
dll = ctypes.CDLL(r"C:\...\SSF.Gilbarco.D.dll")

# Configurar función que ya sabes que existe
dll.ssfPIInitialize.argtypes = []  # Sin parámetros
dll.ssfPIInitialize.restype = ctypes.c_int

# Llamar
handle = dll.ssfPIInitialize()
print(f"Handle: 0x{handle:x}")  # 0x2c3ce01 (como tu resultado)

# Probar otras funciones...
```

### 4️⃣ Documentar el API (30 min)

Crear archivo `API_SSF_GILBARCO.md` con:
- Qué funciones encontraste
- Qué parámetros probablemente necesitan
- Qué retornan
- Orden de llamada (Initialize → Authorize → Stop → Shutdown)

---

## 💡 Ventajas de Este Enfoque

### Vs. Usar el Software Viejo
- ✅ **No depende** de que SSF esté corriendo
- ✅ **No se cae** como el software viejo
- ✅ **Control total** sobre lo que haces

### Vs. Protocolo Directo
- ✅ **Más rápido** de implementar
- ✅ **Reutiliza** código probado
- ✅ **Menos ingeniería inversa** del protocolo serial

### Vs. Wrapper Complejo
- ✅ **Solo identificas** funciones, no las implementas
- ✅ **Sin compilación** de C++
- ✅ **Portátil** (funciona en cualquier sistema)

---

## 🔧 Troubleshooting

### "pip install pefile" falla

```bash
# Actualizar pip primero
python -m pip install --upgrade pip

# Intentar de nuevo
pip install pefile
```

### Script bat no encuentra dumpbin

**Opción 1**: Instalar Visual Studio Community (gratis)
https://visualstudio.microsoft.com/downloads/

**Opción 2**: Usar el script Python (no requiere VS)
```bash
python analizar_dll_auto.py --all
```

### Script bash no funciona en WSL

```bash
# Instalar herramientas
sudo apt install binutils

# Dar permisos
chmod +x analizar_dll_linux.sh

# Ejecutar
./analizar_dll_linux.sh --all
```

---

## 📊 Comparación de Herramientas

| Herramienta | Plataforma | Requisitos | Velocidad | Detalle |
|-------------|------------|------------|-----------|---------|
| **analizar_dll_auto.py** | Todas | Python + pefile | ⚡⚡⚡ | ⭐⭐⭐⭐⭐ |
| **analizar_dll.bat** | Windows | Visual Studio | ⚡⚡ | ⭐⭐⭐⭐⭐ |
| **analizar_dll_linux.sh** | Linux/WSL | binutils | ⚡⚡⚡ | ⭐⭐⭐⭐ |
| Dependency Walker (GUI) | Windows | Ninguno | ⚡ | ⭐⭐⭐ |

**Recomendación**: Usa `analizar_dll_auto.py` (funciona en todos lados).

---

## 🎉 Resultado Final

Al terminar, tendrás:

1. **Lista completa de funciones** en cada DLL
2. **Categorización automática** (Initialize, Authorize, Status, etc.)
3. **Archivos JSON** con toda la info para análisis posterior
4. **Base para crear tu wrapper** sin adivinar nombres

---

## 📞 Siguiente Paso INMEDIATO

```bash
# EJECUTA ESTO AHORA (toma 2 minutos):
pip install pefile
python analizar_dll_auto.py --all
```

Luego revisa los archivos generados y tendrás la lista completa de funciones disponibles.

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0
