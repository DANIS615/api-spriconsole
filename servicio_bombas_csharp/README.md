# Servicio de Control de Bombas en C#

Servicio REST API en C# que expone las funcionalidades de las DLLs de Smart Ship Factory a través de HTTP.

## Arquitectura

```
Python Application
    ↓ HTTP/REST
C# Service (PumpService)
    ↓ DLL References
Smart Ship Factory DLLs
    ↓ Serial/GPBox
Dispensadores Gilbarco
```

## Requisitos

- .NET 6.0 SDK o superior
- DLLs de Smart Ship Factory instaladas en `C:\Windows\CEM44\Smart Ship Factory`

## Instalación

### 1. Instalar .NET SDK

```bash
# Descargar desde: https://dotnet.microsoft.com/download
# O usar winget en Windows:
winget install Microsoft.DotNet.SDK.6
```

### 2. Configurar referencias a DLLs

Editar `PumpService.csproj` y descomentar las referencias a las DLLs de SSF.

### 3. Compilar

```bash
cd servicio_bombas_csharp
dotnet build
```

## Uso

### Iniciar el servicio

```bash
dotnet run
```

El servicio se iniciará en `http://localhost:5000`

### Endpoints disponibles

#### 1. Health Check
```bash
GET http://localhost:5000/api/pump/health
```

#### 2. Autorizar bomba
```bash
POST http://localhost:5000/api/pump/authorize
Content-Type: application/json

{
  "pumpAddress": 1,
  "amount": 50.00,
  "volume": 0
}
```

#### 3. Obtener estado
```bash
GET http://localhost:5000/api/pump/status/1
```

#### 4. Detener bomba
```bash
POST http://localhost:5000/api/pump/stop/1
```

#### 5. Resetear bomba
```bash
POST http://localhost:5000/api/pump/reset/1
```

#### 6. Obtener totalizadores
```bash
GET http://localhost:5000/api/pump/totalizers/1
```

## Cliente Python

```python
import requests

# Autorizar bomba
response = requests.post(
    "http://localhost:5000/api/pump/authorize",
    json={
        "pumpAddress": 1,
        "amount": 50.00,
        "volume": 0
    }
)
print(response.json())

# Obtener estado
response = requests.get("http://localhost:5000/api/pump/status/1")
print(response.json())
```

## Documentación Swagger

Acceder a `http://localhost:5000/swagger` para ver la documentación interactiva.

## Configuración

### Cambiar puerto

Editar `Program.cs`:

```csharp
app.Run("http://localhost:5000");  // Cambiar puerto aquí
```

### Configurar puerto serial

Editar `PumpManager.Initialize()`:

```csharp
_communication.Initialize("COM1", 9600);  // Cambiar COM y baudrate
```

## Desarrollo

### Agregar nuevos endpoints

1. Agregar método en `IPumpManager`
2. Implementar en `PumpManager`
3. Crear endpoint en `PumpController`

### Logs

Los logs se muestran en consola. Para logs persistentes, configurar en `appsettings.json`:

```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  }
}
```

## Deployment

### Como servicio Windows

```bash
# Publicar
dotnet publish -c Release -o ./publish

# Instalar como servicio (requiere sc.exe o NSSM)
sc create PumpControlService binPath="C:\path\to\PumpService.exe"
```

### Docker (opcional)

```dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY publish/ .
EXPOSE 5000
ENTRYPOINT ["dotnet", "PumpService.dll"]
```

## Troubleshooting

### DLLs no cargan

Verificar que las rutas en `.csproj` sean correctas:
```bash
dir "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"
```

### Puerto en uso

Cambiar puerto en `Program.cs` o cerrar proceso que usa el puerto:
```bash
netstat -ano | findstr :5000
taskkill /PID <PID> /F
```

### Error de versión .NET

Verificar versión instalada:
```bash
dotnet --version
```

Debe ser 6.0 o superior.
