@echo off
REM ============================================================================
REM ANALIZAR DLLs CRÍTICOS - Análisis Rápido de los Más Importantes
REM ============================================================================
REM Analiza solo los DLLs críticos para comunicación con GPBox
REM Mucho más rápido que analizar todo
REM ============================================================================

echo.
echo ============================================================================
echo   ANALISIS DE DLLs CRITICOS - Smart Ship Factory
echo ============================================================================
echo.
echo Este script analizará solo los DLLs MAS IMPORTANTES:
echo   - SSF.FC.Comm.GPBox.D.dll    (Comunicacion GPBox)
echo   - SSF.FC.Comm.Serial.D.dll   (Puerto Serial)
echo   - SSF.Router.Message.D.dll   (Sistema Mensajeria)
echo   - SSF.Gilbarco.D.dll         (Plugin Gilbarco)
echo   - SSF.Wayne.D.dll            (Plugin Wayne)
echo   - SSF.Tools.Library.D.dll    (Utilidades)
echo.

REM Configuración
set "SSF_ROOT=C:\Windows\CEM44\Smart Ship Factory\Spirit"
set "OUTPUT_DIR=%~dp0analisis_dlls_criticos"
set "PYTHON_SCRIPT=%~dp0analizar_dll_auto.py"

REM Crear directorio de salida
if not exist "%OUTPUT_DIR%" (
    echo [*] Creando directorio: %OUTPUT_DIR%
    mkdir "%OUTPUT_DIR%"
)

REM Verificar Python script
if not exist "%PYTHON_SCRIPT%" (
    echo [ERROR] No se encuentra analizar_dll_auto.py
    pause
    exit /b 1
)

REM Verificar SSF
if not exist "%SSF_ROOT%" (
    echo [ERROR] No se encuentra Smart Ship Factory en: %SSF_ROOT%
    echo.
    echo Si esta instalado en otra ubicacion, edita este script y cambia SSF_ROOT
    pause
    exit /b 1
)

echo [OK] Configuracion:
echo      SSF: %SSF_ROOT%
echo      Output: %OUTPUT_DIR%
echo.

pause

REM ============================================================================
REM DLL 1: SSF.FC.Comm.GPBox.D.dll (CRITICO)
REM ============================================================================

set "DLL1=%SSF_ROOT%\bin\communications\SSF.FC.Comm.GPBox.D.dll"

echo.
echo ============================================================================
echo   [1/6] SSF.FC.Comm.GPBox.D.dll (COMUNICACION GPBOX)
echo ============================================================================
echo.

if exist "%DLL1%" (
    python "%PYTHON_SCRIPT%" "%DLL1%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL1%
)

pause

REM ============================================================================
REM DLL 2: SSF.FC.Comm.Serial.D.dll (IMPORTANTE)
REM ============================================================================

set "DLL2=%SSF_ROOT%\bin\communications\SSF.FC.Comm.Serial.D.dll"

echo.
echo ============================================================================
echo   [2/6] SSF.FC.Comm.Serial.D.dll (PUERTO SERIAL)
echo ============================================================================
echo.

if exist "%DLL2%" (
    python "%PYTHON_SCRIPT%" "%DLL2%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL2%
)

pause

REM ============================================================================
REM DLL 3: SSF.Router.Message.D.dll
REM ============================================================================

set "DLL3=%SSF_ROOT%\lib\SSF.Router.Message.D.dll"

echo.
echo ============================================================================
echo   [3/6] SSF.Router.Message.D.dll (MENSAJERIA)
echo ============================================================================
echo.

if exist "%DLL3%" (
    python "%PYTHON_SCRIPT%" "%DLL3%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL3%
)

pause

REM ============================================================================
REM DLL 4: SSF.Gilbarco.D.dll
REM ============================================================================

set "DLL4=%SSF_ROOT%\bin\pumps\SSF.Gilbarco.D.dll"

echo.
echo ============================================================================
echo   [4/6] SSF.Gilbarco.D.dll (PLUGIN GILBARCO)
echo ============================================================================
echo.

if exist "%DLL4%" (
    python "%PYTHON_SCRIPT%" "%DLL4%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL4%
)

pause

REM ============================================================================
REM DLL 5: SSF.Wayne.D.dll
REM ============================================================================

set "DLL5=%SSF_ROOT%\bin\pumps\SSF.Wayne.D.dll"

echo.
echo ============================================================================
echo   [5/6] SSF.Wayne.D.dll (PLUGIN WAYNE)
echo ============================================================================
echo.

if exist "%DLL5%" (
    python "%PYTHON_SCRIPT%" "%DLL5%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL5%
)

pause

REM ============================================================================
REM DLL 6: SSF.Tools.Library.D.dll
REM ============================================================================

set "DLL6=%SSF_ROOT%\lib\SSF.Tools.Library.D.dll"

echo.
echo ============================================================================
echo   [6/6] SSF.Tools.Library.D.dll (UTILIDADES)
echo ============================================================================
echo.

if exist "%DLL6%" (
    python "%PYTHON_SCRIPT%" "%DLL6%" --output "%OUTPUT_DIR%"
    if errorlevel 1 (
        echo [ERROR] Fallo al analizar
    ) else (
        echo [OK] Analisis completado
    )
) else (
    echo [!] No encontrado: %DLL6%
)

REM ============================================================================
REM GENERAR INDICE
REM ============================================================================

echo.
echo ============================================================================
echo   GENERANDO INDICE HTML
echo ============================================================================
echo.

python "%~dp0generar_indice_dlls.py" "%OUTPUT_DIR%"

if exist "%OUTPUT_DIR%\indice.html" (
    echo.
    echo [OK] Indice generado: %OUTPUT_DIR%\indice.html
    echo.
    echo ¿Deseas abrir el indice ahora? (S/N)
    choice /c SN /n
    if errorlevel 2 goto :skip_open
    if errorlevel 1 start "%OUTPUT_DIR%\indice.html"
    :skip_open
)

REM ============================================================================
REM RESUMEN
REM ============================================================================

echo.
echo ============================================================================
echo   ANALISIS COMPLETO
echo ============================================================================
echo.
echo Archivos JSON generados en: %OUTPUT_DIR%
echo.
echo SIGUIENTE PASO:
echo   1. Abre el indice HTML: %OUTPUT_DIR%\indice.html
echo   2. Busca "GPBox" o "Authorize" para encontrar funciones utiles
echo   3. Si encuentras funciones utiles, ve a GUIA_CONSUMIR_DLLS.md
echo   4. Si no, ve a PLAN_PROTOCOLO_GPBOX.md
echo.

pause
