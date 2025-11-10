# Servicio REST de 32 bits para DLLs Nativas

Servicio REST API en C# compilado para **x86 (32 bits)** que puede cargar las DLLs nativas de 32 bits de Smart Ship Factory.

## ¿Por Qué Este Servicio?

Las DLLs de Smart Ship Factory son **nativas de 32 bits** (C/C++). No pueden ser cargadas directamente desde:
- ❌ Python 64-bit
- ❌ Aplicaciones .NET 64-bit
- ❌ pythonnet (espera DLLs .NET)

**Este servicio:**
- ✅ Es de 32 bits (puede cargar DLLs de 32 bits)
- ✅ Expone API REST (tu app Python 64-bit puede consumirlo)
- ✅ Usa P/Invoke para llamar funciones nativas
- ✅ Maneja la complejidad de interop con C/C++

## Arquitectura

```
┌─────────────────────────────────────┐
│   Python 64-bit (tu aplicación)     │
│   • Puede usar NumPy, pandas, etc   │
│   • No limitado a 4GB RAM           │
└────────────┬────────────────────────┘
             │ HTTP REST
             ↓
┌─────────────────────────────────────┐
│   Servicio C# 32-bit (este)         │
│   • Proceso de 32 bits              │
│   • P/Invoke a DLLs nativas         │
└────────────┬────────────────────────┘
             │ DllImport
             ↓
┌─────────────────────────────────────┐
│   DLLs Smart Ship Factory (32-bit)  │
│   • SSF.Gilbarco.D.dll              │
│   • SSF.FC.Comm.GPBox.D.dll         │
└────────────┬────────────────────────┘
             │ Serial/COM
             ↓
      [Dispensadores]
```

## Requisitos

- .NET 6.0 SDK o superior
- Windows (32 o 64 bits)
- DLLs de Smart Ship Factory

## Instalación

### 1. Instalar .NET SDK

```bash
# Descargar desde:
https://dotnet.microsoft.com/download

# O con winget:
winget install Microsoft.DotNet.SDK.6
```

### 2. Compilar para x86 (32 bits)

```bash
cd servicio_bombas_csharp_32bit

# IMPORTANTE: Usar /p:Platform=x86
dotnet build -c Release /p:Platform=x86
```

**NOTA**: Si omites `/p:Platform=x86`, se compilará para AnyCPU y fallará al cargar las DLLs.

### 3. Verificar que es 32 bits

```bash
dotnet run --no-build -c Release
```

Deberías ver:
```
Proceso: 32 bits ✓
```

Si ves "64 bits ❌", algo salió mal en la compilación.

## Configuración de DLLs

### Paso 1: Identificar funciones exportadas

Antes de usar las DLLs, necesitas saber qué funciones exportan:

```bash
# Con Visual Studio instalado:
dumpbin /EXPORTS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# O usar Dependency Walker:
# https://www.dependencywalker.com/
```

### Paso 2: Agregar declaraciones P/Invoke

Editar `PumpService32.cs`, sección `GilbarcoInterop`:

```csharp
public static class GilbarcoInterop
{
    private const string DLL_PATH = @"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll";

    // Ejemplo: Si dumpbin muestra:
    //   0001 00000F20 Initialize
    //   0002 00001A40 PumpAuthorize

    [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
    public static extern int Initialize();

    [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
    public static extern int PumpAuthorize(int pumpAddress, float amount, float volume);

    // Más funciones...
}
```

### Paso 3: Descomentar código de uso

En `PumpManager.Initialize()`, descomentar:

```csharp
try
{
    int result = GilbarcoInterop.Initialize();
    if (result == 0)
    {
        _logger.LogInformation("✓ DLL de Gilbarco inicializada");
        _dllsLoaded = true;
    }
}
catch (DllNotFoundException ex)
{
    _logger.LogError($"DLL no encontrada: {ex.Message}");
    return false;
}
```

## Uso

### Iniciar el servicio

```bash
cd servicio_bombas_csharp_32bit
dotnet run --no-build -c Release
```

Servicio disponible en: `http://localhost:5000`

### Desde Python

```python
import requests

# Verificar que el servicio es de 32 bits
response = requests.get("http://localhost:5000/api/pump/health")
print(response.json())
# Debe mostrar: "process": "32-bit"

# Autorizar bomba
response = requests.post(
    "http://localhost:5000/api/pump/authorize",
    json={
        "pumpAddress": 1,
        "amount": 50.0,
        "volume": 0
    }
)
print(response.json())
```

### Usar el cliente Python existente

```bash
# El cliente funciona igual que con el servicio de 64 bits
python cliente_servicio_bombas.py
```

