// PumpService.cs
// Servicio REST en C# para controlar bombas usando DLLs de Smart Ship Factory
//
// Requisitos:
//   - .NET 6.0 o superior
//   - DLLs de Smart Ship Factory en C:\Windows\CEM44\Smart Ship Factory
//
// Compilar:
//   dotnet build
//
// Ejecutar:
//   dotnet run
//
// API:
//   POST http://localhost:5000/api/pump/authorize
//   GET  http://localhost:5000/api/pump/status/{pumpAddress}
//   POST http://localhost:5000/api/pump/stop/{pumpAddress}
//   POST http://localhost:5000/api/pump/reset/{pumpAddress}

using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

// IMPORTANTE: Agregar referencias a las DLLs de SSF en el archivo .csproj
// using SSF.Gilbarco;
// using SSF.FC.Comm.GPBox;

namespace PumpControlService
{
    // ===========================================
    // PROGRAMA PRINCIPAL
    // ===========================================
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Configurar servicios
            builder.Services.AddControllers();
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            // Agregar CORS para permitir llamadas desde cualquier origen
            builder.Services.AddCors(options =>
            {
                options.AddPolicy("AllowAll",
                    builder => builder
                        .AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader());
            });

            // Registrar el controlador de bombas como Singleton
            builder.Services.AddSingleton<IPumpManager, PumpManager>();

            var app = builder.Build();

            // Configurar pipeline HTTP
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseCors("AllowAll");
            app.MapControllers();

            Console.WriteLine("=".PadRight(60, '='));
            Console.WriteLine("SERVICIO DE CONTROL DE BOMBAS");
            Console.WriteLine("=".PadRight(60, '='));
            Console.WriteLine();
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

            app.Run("http://localhost:5000");
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
        TotalizersResponse GetTotalizers(int pumpAddress);
    }

    // ===========================================
    // MANAGER DE BOMBAS
    // ===========================================
    public class PumpManager : IPumpManager
    {
        private readonly ILogger<PumpManager> _logger;
        private bool _initialized = false;

        // NOTA: Aquí irían las instancias de las DLLs de SSF
        // private GilbarcoPump _pumpController;
        // private GPBoxCommunication _communication;

        public PumpManager(ILogger<PumpManager> logger)
        {
            _logger = logger;
            Initialize();
        }

        public bool Initialize()
        {
            try
            {
                _logger.LogInformation("Inicializando controlador de bombas...");

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // _pumpController = new GilbarcoPump();
                // _communication = new GPBoxCommunication();
                // _communication.Initialize("COM1", 9600);
                // _pumpController.SetCommunication(_communication);

                _initialized = true;
                _logger.LogInformation("✓ Controlador inicializado correctamente");

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

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // bool result = _pumpController.Authorize(
                //     pumpAddress,
                //     (float)amount,
                //     (float)volume
                // );

                // Por ahora, simular éxito
                bool result = true;

                _logger.LogInformation($"Bomba {pumpAddress} autorizada: {result}");
                return result;
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

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // var status = _pumpController.GetStatus(pumpAddress);

                // Por ahora, retornar datos simulados
                return new PumpStatusResponse
                {
                    PumpAddress = pumpAddress,
                    Status = "IDLE",
                    Message = "Bomba inactiva",
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

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // bool result = _pumpController.Stop(pumpAddress);

                bool result = true;

                _logger.LogInformation($"Bomba {pumpAddress} detenida: {result}");
                return result;
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

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // bool result = _pumpController.Reset(pumpAddress);

                bool result = true;

                _logger.LogInformation($"Bomba {pumpAddress} reseteada: {result}");
                return result;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al resetear bomba {pumpAddress}");
                return false;
            }
        }

        public TotalizersResponse GetTotalizers(int pumpAddress)
        {
            if (!_initialized)
            {
                return new TotalizersResponse
                {
                    PumpAddress = pumpAddress,
                    Success = false,
                    Message = "Controlador no inicializado"
                };
            }

            try
            {
                _logger.LogInformation($"Leyendo totalizadores de bomba {pumpAddress}");

                // IMPORTANTE: Descomentar cuando tengas las DLLs de SSF
                // var totalizers = _pumpController.GetTotalizers(pumpAddress);

                return new TotalizersResponse
                {
                    PumpAddress = pumpAddress,
                    Success = true,
                    TotalVolume = 12345.67m,
                    TotalAmount = 302345.50m,
                    TransactionCount = 543
                };
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error al leer totalizadores de bomba {pumpAddress}");
                return new TotalizersResponse
                {
                    PumpAddress = pumpAddress,
                    Success = false,
                    Message = ex.Message
                };
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

        /// <summary>
        /// Autorizar bomba para despachar
        /// </summary>
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
                    timestamp = DateTime.Now
                });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en Authorize");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        /// <summary>
        /// Obtener estado de bomba
        /// </summary>
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

        /// <summary>
        /// Detener bomba en operación
        /// </summary>
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

        /// <summary>
        /// Resetear bomba después de transacción
        /// </summary>
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

        /// <summary>
        /// Obtener totalizadores de bomba
        /// </summary>
        [HttpGet("totalizers/{pumpAddress}")]
        public IActionResult GetTotalizers(int pumpAddress)
        {
            try
            {
                if (pumpAddress < 1 || pumpAddress > 16)
                {
                    return BadRequest(new { error = "Dirección de bomba inválida (1-16)" });
                }

                var totalizers = _pumpManager.GetTotalizers(pumpAddress);
                return Ok(totalizers);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error en GetTotalizers");
                return StatusCode(500, new { error = ex.Message });
            }
        }

        /// <summary>
        /// Health check
        /// </summary>
        [HttpGet("health")]
        public IActionResult Health()
        {
            return Ok(new
            {
                status = "OK",
                service = "Pump Control Service",
                version = "1.0.0",
                timestamp = DateTime.Now
            });
        }
    }

    // ===========================================
    // MODELOS DE DATOS
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

    public class TotalizersResponse
    {
        public int PumpAddress { get; set; }
        public bool Success { get; set; }
        public string Message { get; set; }
        public decimal TotalVolume { get; set; }
        public decimal TotalAmount { get; set; }
        public int TransactionCount { get; set; }
    }
}
