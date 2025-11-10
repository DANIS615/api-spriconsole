@echo off
REM ============================================================================
REM SCRIPT DE ANÁLISIS DE DLLs CON HERRAMIENTAS NATIVAS DE WINDOWS
REM ============================================================================
REM Este script usa herramientas que vienen con Visual Studio o Windows SDK
REM para analizar las DLLs de Smart Ship Factory sin necesidad de programación.
REM
REM Uso:
REM   analizar_dll.bat "C:\ruta\a\SSF.Gilbarco.D.dll"
REM
REM   O para analizar todas:
REM   analizar_dll.bat --all
REM ============================================================================

setlocal enabledelayedexpansion

echo.
echo ========================================================================
echo ANALIZADOR DE DLLs - HERRAMIENTAS NATIVAS
echo ========================================================================
echo.

REM ----------------------------------------------------------------------------
REM Verificar que se pasó un parámetro
REM ----------------------------------------------------------------------------
if "%~1"=="" (
    echo ERROR: Se requiere especificar una DLL o --all
    echo.
    echo Uso:
    echo   %~nx0 "C:\ruta\a\archivo.dll"
    echo   %~nx0 --all
    echo.
    pause
    exit /b 1
)

REM ----------------------------------------------------------------------------
REM Buscar dumpbin.exe
REM ----------------------------------------------------------------------------
echo [1] Buscando herramienta dumpbin.exe...
echo.

set "DUMPBIN="

REM Buscar en ubicaciones comunes de Visual Studio
for %%V in (2022 2019 2017) do (
    for %%E in (Community Professional Enterprise) do (
        for %%A in (x64 x86) do (
            set "TEST_PATH=C:\Program Files (x86)\Microsoft Visual Studio\%%V\%%E\VC\Tools\MSVC"
            if exist "!TEST_PATH!" (
                for /d %%D in ("!TEST_PATH!\*") do (
                    set "BIN_PATH=%%D\bin\Host!%%A!\x86\dumpbin.exe"
                    if exist "!BIN_PATH!" (
                        set "DUMPBIN=!BIN_PATH!"
                        goto :found_dumpbin
                    )
                )
            )
        )
    )
)

REM Buscar en Windows SDK
set "SDK_PATH=C:\Program Files (x86)\Windows Kits\10\bin"
if exist "%SDK_PATH%" (
    for /d %%D in ("%SDK_PATH%\*") do (
        if exist "%%D\x86\dumpbin.exe" (
            set "DUMPBIN=%%D\x86\dumpbin.exe"
            goto :found_dumpbin
        )
    )
)

REM No se encontró
echo [X] No se encontro dumpbin.exe
echo.
echo dumpbin viene con Visual Studio o Windows SDK.
echo.
echo Opciones:
echo   1. Instalar Visual Studio Community (gratis):
echo      https://visualstudio.microsoft.com/downloads/
echo.
echo   2. Usar el script Python: analizar_dll_auto.py
echo      pip install pefile
echo      python analizar_dll_auto.py "%~1"
echo.
echo   3. Descargar Dependency Walker (gratis):
echo      https://www.dependencywalker.com/
echo.
pause
exit /b 1

:found_dumpbin
echo [OK] Encontrado: %DUMPBIN%
echo.

REM ----------------------------------------------------------------------------
REM Procesar parámetro
REM ----------------------------------------------------------------------------

if "%~1"=="--all" (
    goto :analyze_all
) else (
    goto :analyze_one
)

REM ----------------------------------------------------------------------------
REM Analizar una DLL
REM ----------------------------------------------------------------------------
:analyze_one

set "DLL_PATH=%~1"

if not exist "%DLL_PATH%" (
    echo [X] Error: El archivo no existe
    echo     %DLL_PATH%
    echo.
    pause
    exit /b 1
)

echo ========================================================================
echo ANALIZANDO: %~nx1
echo ========================================================================
echo Ruta: %DLL_PATH%
echo.

REM Crear nombre de archivo de salida
set "OUTPUT_FILE=%~n1_analysis.txt"

echo Generando reporte en: %OUTPUT_FILE%
echo.

REM Ejecutar dumpbin con varias opciones
echo. > "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
echo ANALISIS DE DLL: %~nx1 >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
echo Fecha: %DATE% %TIME% >> "%OUTPUT_FILE%"
echo Ruta: %DLL_PATH% >> "%OUTPUT_FILE%"
echo. >> "%OUTPUT_FILE%"

echo [2] Analizando headers...
echo ======================================================================== >> "%OUTPUT_FILE%"
echo HEADERS >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
"%DUMPBIN%" /HEADERS "%DLL_PATH%" >> "%OUTPUT_FILE%" 2>&1