## API Endpoints

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/pump/health` | Verificar estado del servicio |
| POST | `/api/pump/authorize` | Autorizar bomba |
| GET | `/api/pump/status/{id}` | Obtener estado de bomba |
| POST | `/api/pump/stop/{id}` | Detener bomba |
| POST | `/api/pump/reset/{id}` | Resetear bomba |

Documentación Swagger: `http://localhost:5000/swagger`

## Tipos de Datos en P/Invoke

### Mapeo C/C++ → C#

| C/C++ | C# |
|-------|-----|
| `int` | `int` |
| `float` | `float` |
| `double` | `double` |
| `char*` | `string` (con `CharSet.Ansi`) |
| `const char*` | `string` |
| `void*` | `IntPtr` |
| `bool` | `bool` (o `int` según convención) |
| `struct` | `struct` con `[StructLayout]` |

### Convenciones de llamada

```csharp
// C (común en DLLs de C)
[DllImport("...", CallingConvention = CallingConvention.Cdecl)]

// stdcall (común en Windows API)
[DllImport("...", CallingConvention = CallingConvention.StdCall)]

// C++ (más complejo, nombres decorados)
[DllImport("...", CallingConvention = CallingConvention.ThisCall)]
```

### Ejemplo completo de P/Invoke

```csharp
// C: int GetPumpData(int pump, PumpData* data)
[StructLayout(LayoutKind.Sequential)]
public struct PumpData
{
    public int Status;
    public float Volume;
    public float Amount;
}

[DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
public static extern int GetPumpData(int pumpAddress, ref PumpData data);

// Uso:
PumpData data = new PumpData();
int result = GilbarcoInterop.GetPumpData(1, ref data);
if (result == 0)
{
    Console.WriteLine($"Volumen: {data.Volume} L");
    Console.WriteLine($"Monto: ${data.Amount}");
}
```

## Troubleshooting

### Error: "Process is 64-bit"

**Causa**: No se compiló para x86

**Solución**:
```bash
# Limpiar
dotnet clean

# Compilar para x86
dotnet build -c Release /p:Platform=x86
```

### Error: DllNotFoundException

**Causa**: No encuentra la DLL

**Soluciones**:
1. Verificar ruta en `DLL_PATH`
2. Copiar DLL al directorio del ejecutable
3. Agregar directorio al PATH:

```csharp
// En Program.Main(), antes de builder.Build():
string dllDir = @"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps";
Environment.SetEnvironmentVariable("PATH",
    dllDir + ";" + Environment.GetEnvironmentVariable("PATH"));
```

### Error: "Unable to load DLL"

**Causa**: La DLL tiene dependencias no satisfechas

**Solución**:
1. Usar Dependency Walker para ver qué falta
2. Copiar todas las DLLs necesarias
3. Instalar Visual C++ Redistributable si es necesario

### Error: "A call to PInvoke function has unbalanced the stack"

**Causa**: CallingConvention incorrecto

**Solución**:
Probar con diferentes convenciones:
```csharp
// Probar primero Cdecl
CallingConvention = CallingConvention.Cdecl

// Si falla, probar StdCall
CallingConvention = CallingConvention.StdCall
```

## Deployment

### Como servicio Windows

```bash
# Publicar
dotnet publish -c Release /p:Platform=x86 -o ./publish

# Instalar como servicio con NSSM
nssm install PumpService32 "C:\path\to\publish\PumpService32.exe"
nssm start PumpService32
```

### Auto-inicio con Windows

Crear `startup.bat`:
```batch
@echo off
cd /d "C:\path\to\servicio_bombas_csharp_32bit"
dotnet run --no-build -c Release
pause
```

Agregar al inicio de Windows:
```
Win+R → shell:startup
Copiar startup.bat
```

## Recursos

- **P/Invoke Tutorial**: https://docs.microsoft.com/dotnet/standard/native-interop/pinvoke
- **Dependency Walker**: https://www.dependencywalker.com/
- **dumpbin docs**: https://docs.microsoft.com/cpp/build/reference/dumpbin-reference

## Notas Importantes

1. **Siempre compila para x86**: No uses AnyCPU ni x64
2. **CallingConvention importa**: Cdecl para C, StdCall para WinAPI
3. **Manejo de strings**: Usa `CharSet.Ansi` para char* de C
4. **Memory leaks**: Libera memoria con `Marshal.FreeCoTaskMem()` si es necesario
5. **Thread safety**: Las DLLs C pueden no ser thread-safe

## Ejemplo Completo

Ver `PumpService32.cs` para un ejemplo completo funcional (en modo simulación).

Una vez que tengas las funciones reales de las DLLs:
1. Agregar `[DllImport]` en `GilbarcoInterop`
2. Descomentar código en `PumpManager`
3. Compilar y probar

---

**Última actualización**: Noviembre 2025
**Versión**: 1.0
