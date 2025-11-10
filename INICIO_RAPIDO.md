# 🚀 INICIO RÁPIDO - Usar DLLs de Smart Ship Factory

## ⚠️ IMPORTANTE: Las DLLs son de 32 bits

**CONFIRMADO**: Las DLLs de Smart Ship Factory son:
- ✅ Nativas de 32 bits (C/C++)
- ❌ NO son .NET
- ❌ NO funcionan con Python 64-bit directamente

## ¿Qué Archivos Usar Según Tu Caso?

### 📊 Tabla de Decisión

| Tu Situación | Archivo a Usar | Tiempo | Dificultad |
|-------------|----------------|--------|------------|
| Tengo Python **32-bit** instalado | `usar_dll_32bit.py` + Ver SOLUCION_DLL_32BITS.md | 1 hora | Media |
| Mi Python es **64-bit** y quiero robustez | `servicio_bombas_csharp_32bit/` + Ver OPCIÓN B | 3 horas | Media |
| Quiero **independencia total** del software viejo | `gilbarco_pump_controller.py` + Ver OPCIÓN 4 | 1 semana | Alta |
| Solo quiero **entender** las DLLs | Ver SOLUCION_DLL_32BITS.md | 15 min | Fácil |

---

## 🎯 OPCIÓN A: Python 32-bit + ctypes (MÁS DIRECTO)

**Ventajas**: Acceso directo a las DLLs, no requiere servicios intermedios
**Desventajas**: Limitado a 4GB de RAM, necesitas Python 32-bit

### Paso 1: Verificar tu Python

```bash
# Ver si tu Python es 32 o 64 bits
python -c "import struct; print('Python', struct.calcsize('P') * 8, 'bits')"
```

### Paso 2: Si es 64 bits, instalar Python 32-bit

**Descargar**:
- https://www.python.org/downloads/windows/
- Buscar: `Windows installer (32-bit)`

