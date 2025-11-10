@echo off
echo ============================================================
echo INICIAR SERVICIOS CEM-44
echo ============================================================
echo.

echo Verificando permisos de administrador...
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Este script requiere permisos de administrador
    echo.
    echo Click derecho en este archivo ^> Ejecutar como administrador
    echo.
    pause
    exit /b 1
)

echo [OK] Ejecutando como administrador
echo.

echo [1/3] Iniciando PumpService...
net start PumpService
if %errorLevel% equ 0 (
    echo [OK] PumpService iniciado
) else (
    echo [!] PumpService ya estaba iniciado o error
)
echo.

timeout /t 2 >nul

echo [2/3] Iniciando TankService...
net start TankService
if %errorLevel% equ 0 (
    echo [OK] TankService iniciado
) else (
    echo [!] TankService ya estaba iniciado o error
)
echo.

timeout /t 2 >nul

echo [3/3] Verificando estado de servicios...
sc query PumpService | findstr "ESTADO"
sc query TankService | findstr "ESTADO"
echo.

echo ============================================================
echo SERVICIOS INICIADOS
echo ============================================================
echo.
echo Ahora ejecuta: python monitor_simple.py
echo (en otra ventana de comandos)
echo.
pause
