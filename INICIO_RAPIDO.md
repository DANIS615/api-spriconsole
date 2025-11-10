# 🚀 INICIO RÁPIDO - Usar DLLs de Smart Ship Factory

## ¿Qué Archivos Usar Según Tu Caso?

### 📊 Tabla de Decisión

| Tu Situación | Archivo a Usar | Tiempo | Dificultad |
|-------------|----------------|--------|------------|
| Quiero **probar rápido** si puedo usar las DLLs | `probar_dll_dotnet.py` | 5 min | Fácil |
| Las DLLs son **.NET** y quiero usarlas desde Python | `probar_dll_dotnet.py` + Ver OPCIÓN 1 en GUIA | 1 hora | Media |
| Las DLLs son **nativas** (C/C++) | `usar_dll_ssf.py` + Ver OPCIÓN 2 en GUIA | 2 horas | Difícil |
| Quiero **robustez** y desacoplamiento | `servicio_bombas_csharp/` + Ver OPCIÓN 3 | 1 día | Media |
| Quiero **independencia total** del software viejo | `gilbarco_pump_controller.py` + Ver OPCIÓN 4 | 1 semana | Alta |

---

## 🎯 OPCIÓN 1: Probar DLLs .NET (RECOMENDADO PARA EMPEZAR)

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
| **GUIA_CONSUMIR_DLLS.md** | Guía completa con todas las opciones y ejemplos |
| **PROTOCOLO_GILBARCO.md** | Documentación del protocolo Two-Wire |
| **DOCUMENTACION_GPBOX_SISTEMA.md** | Configuración del sistema CEM-44 |
| **servicio_bombas_csharp/README.md** | Instrucciones del servicio C# |

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
→ Usar **OPCIÓN 1** (pythonnet) o **OPCIÓN 3** (Servicio C#)

**Para Producción a Largo Plazo:**
→ Migrar a **OPCIÓN 4** (Protocolo directo)

De esta forma:
- ✅ Tienes algo funcionando rápido
- ✅ No dependes 100% del software viejo
- ✅ Vas hacia la independencia total
- ✅ Minimizas riesgos

---

## 📞 PRÓXIMOS PASOS

1. **Leer** GUIA_CONSUMIR_DLLS.md completa
2. **Ejecutar** probar_dll_dotnet.py
3. **Decidir** qué opción usar según tu caso
4. **Implementar** siguiendo los ejemplos
5. **Testear** en ambiente de desarrollo
6. **Deployar** cuando esté estable

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0

¡Éxito con tu proyecto! 🚀