**Instalar**:
- ✅ Marcar "Add Python to PATH"
- 📝 Recordar ruta (ej: `C:\Python310-32\`)

**Crear launcher**:
```batch
# Crear archivo python32.bat:
@echo off
"C:\Python310-32\python.exe" %*
```

### Paso 3: Ejecutar el script

```bash
# Con Python 32-bit:
"C:\Python310-32\python.exe" usar_dll_32bit.py

# O si creaste python32.bat:
python32 usar_dll_32bit.py
```

Este script:
- ✅ Verifica que estás usando Python 32-bit
- ✅ Intenta cargar las DLLs
- ✅ Busca funciones comunes
- ✅ Te muestra cómo usarlas

**Ver más**: SOLUCION_DLL_32BITS.md → OPCIÓN A

---

## 🎯 OPCIÓN B: Servicio C# 32-bit + REST API (RECOMENDADO)

**Ventajas**: Tu app Python puede ser 64-bit, más robusto, escalable
**Desventajas**: Requiere .NET y compilación

### Arquitectura

```
Python 64-bit → HTTP → Servicio C# 32-bit → DLLs 32-bit → Dispensadores
```

### Paso 1: Instalar .NET SDK

```bash
# Descargar desde:
https://dotnet.microsoft.com/download

# O con winget:
winget install Microsoft.DotNet.SDK.6
```

### Paso 2: Compilar para x86 (32 bits)

```bash
cd servicio_bombas_csharp_32bit

# IMPORTANTE: Usar /p:Platform=x86
dotnet build -c Release /p:Platform=x86
```

### Paso 3: Configurar funciones de DLL

1. Usar `dumpbin /EXPORTS` para ver funciones
2. Agregar `[DllImport]` en `PumpService32.cs`
3. Descomentar código de uso

### Paso 4: Ejecutar el servicio

```bash
dotnet run --no-build -c Release
```

Debería mostrar:
```
Proceso: 32 bits ✓
Servidor iniciado en: http://localhost:5000
```

### Paso 5: Usar desde Python (64-bit)

```bash
# Tu Python puede ser 64-bit ahora
python cliente_servicio_bombas.py
```

**Ver más**: servicio_bombas_csharp_32bit/README.md

---

## 🎯 OPCIÓN 1: Probar DLLs .NET (NO APLICABLE)

**Ventajas**: Rápido, reutiliza código probado
**Desventajas**: Dependes del software viejo

### Paso 1: Instalar pythonnet

```bash
pip install pythonnet
```

### Paso 2: Probar las DLLs

```bash
python probar_dll_dotnet.py
```

Este script:
- ✅ Detecta automáticamente las DLLs disponibles
- ✅ Intenta cargarlas
- ✅ Muestra clases y métodos disponibles
- ✅ Te dice si son .NET o nativas

### Paso 3: Si funciona

Consulta la **GUIA_CONSUMIR_DLLS.md → OPCIÓN 1** para ver código de ejemplo.

---

## 🎯 OPCIÓN 2: Usar DLLs Nativas con ctypes

**Ventajas**: No requiere pythonnet
**Desventajas**: Muy complejo, necesitas saber las firmas de funciones

### Paso 1: Identificar funciones exportadas

Necesitas herramientas de Windows:

```batch
REM En Windows con Visual Studio:
dumpbin /EXPORTS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

REM O descargar Dependency Walker:
REM https://www.dependencywalker.com/
```

### Paso 2: Usar el script base

```bash
python usar_dll_ssf.py
```

### Paso 3: Adaptar el código

Consulta la **GUIA_CONSUMIR_DLLS.md → OPCIÓN 2** para ejemplos detallados.

---

## 🎯 OPCIÓN 3: Servicio REST en C# (RECOMENDADO PARA PRODUCCIÓN)

**Ventajas**: Robusto, desacoplado, mantenible
**Desventajas**: Requiere .NET y algo de C#

### Arquitectura

```
Python App → HTTP REST → C# Service → DLLs SSF → Dispensadores
```

### Paso 1: Instalar .NET SDK

```bash
# Windows:
winget install Microsoft.DotNet.SDK.6

# O descargar desde:
# https://dotnet.microsoft.com/download
```

### Paso 2: Configurar el proyecto

```bash
cd servicio_bombas_csharp

# Editar PumpService.csproj y descomentar las referencias a las DLLs

# Compilar
dotnet build
```

### Paso 3: Ejecutar el servicio

```bash
dotnet run
```

El servicio se iniciará en `http://localhost:5000`

### Paso 4: Usar desde Python

```bash
python cliente_servicio_bombas.py
```

O directamente con requests:

```python
import requests

# Autorizar bomba
response = requests.post(
    "http://localhost:5000/api/pump/authorize",
    json={"pumpAddress": 1, "amount": 50.0, "volume": 0}
)
print(response.json())
```

Ver más en: **servicio_bombas_csharp/README.md**

---

## 🎯 OPCIÓN 4: Protocolo Directo (RECOMENDADO A LARGO PLAZO)

**Ventajas**: Independencia total, mejor control
**Desventajas**: Requiere implementar todo el protocolo

### Ya tienes implementado

El archivo `gilbarco_pump_controller.py` ya tiene:
- ✅ Conexión serial
- ✅ Protocolo Gilbarco Two-Wire
- ✅ Comandos básicos (STATUS, AUTHORIZE, STOP, RESET, TOTALIZERS)

### Usar directamente

```bash
python gilbarco_pump_controller.py
```

O importar en tu código:

```python
from gilbarco_pump_controller import GilbarcoPumpController

# Crear controlador
controller = GilbarcoPumpController(port='COM1', baudrate=9600)

# Conectar
if controller.connect():
    # Autorizar bomba 1 con $50
    controller.authorize_pump(1, preset_amount=50.0)

    # Leer estado
    status = controller.request_status(1)
    print(f"Estado: {status}")

    # Desconectar
    controller.disconnect()
```

Ver documentación completa en: **PROTOCOLO_GILBARCO.md**

---

## 🗺️ HOJA DE RUTA RECOMENDADA

### Semana 1-2: Prototipo Rápido
```
1. Ejecutar probar_dll_dotnet.py
2. Si funciona → Usar OPCIÓN 1 (pythonnet)
3. Crear script básico para autorizar/leer estado
```

### Mes 1: MVP Estable
```
4. Implementar OPCIÓN 3 (Servicio C#)
5. Migrar código Python para usar el servicio
6. Testear en ambiente de desarrollo
```

### Mes 2-3: Hacia la Independencia
```
7. Terminar implementación OPCIÓN 4 (Protocolo directo)
8. Agregar comandos faltantes (READ_PRICE, WRITE_PRICE)
9. Testear en paralelo con el servicio C#
```

### Mes 4+: Producción
```
10. Migrar completamente a OPCIÓN 4
11. Eliminar dependencia de DLLs viejas
12. Sistema 100% bajo tu control
```

---

## 📚 DOCUMENTACIÓN COMPLETA

| Documento | Descripción |
|-----------|-------------|
| **SOLUCION_DLL_32BITS.md** | ⭐ LEER PRIMERO: Solución específica para DLLs de 32 bits |
| **servicio_bombas_csharp_32bit/README.md** | Servicio C# de 32 bits (RECOMENDADO) |
| **GUIA_CONSUMIR_DLLS.md** | Guía general con todas las opciones |
| **PROTOCOLO_GILBARCO.md** | Documentación del protocolo Two-Wire |
| **DOCUMENTACION_GPBOX_SISTEMA.md** | Configuración del sistema CEM-44 |

---

## 🆘 PROBLEMAS COMUNES

### pythonnet no instala

```bash
# Windows: Instalar Visual C++ Build Tools
# https://visualstudio.microsoft.com/visual-cpp-build-tools/

# O usar wheel precompilado:
pip install --upgrade pip
pip install pythonnet
```

### DLLs no cargan

```python
# Agregar directorios al PATH
import os
os.environ['PATH'] = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps;" + os.environ['PATH']
```

### Servicio C# no compila

```bash
# Verificar .NET instalado
dotnet --version

# Debe ser 6.0 o superior
```

### Puerto COM no abre

```bash
# Verificar que no esté en uso
# Cerrar otros programas (PumpService, CEM-44)

# En Windows, ver puertos disponibles:
# Administrador de Dispositivos → Puertos (COM y LPT)
```

---

## 💡 RECOMENDACIÓN FINAL

**Para Desarrollo Inmediato:**
→ Usar **OPCIÓN B** (Servicio C# 32-bit)
→ O **OPCIÓN A** si tienes Python 32-bit

**Para Producción a Largo Plazo:**
→ Migrar a **OPCIÓN 4** (Protocolo directo)

De esta forma:
- ✅ Tienes algo funcionando rápido
- ✅ No dependes 100% del software viejo
- ✅ Vas hacia la independencia total
- ✅ Minimizas riesgos

---

## 📞 PRÓXIMOS PASOS

1. **Leer** SOLUCION_DLL_32BITS.md (15 minutos)
2. **Decidir** entre OPCIÓN A (Python 32-bit) u OPCIÓN B (Servicio C# 32-bit)
3. **Identificar** funciones de las DLLs con dumpbin o Dependency Walker
4. **Implementar** siguiendo los ejemplos
5. **Testear** en ambiente de desarrollo
6. **Deployar** cuando esté estable

### ⚡ Para Empezar AHORA

**Quiero algo rápido:**
```bash
# 1. Instalar Python 32-bit
# 2. Ejecutar:
"C:\Python310-32\python.exe" usar_dll_32bit.py
```

**Quiero algo robusto:**
```bash
cd servicio_bombas_csharp_32bit
dotnet build -c Release /p:Platform=x86
dotnet run --no-build -c Release
```

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0

¡Éxito con tu proyecto! 🚀
