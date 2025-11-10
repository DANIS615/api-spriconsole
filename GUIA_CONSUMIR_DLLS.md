# GUÍA COMPLETA: CÓMO CONSUMIR DLLs DE OTRO PROGRAMA

## Tu Situación Actual

- ✅ Tienes Smart Ship Factory (SSF) con DLLs funcionales
- ✅ Las DLLs controlan dispensadores Gilbarco/GPBox correctamente
- ❌ El programa viejo se cae (inestable)
- 🎯 **OBJETIVO**: Crear tu propio software reutilizando las DLLs

---

## 📦 DLLs Disponibles en Tu Sistema

```
Smart Ship Factory/Spirit/bin/pumps/
├── SSF.Gilbarco.D.dll        ← Control de dispensadores Gilbarco
├── SSF.Wayne.D.dll            ← Control de dispensadores Wayne
└── SSF.FC.Pump.Bogus.D.dll   ← Simulador de pruebas

Smart Ship Factory/Spirit/bin/communications/
├── SSF.FC.Comm.GPBox.D.dll   ← Comunicación con GPBox (CEM-44)
├── SSF.FC.Comm.Serial.D.dll  ← Comunicación serial directa
├── SSF.FC.Comm.TCP.D.dll     ← Comunicación TCP/IP
└── SSF.FC.Comm.Bogus.D.dll   ← Simulador de comunicación

Smart Ship Factory/Spirit/lib/
├── SSF.PlugInServer.D.dll    ← Sistema de plugins
├── SSF.Router.Message.D.dll  ← Enrutador de mensajes
└── SSF.Tools.Library.D.dll   ← Herramientas generales
```

---

## 🔍 PASO 1: Identificar el Tipo de DLL

