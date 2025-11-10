// PumpService32.cs
// Servicio REST de 32 bits para cargar DLLs nativas de 32 bits de Smart Ship Factory
//
// IMPORTANTE: Este proyecto debe compilarse para x86 (32 bits), NO para x64 o AnyCPU
//
// Compilar:
//   dotnet build -c Release /p:Platform=x86
//
// Ejecutar:
//   dotnet run --no-build -c Release
//
// Verificar que es 32 bits:
//   En el código, Environment.Is64BitProcess debe ser false

using System;
using System.Runtime.InteropServices;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace PumpService32
{
    // ===========================================
    // PROGRAMA PRINCIPAL
    // ===========================================
    public class Program
    {
        public static void Main(string[] args)
        {
            // Verificar que estamos corriendo en 32 bits
            Console.WriteLine("=".PadRight(60, '='));
            Console.WriteLine("SERVICIO DE CONTROL DE BOMBAS - 32 BITS");
            Console.WriteLine("=".PadRight(60, '='));
            Console.WriteLine();
            Console.WriteLine($"Proceso: {(Environment.Is64BitProcess ? "64 bits ❌" : "32 bits ✓")}");
            Console.WriteLine($"Sistema Operativo: {(Environment.Is64BitOperatingSystem ? "64 bits" : "32 bits")}");
            Console.WriteLine($".NET Runtime: {RuntimeInformation.FrameworkDescription}");
            Console.WriteLine();

            if (Environment.Is64BitProcess)
            {
                Console.WriteLine("✗ ERROR: Este servicio está corriendo en 64 bits");
                Console.WriteLine();
                Console.WriteLine("Debe compilarse para x86 (32 bits):");
                Console.WriteLine("  dotnet build -c Release /p:Platform=x86");
                Console.WriteLine();
                Console.WriteLine("Presiona cualquier tecla para salir...");
                Console.ReadKey();
                return;
            }

            Console.WriteLine("✓ Proceso de 32 bits confirmado");
            Console.WriteLine("  Puede cargar DLLs de 32 bits correctamente");
            Console.WriteLine();

            var builder = WebApplication.CreateBuilder(args);

            // Configurar servicios
            builder.Services.AddControllers();
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            // CORS
            builder.Services.AddCors(options =>
            {
                options.AddPolicy("AllowAll",
                    builder => builder
                        .AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader());
            });

            // Registrar el manager de bombas
            builder.Services.AddSingleton<IPumpManager, PumpManager>();

            var app = builder.Build();

            // Configurar pipeline
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseCors("AllowAll");
            app.MapControllers();

            Console.WriteLine("Servidor iniciado en: http://localhost:5000");
            Console.WriteLine();
            Console.WriteLine("API Endpoints:");
            Console.WriteLine("  POST /api/pump/authorize");
            Console.WriteLine("  GET  /api/pump/status/{pumpAddress}");
            Console.WriteLine("  POST /api/pump/stop/{pumpAddress}");
            Console.WriteLine("  POST /api/pump/reset/{pumpAddress}");
            Console.WriteLine();
            Console.WriteLine("Documentación Swagger: http://localhost:5000/swagger");
            Console.WriteLine();
            Console.WriteLine("Presiona Ctrl+C para detener el servicio...");
            Console.WriteLine();

            app.Run("http://localhost:5000");
        }
    }

    // ===========================================
    // INTEROP CON DLLs NATIVAS
    // ===========================================

    /// <summary>
    /// Wrapper para las funciones de la DLL de Gilbarco
    /// Ajusta los nombres de las funciones según lo que veas con dumpbin o Dependency Walker
    /// </summary>
    public static class GilbarcoInterop
    {
        private const string DLL_PATH = @"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll";

        // IMPORTANTE: Estos son ejemplos hipotéticos
        // Necesitas reemplazarlos con los nombres reales de las funciones exportadas
        // Usa dumpbin /EXPORTS para ver las funciones reales

        /*
        // Ejemplo de función C exportada:
        [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Initialize();

        [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
        public static extern int PumpAuthorize(int pumpAddress, float amount, float volume);

        [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
        public static extern int PumpStop(int pumpAddress);

        [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl)]
        public static extern int PumpReset(int pumpAddress);

        [DllImport(DLL_PATH, CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern IntPtr GetPumpStatus(int pumpAddress);
        */

        // Métodos helper para convertir datos
        public static string IntPtrToString(IntPtr ptr)
        {
            if (ptr == IntPtr.Zero)
                return null;
            return Marshal.PtrToStringAnsi(ptr);
        }
    }

    // ===========================================
    // INTERFACES
    // ===========================================
    public interface IPumpManager
    {
        bool Initialize();
        bool Authorize(int pumpAddress, decimal amount, decimal volume);
        PumpStatusResponse GetStatus(int pumpAddress);
        bool Stop(int pumpAddress);
        bool Reset(int pumpAddress);
    }

    // ===========================================
    // MANAGER DE BOMBAS
    // ===========================================
    public class PumpManager : IPumpManager
    {
        private readonly ILogger<PumpManager> _logger;
        private bool _initialized = false;
        private bool _dllsLoaded = false;

        public PumpManager(ILogger<PumpManager> logger)
        {
            _logger = logger;
            Initialize();
        }

        public bool Initialize()
        {
            try
            {
                _logger.LogInformation("Inicializando controlador de bombas (32-bit)...");

                // Verificar que estamos en 32 bits
                if (Environment.Is64BitProcess)
                {
                    _logger.LogError("ERROR: Proceso de 64 bits detectado. Debe ser 32 bits.");
                    return false;
                }

                _logger.LogInformation("✓ Proceso de 32 bits confirmado");

                // IMPORTANTE: Descomentar cuando tengas las funciones reales de la DLL
                /*
                try
                {
                    int result = GilbarcoInterop.Initialize();
                    if (result == 0)
                    {
                        _logger.LogInformation("✓ DLL de Gilbarco inicializada");
                        _dllsLoaded = true;
                    }
                    else
                    {
                        _logger.LogWarning($"Advertencia: Initialize retornó {result}");
                    }
                }
                catch (DllNotFoundException ex)
                {
                    _logger.LogError($"DLL no encontrada: {ex.Message}");
                    return false;
                }
                catch (Exception ex)
                {
                    _logger.LogError($"Error al cargar DLL: {ex.Message}");
                    return false;
                }
                */

                // Por ahora, modo simulación
                _logger.LogWarning("MODO SIMULACIÓN: Las funciones de DLL no están implementadas aún");
                _logger.LogInformation("Para usar las DLLs reales:");
                _logger.LogInformation("1. Usa dumpbin /EXPORTS para ver las funciones");
                _logger.LogInformation("2. Agrega [DllImport] en GilbarcoInterop");
                _logger.LogInformation("3. Descomenta el código de inicialización");

                _initialized = true;
                return true;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al inicializar controlador de bombas");
                return false;
            }
        }

        public bool Authorize(int pumpAddress, decimal amount, decimal volume)
        {
            if (!_initialized)
            {
                _logger.LogWarning("Controlador no inicializado");
                return false;
            }

            try
            {
                _logger.LogInformation($"Autorizando bomba {pumpAddress}: ${amount}, {volume}L");

                // IMPORTANTE: Descomentar cuando implementes las funciones reales
                /*
                if (_dllsLoaded)
                {
                    int result = GilbarcoInterop.PumpAuthorize(
                        pumpAddress,
                        (float)amount,
                        (float)volume
                    );

                    bool success = (result == 0);
                    _logger.LogInformation($"Bomba {pumpAddress} autorizada: {success}");
                    return success;
                }
                */

                // Simulación
                _logger.LogInformation($"[SIMULACIÓN] Bomba {pumpAddress} autorizada");
                return true;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al autorizar bomba {pumpAddress}");
                return false;
            }
        }

        public PumpStatusResponse GetStatus(int pumpAddress)
        {
            if (!_initialized)
            {
                return new PumpStatusResponse
                {
                    PumpAddress = pumpAddress,
                    Status = "ERROR",
                    Message = "Controlador no inicializado"
                };
            }

            try
            {
                _logger.LogInformation($"Consultando estado de bomba {pumpAddress}");

                // IMPORTANTE: Descomentar cuando implementes las funciones reales
                /*
                if (_dllsLoaded)
                {
                    IntPtr statusPtr = GilbarcoInterop.GetPumpStatus(pumpAddress);
                    string statusStr = GilbarcoInterop.IntPtrToString(statusPtr);

                    return new PumpStatusResponse
                    {
                        PumpAddress = pumpAddress,
                        Status = statusStr ?? "UNKNOWN",
                        Message = "Estado obtenido desde DLL"
                    };
                }
                */

                // Simulación
                return new PumpStatusResponse
                {
                    PumpAddress = pumpAddress,
                    Status = "IDLE",
                    Message = "[SIMULACIÓN] Bomba inactiva",
                    Volume = 0,
                    Amount = 0,
                    Price = 24.50m
                };
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al obtener estado de bomba {pumpAddress}");
                return new PumpStatusResponse
                {
                    PumpAddress = pumpAddress,
                    Status = "ERROR",
                    Message = ex.Message
                };
            }
        }

        public bool Stop(int pumpAddress)
        {
            if (!_initialized)
            {
                _logger.LogWarning("Controlador no inicializado");
                return false;
            }

            try
            {
                _logger.LogInformation($"Deteniendo bomba {pumpAddress}");

                // IMPORTANTE: Descomentar cuando implementes las funciones reales
                /*
                if (_dllsLoaded)
                {
                    int result = GilbarcoInterop.PumpStop(pumpAddress);
                    bool success = (result == 0);
                    _logger.LogInformation($"Bomba {pumpAddress} detenida: {success}");
                    return success;
                }
                */

                // Simulación
                _logger.LogInformation($"[SIMULACIÓN] Bomba {pumpAddress} detenida");
                return true;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al detener bomba {pumpAddress}");
                return false;
            }
        }

        public bool Reset(int pumpAddress)
        {
            if (!_initialized)
            {
                _logger.LogWarning("Controlador no inicializado");
                return false;
            }

            try
            {
                _logger.LogInformation($"Reseteando bomba {pumpAddress}");

                // IMPORTANTE: Descomentar cuando implementes las funciones reales
                /*
                if (_dllsLoaded)
                {
                    int result = GilbarcoInterop.PumpReset(pumpAddress);
                    bool success = (result == 0);
                    _logger.LogInformation($"Bomba {pumpAddress} reseteada: {success}");
                    return success;
                }
                */

                // Simulación
                _logger.LogInformation($"[SIMULACIÓN] Bomba {pumpAddress} reseteada");
                return true;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al resetear bomba {pumpAddress}");
                return false;
            }
        }
    }

    // ===========================================
    // CONTROLADOR API
    // ===========================================
    [ApiController]
    [Route("api/[controller]")]
    public class PumpController : ControllerBase
    {
        private readonly IPumpManager _pumpManager;
        private readonly ILogger<PumpController> _logger;

        public PumpController(IPumpManager pumpManager, ILogger<PumpController> logger)
        {
            _pumpManager = pumpManager;
            _logger = logger;
        }

        [HttpPost("authorize")]
        public IActionResult Authorize([FromBody] AuthorizeRequest request)
        {
            try
            {
                if (request.PumpAddress < 1 || request.PumpAddress > 16)
                {
                    return BadRequest(new { error = "Dirección de bomba inválida (1-16)" });
                }

                bool success = _pumpManager.Authorize(
                    request.PumpAddress,
                    request.Amount,
                    request.Volume
                );

                return Ok(new
                {
                    success = success,
                    pumpAddress = request.PumpAddress,
                    amount = request.Amount,
                    volume = request.Volume,
                    timestamp = DateTime.Now,
                    mode = "32-bit native DLL"
                });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en Authorize");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("status/{pumpAddress}")]
        public IActionResult GetStatus(int pumpAddress)
        {
            try
            {
                if (pumpAddress < 1 || pumpAddress > 16)
                {
                    return BadRequest(new { error = "Dirección de bomba inválida (1-16)" });
                }

                var status = _pumpManager.GetStatus(pumpAddress);
                return Ok(status);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en GetStatus");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPost("stop/{pumpAddress}")]
        public IActionResult Stop(int pumpAddress)
        {
            try
            {
                if (pumpAddress < 1 || pumpAddress > 16)
                {
                    return BadRequest(new { error = "Dirección de bomba inválida (1-16)" });
                }

                bool success = _pumpManager.Stop(pumpAddress);

                return Ok(new
                {
                    success = success,
                    pumpAddress = pumpAddress,
                    timestamp = DateTime.Now
                });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en Stop");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpPost("reset/{pumpAddress}")]
        public IActionResult Reset(int pumpAddress)
        {
            try
            {
                if (pumpAddress < 1 || pumpAddress > 16)
                {
                    return BadRequest(new { error = "Dirección de bomba inválida (1-16)" });
                }

                bool success = _pumpManager.Reset(pumpAddress);

                return Ok(new
                {
                    success = success,
                    pumpAddress = pumpAddress,
                    timestamp = DateTime.Now
                });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en Reset");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        [HttpGet("health")]
        public IActionResult Health()
        {
            return Ok(new
            {
                status = "OK",
                service = "Pump Control Service 32-bit",
                version = "1.0.0",
                process = Environment.Is64BitProcess ? "64-bit" : "32-bit",
                os = Environment.Is64BitOperatingSystem ? "64-bit" : "32-bit",
                timestamp = DateTime.Now
            });
        }
    }

    // ===========================================
    // MODELOS
    // ===========================================

    public class AuthorizeRequest
    {
        public int PumpAddress { get; set; }
        public decimal Amount { get; set; }
        public decimal Volume { get; set; }
    }

    public class PumpStatusResponse
    {
        public int PumpAddress { get; set; }
        public string Status { get; set; }
        public string Message { get; set; }
        public decimal Volume { get; set; }
        public decimal Amount { get; set; }
        public decimal Price { get; set; }
    }
}
