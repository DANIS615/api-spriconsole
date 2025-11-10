@echo off
echo ============================================================
echo FIX COM PORTS - Deshabilitar Intel AMT COM3
echo ============================================================
echo.

echo [1/4] Deteniendo servicios CEM-44...
net stop PumpService 2>nul
net stop TankService 2>nul
net stop PosService 2>nul
echo.

echo [2/4] Listando puertos COM actuales...
powershell "[System.IO.Ports.SerialPort]::GetPortNames()"
echo.

echo [3/4] Para deshabilitar Intel AMT COM3:
echo   - Abrir: Administrador de dispositivos
echo   - Expandir: Puertos (COM y LPT)
echo   - Click derecho en: Intel(R) Active Management Technology - SOL (COM3)
echo   - Seleccionar: Deshabilitar dispositivo
echo.
echo Presiona cualquier tecla cuando hayas deshabilitado COM3...
pause >nul

echo.
echo [4/4] Reiniciando servicios CEM-44...
net start PumpService
timeout /t 2 >nul
net start TankService
timeout /t 2 >nul
echo.

echo ============================================================
echo COMPLETADO
echo ============================================================
echo.
echo Ahora puedes ejecutar: python monitor_simple.py
echo.
pause