Primero necesitas saber si las DLLs son **.NET** (C#) o **Nativas** (C/C++):

### Opción A: Usar herramientas en Windows

```batch
REM 1. Instalar .NET Reflector o dnSpy (GRATIS)
REM    Descargar desde: https://github.com/dnSpy/dnSpy

REM 2. Abrir la DLL con dnSpy
REM    Si se abre y ves código C#, es .NET
REM    Si no se abre o ves error, es nativa (C/C++)

REM 3. Usar dumpbin (viene con Visual Studio)
dumpbin /HEADERS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"
REM Buscar: "CLR Runtime Header" → Si lo tiene, es .NET
```

### Opción B: En tu entorno Linux actual

```bash
# Ya verificamos y es PE32 (Windows DLL)
# Para saber si es .NET, necesitamos más análisis
file "Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll"
```

---

## 📋 OPCIÓN 1: Usar DLLs .NET desde Python (RECOMENDADO)

Si las DLLs son .NET (C#), esta es la mejor opción.

### Instalación

```bash
pip install pythonnet
```

### Ejemplo: Consumir SSF.Gilbarco.D.dll

```python
"""
Ejemplo de uso de DLL .NET desde Python
"""
import clr
import sys
from pathlib import Path

# 1. Agregar ruta de las DLLs
dll_path = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps"
sys.path.append(dll_path)

# 2. Cargar DLLs necesarias
clr.AddReference("SSF.Gilbarco.D")
clr.AddReference("SSF.FC.Comm.GPBox.D")

# 3. Importar namespaces
from SSF.Gilbarco import *
from SSF.FC.Comm.GPBox import *

# 4. Crear instancia del controlador
try:
    pump_controller = GilbarcoPump()  # Nombre puede variar

    # 5. Configurar comunicación
    pump_controller.Initialize()
    pump_controller.SetCommunication("COM1", 9600)

    # 6. Comandos básicos
    status = pump_controller.GetStatus(pump_address=1)
    print(f"Estado de bomba: {status}")

    # 7. Autorizar despacho
    success = pump_controller.Authorize(
        pump_address=1,
        preset_amount=50.00,
        preset_volume=0
    )
    print(f"Autorización: {'OK' if success else 'FALLO'}")

except Exception as e:
    print(f"Error: {e}")
    print("Posibles causas:")
    print("- La DLL no es .NET")
    print("- Faltan dependencias")
    print("- Nombres de clases incorrectos")
```

### Inspeccionar clases y métodos disponibles

```python
import clr
import sys

sys.path.append(r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps")
clr.AddReference("SSF.Gilbarco.D")

# Importar el ensamblado
import SSF.Gilbarco as gilbarco_dll

# Listar todos los tipos (clases) disponibles
print("="*60)
print("CLASES DISPONIBLES EN SSF.Gilbarco.D.dll")
print("="*60)

import System
assembly = clr.System.Reflection.Assembly.Load("SSF.Gilbarco.D")

for tipo in assembly.GetTypes():
    print(f"\n📦 Clase: {tipo.Name}")
    print(f"   Namespace: {tipo.Namespace}")

    # Listar métodos públicos
    print("   Métodos:")
    for metodo in tipo.GetMethods():
        if not metodo.Name.startswith("_"):
            parametros = ", ".join([p.ParameterType.Name for p in metodo.GetParameters()])
            print(f"      - {metodo.Name}({parametros})")
```

---

## 📋 OPCIÓN 2: Usar DLLs Nativas (C/C++) desde Python

Si las DLLs son nativas (C/C++), usa `ctypes`.

### Paso 1: Descubrir funciones exportadas

```bash
# En Windows con Visual Studio instalado:
dumpbin /EXPORTS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# En Linux con wine:
wine dumpbin /EXPORTS "Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll"

# Alternativa: Dependency Walker
# Descargar desde: https://www.dependencywalker.com/
```

### Paso 2: Cargar y usar la DLL

```python
"""
Ejemplo de uso de DLL nativa desde Python con ctypes
"""
import ctypes
from ctypes import *

# Cargar la DLL
dll_path = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

try:
    gilbarco_dll = ctypes.CDLL(dll_path)
    print(f"✓ DLL cargada: {dll_path}")

except OSError as e:
    print(f"✗ Error al cargar DLL: {e}")
    print("\nPosibles causas:")
    print("- La DLL es .NET (usa pythonnet en su lugar)")
    print("- Faltan dependencias (otras DLLs)")
    print("- Python 64-bit vs DLL 32-bit (o viceversa)")
    exit(1)

# ========================================
# Ejemplo: Función hipotética "PumpAuthorize"
# ========================================

# Definir la firma de la función
# int PumpAuthorize(int pump_address, float amount, float volume)
gilbarco_dll.PumpAuthorize.argtypes = [
    ctypes.c_int,    # pump_address
    ctypes.c_float,  # amount
    ctypes.c_float   # volume
]
gilbarco_dll.PumpAuthorize.restype = ctypes.c_int  # Retorna int (0=error, 1=ok)

# Llamar a la función
resultado = gilbarco_dll.PumpAuthorize(
    1,      # pump_address = 1
    50.0,   # amount = $50.00
    0.0     # volume = sin límite
)

if resultado == 1:
    print("✓ Bomba autorizada")
else:
    print("✗ Error al autorizar bomba")

# ========================================
# Ejemplo: Función que retorna string
# ========================================

# char* GetPumpStatus(int pump_address)
gilbarco_dll.GetPumpStatus.argtypes = [ctypes.c_int]
gilbarco_dll.GetPumpStatus.restype = ctypes.c_char_p

status = gilbarco_dll.GetPumpStatus(1)
print(f"Estado: {status.decode('utf-8')}")

# ========================================
# Ejemplo: Función con estructura
# ========================================

class PumpData(ctypes.Structure):
    _fields_ = [
        ("address", ctypes.c_int),
        ("status", ctypes.c_int),
        ("volume", ctypes.c_float),
        ("amount", ctypes.c_float),
        ("price", ctypes.c_float)
    ]

# int GetPumpData(int pump_address, PumpData* data)
gilbarco_dll.GetPumpData.argtypes = [
    ctypes.c_int,
    ctypes.POINTER(PumpData)
]
gilbarco_dll.GetPumpData.restype = ctypes.c_int

# Llamar
pump_data = PumpData()
resultado = gilbarco_dll.GetPumpData(1, ctypes.byref(pump_data))

if resultado == 1:
    print(f"Dirección: {pump_data.address}")
    print(f"Estado: {pump_data.status}")
    print(f"Volumen: {pump_data.volume} L")
    print(f"Monto: ${pump_data.amount}")
    print(f"Precio: ${pump_data.price}/L")
```

---

## 📋 OPCIÓN 3: Crear Servicio Intermedio en C# (MÁS ROBUSTO)

Esta es la opción más profesional: crear un pequeño servicio en C# que use las DLLs y exponer una API REST/WebSocket.

### Arquitectura

```
┌─────────────────────────────────────────────────────┐
│              TU APLICACIÓN PYTHON                   │
│                                                     │
│  import requests                                    │
│  response = requests.post(                          │
│      "http://localhost:5000/pump/authorize",        │
│      json={"pump": 1, "amount": 50}                 │
│  )                                                  │
└────────────────┬────────────────────────────────────┘
                 │ HTTP/REST
                 ▼
┌─────────────────────────────────────────────────────┐
│        SERVICIO C# (ASP.NET Core / Console)         │
│                                                     │
│  using SSF.Gilbarco;                                │
│  using SSF.FC.Comm.GPBox;                           │
│                                                     │
│  var pump = new GilbarcoPump();                     │
│  pump.Initialize();                                 │
│  pump.Authorize(pumpAddress, amount);               │
└────────────────┬────────────────────────────────────┘
                 │ Referencias directas
                 ▼
┌─────────────────────────────────────────────────────┐
│            DLLs DE SMART SHIP FACTORY               │
│                                                     │
│  SSF.Gilbarco.D.dll                                 │
│  SSF.FC.Comm.GPBox.D.dll                            │
│  SSF.FC.Comm.Serial.D.dll                           │
└─────────────────────────────────────────────────────┘
```

### Paso 1: Crear servicio C#

```csharp
// PumpService.cs
using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.AspNetCore.Mvc;

// Agregar referencias a las DLLs de SSF
using SSF.Gilbarco;
using SSF.FC.Comm.GPBox;

namespace PumpControlService
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            builder.Services.AddControllers();

            var app = builder.Build();
            app.MapControllers();

            app.Run("http://localhost:5000");
        }
    }

    // Controlador de API
    [ApiController]
    [Route("api/pump")]
    public class PumpController : ControllerBase
    {
        private static GilbarcoPump pumpController;

        static PumpController()
        {
            // Inicializar controlador de bombas
            pumpController = new GilbarcoPump();
            pumpController.Initialize();
            pumpController.SetCommunication("COM1", 9600);
        }

        [HttpPost("authorize")]
        public IActionResult Authorize([FromBody] AuthorizeRequest request)
        {
            try
            {
                bool success = pumpController.Authorize(
                    request.PumpAddress,
                    request.Amount,
                    request.Volume
                );

                return Ok(new { success = success });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }

        [HttpGet("status/{pumpAddress}")]
        public IActionResult GetStatus(int pumpAddress)
        {
            try
            {
                var status = pumpController.GetStatus(pumpAddress);

                return Ok(new
                {
                    pumpAddress = pumpAddress,
                    status = status.ToString()
                });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }

        [HttpPost("stop/{pumpAddress}")]
        public IActionResult Stop(int pumpAddress)
        {
            try
            {
                bool success = pumpController.Stop(pumpAddress);
                return Ok(new { success = success });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }

        [HttpPost("reset/{pumpAddress}")]
        public IActionResult Reset(int pumpAddress)
        {
            try
            {
                bool success = pumpController.Reset(pumpAddress);
                return Ok(new { success = success });
            }
            catch (Exception ex)
            {
                return BadRequest(new { error = ex.Message });
            }
        }
    }

    public class AuthorizeRequest
    {
        public int PumpAddress { get; set; }
        public float Amount { get; set; }
        public float Volume { get; set; }
    }
}
```

### Paso 2: Archivo de proyecto (.csproj)

```xml
<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <TargetFramework>net6.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <!-- Referencias a las DLLs de Smart Ship Factory -->
    <Reference Include="SSF.Gilbarco.D">
      <HintPath>C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll</HintPath>
    </Reference>
    <Reference Include="SSF.FC.Comm.GPBox.D">
      <HintPath>C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll</HintPath>
    </Reference>
    <Reference Include="SSF.FC.Comm.Serial.D">
      <HintPath>C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.Serial.D.dll</HintPath>
    </Reference>
  </ItemGroup>

  <ItemGroup>
    <PackageReference Include="Microsoft.AspNetCore.App" />
  </ItemGroup>
</Project>
```

### Paso 3: Cliente Python para consumir la API

```python
"""
Cliente Python para consumir el servicio de bombas
"""
import requests
import json

class PumpServiceClient:
    """Cliente para el servicio de control de bombas"""

    def __init__(self, base_url="http://localhost:5000"):
        self.base_url = base_url

    def authorize_pump(self, pump_address, amount=0, volume=0):
        """Autorizar bomba"""
        url = f"{self.base_url}/api/pump/authorize"
        data = {
            "pumpAddress": pump_address,
            "amount": amount,
            "volume": volume
        }

        response = requests.post(url, json=data)
        return response.json()

    def get_status(self, pump_address):
        """Obtener estado de bomba"""
        url = f"{self.base_url}/api/pump/status/{pump_address}"
        response = requests.get(url)
        return response.json()

    def stop_pump(self, pump_address):
        """Detener bomba"""
        url = f"{self.base_url}/api/pump/stop/{pump_address}"
        response = requests.post(url)
        return response.json()

    def reset_pump(self, pump_address):
        """Resetear bomba"""
        url = f"{self.base_url}/api/pump/reset/{pump_address}"
        response = requests.post(url)
        return response.json()


# USO DEL CLIENTE
if __name__ == "__main__":
    client = PumpServiceClient()

    # Obtener estado
    print("Consultando estado de bomba 1...")
    status = client.get_status(1)
    print(f"Estado: {status}")

    # Autorizar con preset de $50
    print("\nAutorizando bomba 1 con $50...")
    result = client.authorize_pump(1, amount=50.0)
    print(f"Resultado: {result}")

    # Después de que termine el despacho
    print("\nReseteando bomba...")
    result = client.reset_pump(1)
    print(f"Resultado: {result}")
```

**VENTAJAS:**
- ✅ Desacoplamiento total
- ✅ Fácil de mantener
- ✅ Puede consumirse desde cualquier lenguaje
- ✅ Fácil de escalar (agregar más endpoints)
- ✅ Logs centralizados en el servicio

---

## 📋 OPCIÓN 4: Reimplementar Protocolo (RECOMENDADO A LARGO PLAZO)

Ya tienes `gilbarco_pump_controller.py` que implementa el protocolo directamente.

**VENTAJAS:**
- ✅ No dependes del software viejo
- ✅ Control total sobre la comunicación
- ✅ Más fácil de debuggear
- ✅ Multiplataforma (Linux, Windows)
- ✅ Mejor performance (sin capas intermedias)

**Ya tienes implementado:**
- ✅ Conexión serial
- ✅ Construcción de mensajes Gilbarco
- ✅ Checksum y validación
- ✅ Comandos: STATUS, AUTHORIZE, STOP, RESET, TOTALIZERS

**Lo que faltaría:**
- ❓ Comando READ_PRICE (leer precios)
- ❓ Comando WRITE_PRICE (escribir precios)
- ❓ Manejo de eventos en tiempo real

---

## 🎯 RECOMENDACIONES

### Para Desarrollo y Pruebas

1. **PRIMERO**: Usa OPCIÓN 1 (pythonnet)
   - Más rápido de implementar
   - Reutilizas código probado
   - Ideal para MVP (Producto Mínimo Viable)

### Para Producción a Corto Plazo

2. **DESPUÉS**: Implementa OPCIÓN 3 (Servicio C#)
   - Más robusto y mantenible
   - Desacoplamiento
   - Logs centralizados

### Para Producción a Largo Plazo

3. **FINALMENTE**: Migra a OPCIÓN 4 (Protocolo directo)
   - Independencia total
   - Mejor control
   - No depende de software propietario

---

## 🔧 PRÓXIMOS PASOS

### 1. Determinar tipo de DLL

```bash
# Si tienes Windows con Visual Studio:
dumpbin /HEADERS "C:\ruta\SSF.Gilbarco.D.dll" | findstr "CLR"

# Si aparece "CLR Runtime Header", es .NET
# Si no aparece, es nativa (C/C++)
```

### 2. Probar carga de DLL

**Si es .NET:**
```bash
pip install pythonnet
python probar_dll_dotnet.py
```

**Si es nativa:**
```bash
python usar_dll_ssf.py  # Ya lo tienes
```

### 3. Inspeccionar clases y métodos

Usa el script que te proporcioné arriba para listar:
- Clases disponibles
- Métodos públicos
- Parámetros requeridos

### 4. Documentar API de las DLLs

Crea un documento con:
- Clase principal
- Métodos para autorizar, detener, leer estado
- Parámetros requeridos
- Códigos de error

---

## ⚠️ PROBLEMAS COMUNES Y SOLUCIONES

### Problema 1: DLL no carga

```
OSError: [WinError 126] No se puede encontrar el módulo especificado
```

**Causa**: Faltan dependencias (otras DLLs)

**Solución**:
```python
import os
import sys

# Agregar directorio de DLLs al PATH
dll_dir = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps"
comm_dir = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications"
lib_dir = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\lib"

os.environ['PATH'] = f"{dll_dir};{comm_dir};{lib_dir};" + os.environ['PATH']

# Ahora intentar cargar
import clr
clr.AddReference("SSF.Gilbarco.D")
```

### Problema 2: Python 64-bit vs DLL 32-bit

```
OSError: [WinError 193] %1 no es una aplicación Win32 válida
```

**Solución**: Usar Python del mismo bitness que la DLL
```bash
# Ver bitness de Python
python -c "import struct; print(struct.calcsize('P') * 8)"
# Si muestra 64, es Python 64-bit
# Si muestra 32, es Python 32-bit

# Instalar Python 32-bit si la DLL es 32-bit
```

### Problema 3: No sabes qué métodos llamar

**Solución**: Usa herramientas de inspección
```bash
# Descargar dnSpy (gratis)
# https://github.com/dnSpy/dnSpy

# Abrir la DLL y ver:
# - Namespaces
# - Clases
# - Métodos públicos
# - Propiedades
```

---

## 📚 RECURSOS ADICIONALES

- **pythonnet**: https://github.com/pythonnet/pythonnet
- **dnSpy**: https://github.com/dnSpy/dnSpy
- **Dependency Walker**: https://www.dependencywalker.com/
- **Tu documentación**: PROTOCOLO_GILBARCO.md, DOCUMENTACION_GPBOX_SISTEMA.md

---

## 💡 CONCLUSIÓN

**Mi recomendación para tu caso:**

1. **Semana 1-2**: Usa pythonnet (OPCIÓN 1) para hacer un prototipo rápido
2. **Mes 1**: Si funciona bien, crea el servicio C# (OPCIÓN 3) para robustez
3. **Mes 2-3**: En paralelo, termina de implementar el protocolo directo (OPCIÓN 4)
4. **Mes 4+**: Migra completamente a protocolo directo, elimina dependencia de DLLs viejas

De esta forma:
- ✅ Tienes algo funcionando rápido
- ✅ No dependes 100% del software viejo
- ✅ Vas hacia la independencia total
- ✅ Minimizas riesgo

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0
