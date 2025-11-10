@echo off
REM ============================================================================
REM ANALIZAR TODOS LOS DLLs DE SMART SHIP FACTORY
REM ============================================================================
REM Este script busca y analiza TODOS los DLLs del sistema SSF
REM Genera un reporte JSON para cada DLL y un resumen consolidado
REM ============================================================================

echo.
echo ============================================================================
echo   ANALISIS MASIVO DE DLLs - Smart Ship Factory
echo ============================================================================
echo.

REM Configuración
set "SSF_ROOT=C:\Windows\CEM44\Smart Ship Factory\Spirit"
set "OUTPUT_DIR=%~dp0analisis_dlls"
set "PYTHON_SCRIPT=%~dp0analizar_dll_auto.py"

REM Crear directorio de salida
if not exist "%OUTPUT_DIR%" (
    echo [*] Creando directorio de salida: %OUTPUT_DIR%
    mkdir "%OUTPUT_DIR%"
)

echo [*] Directorio base: %SSF_ROOT%
echo [*] Directorio salida: %OUTPUT_DIR%
echo.

REM Verificar que existe el script Python
if not exist "%PYTHON_SCRIPT%" (
    echo [ERROR] No se encuentra analizar_dll_auto.py
    echo         Asegurate de que este script esta en el mismo directorio
    pause
    exit /b 1
)

REM Verificar que existe el directorio SSF
if not exist "%SSF_ROOT%" (
    echo [ERROR] No se encuentra Smart Ship Factory en: %SSF_ROOT%
    echo         Ajusta la variable SSF_ROOT en este script
    pause
    exit /b 1
)

echo [*] Buscando todos los archivos .dll...
echo.

REM Crear archivo temporal con lista de DLLs
set "DLL_LIST=%TEMP%\ssf_dll_list.txt"
dir /s /b "%SSF_ROOT%\*.dll" > "%DLL_LIST%"

REM Contar DLLs encontrados
set DLL_COUNT=0
for /f %%i in ('type "%DLL_LIST%" ^| find /c /v ""') do set DLL_COUNT=%%i

echo [OK] Encontrados %DLL_COUNT% archivos DLL
echo.
echo ============================================================================
echo   INICIANDO ANALISIS (Esto puede tomar varios minutos...)
echo ============================================================================
echo.

REM Analizar cada DLL
set ANALYZED=0
set FAILED=0

for /f "delims=" %%D in (%DLL_LIST%) do (
    set /a ANALYZED+=1

    echo.
    echo [!ANALYZED!/%DLL_COUNT%] Analizando: %%~nxD
    echo ----------------------------------------------------------------------------

    REM Ejecutar análisis
    python "%PYTHON_SCRIPT%" "%%D" --output "%OUTPUT_DIR%"

    if errorlevel 1 (
        echo     [ERROR] Fallo al analizar
        set /a FAILED+=1
    ) else (
        echo     [OK] Analisis completado
    )
)

REM Limpiar archivo temporal
del "%DLL_LIST%"

echo.
echo ============================================================================
echo   RESUMEN
echo ============================================================================
echo.
echo Total DLLs encontrados: %DLL_COUNT%
echo Analizados exitosamente: %ANALYZED%
echo Fallidos: %FAILED%
echo.
echo Archivos generados en: %OUTPUT_DIR%
echo.

REM Generar índice HTML
echo [*] Generando indice HTML...
python "%~dp0generar_indice_dlls.py" "%OUTPUT_DIR%"

if exist "%OUTPUT_DIR%\indice.html" (
    echo [OK] Indice generado: %OUTPUT_DIR%\indice.html
    echo.
    echo ¿Deseas abrir el indice ahora? (S/N)
    choice /c SN /n
    if errorlevel 2 goto :skip_open
    if errorlevel 1 start "%OUTPUT_DIR%\indice.html"
    :skip_open
)

echo.
echo ============================================================================
echo   ANALISIS COMPLETO
echo ============================================================================
echo.
echo Revisa los archivos JSON en: %OUTPUT_DIR%
echo.

pause