echo [3] Extrayendo funciones exportadas (LO MAS IMPORTANTE)...
echo. >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
echo FUNCIONES EXPORTADAS >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
"%DUMPBIN%" /EXPORTS "%DLL_PATH%" >> "%OUTPUT_FILE%" 2>&1

echo [4] Analizando dependencias (DLLs importadas)...
echo. >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
echo DEPENDENCIAS (IMPORTS) >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
"%DUMPBIN%" /IMPORTS "%DLL_PATH%" >> "%OUTPUT_FILE%" 2>&1

echo [5] Listando secciones...
echo. >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
echo SECCIONES >> "%OUTPUT_FILE%"
echo ======================================================================== >> "%OUTPUT_FILE%"
"%DUMPBIN%" /SECTION:.text "%DLL_PATH%" >> "%OUTPUT_FILE%" 2>&1

echo.
echo ========================================================================
echo ANALISIS COMPLETADO
echo ========================================================================
echo.
echo Reporte guardado en: %OUTPUT_FILE%
echo.
echo Abre el archivo para ver:
echo   - Funciones exportadas (seccion EXPORTS)
echo   - DLLs requeridas (seccion IMPORTS)
echo   - Arquitectura (32/64 bits)
echo.

REM Mostrar un resumen de exports en pantalla
echo ========================================================================
echo RESUMEN DE FUNCIONES EXPORTADAS
echo ========================================================================
echo.

findstr /C:"ordinal" "%OUTPUT_FILE%" | findstr /V "Summary"

echo.
echo Ver reporte completo en: %OUTPUT_FILE%
echo.
pause
exit /b 0

REM ----------------------------------------------------------------------------
REM Analizar todas las DLLs de SSF
REM ----------------------------------------------------------------------------
:analyze_all

echo ========================================================================
echo ANALISIS MASIVO DE DLLs DE SMART SHIP FACTORY
echo ========================================================================
echo.

set "SSF_BASE=C:\Windows\CEM44\Smart Ship Factory\Spirit"

if not exist "%SSF_BASE%" (
    echo [X] Error: No se encuentra Smart Ship Factory en:
    echo     %SSF_BASE%
    echo.
    pause
    exit /b 1
)

echo Base: %SSF_BASE%
echo.

REM Crear directorio para reportes
set "OUTPUT_DIR=dll_analysis_%DATE:~-4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%"
set "OUTPUT_DIR=%OUTPUT_DIR: =0%"
mkdir "%OUTPUT_DIR%" 2>nul

echo Reportes se guardaran en: %OUTPUT_DIR%
echo.

REM Analizar DLLs de pumps
echo [1] Analizando DLLs de pumps...
if exist "%SSF_BASE%\bin\pumps" (
    for %%F in ("%SSF_BASE%\bin\pumps\*.dll") do (
        echo   - %%~nxF
        "%DUMPBIN%" /EXPORTS "%%F" > "%OUTPUT_DIR%\%%~nF_exports.txt" 2>&1
        "%DUMPBIN%" /HEADERS "%%F" > "%OUTPUT_DIR%\%%~nF_headers.txt" 2>&1
    )
)

REM Analizar DLLs de communications
echo [2] Analizando DLLs de communications...
if exist "%SSF_BASE%\bin\communications" (
    for %%F in ("%SSF_BASE%\bin\communications\*.dll") do (
        echo   - %%~nxF
        "%DUMPBIN%" /EXPORTS "%%F" > "%OUTPUT_DIR%\%%~nF_exports.txt" 2>&1
        "%DUMPBIN%" /HEADERS "%%F" > "%OUTPUT_DIR%\%%~nF_headers.txt" 2>&1
    )
)

REM Analizar DLLs de lib
echo [3] Analizando DLLs de lib...
if exist "%SSF_BASE%\lib" (
    for %%F in ("%SSF_BASE%\lib\*.dll") do (
        echo   - %%~nxF
        "%DUMPBIN%" /EXPORTS "%%F" > "%OUTPUT_DIR%\%%~nF_exports.txt" 2>&1
        "%DUMPBIN%" /HEADERS "%%F" > "%OUTPUT_DIR%\%%~nF_headers.txt" 2>&1
    )
)

echo.
echo ========================================================================
echo ANALISIS MASIVO COMPLETADO
echo ========================================================================
echo.
echo Todos los reportes estan en: %OUTPUT_DIR%
echo.
echo Abre los archivos *_exports.txt para ver las funciones de cada DLL
echo.
pause
exit /b 0
