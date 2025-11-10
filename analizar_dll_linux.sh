#!/bin/bash
# ============================================================================
# SCRIPT DE ANÁLISIS DE DLLs EN LINUX/WSL
# ============================================================================
# Este script usa herramientas disponibles en Linux/WSL para analizar
# las DLLs de Smart Ship Factory.
#
# Requisitos:
#   sudo apt install binutils mingw-w64-tools pev
#
# Uso:
#   ./analizar_dll_linux.sh "/path/to/SSF.Gilbarco.D.dll"
#   ./analizar_dll_linux.sh --all
# ============================================================================

set -e

echo ""
echo "========================================================================"
echo "ANALIZADOR DE DLLs - LINUX/WSL"
echo "========================================================================"
echo ""

# ----------------------------------------------------------------------------
# Verificar parámetros
# ----------------------------------------------------------------------------
if [ $# -eq 0 ]; then
    echo "ERROR: Se requiere especificar una DLL o --all"
    echo ""
    echo "Uso:"
    echo "  $0 \"/path/to/archivo.dll\""
    echo "  $0 --all"
    echo ""
    exit 1
fi

# ----------------------------------------------------------------------------
# Verificar herramientas
# ----------------------------------------------------------------------------
echo "[1] Verificando herramientas..."
echo ""

MISSING=""

if ! command -v objdump &> /dev/null; then
    MISSING="$MISSING objdump"
fi

if ! command -v strings &> /dev/null; then
    MISSING="$MISSING strings"
fi

if [ -n "$MISSING" ]; then
    echo "[X] Faltan herramientas:$MISSING"
    echo ""
    echo "Instalar con:"
    echo "  sudo apt install binutils"
    echo ""
    exit 1
fi

echo "[OK] Herramientas disponibles"
echo ""

# ----------------------------------------------------------------------------
# Función para analizar una DLL
# ----------------------------------------------------------------------------
analyze_dll() {
    local DLL_PATH="$1"
    local DLL_NAME=$(basename "$DLL_PATH")
    local OUTPUT_FILE="${DLL_NAME%.dll}_analysis.txt"

    if [ ! -f "$DLL_PATH" ]; then
        echo "[X] Error: El archivo no existe"
        echo "    $DLL_PATH"
        echo ""
        return 1
    fi

    echo "========================================================================"
    echo "ANALIZANDO: $DLL_NAME"
    echo "========================================================================"
    echo "Ruta: $DLL_PATH"
    echo ""

    # Crear reporte
    {
        echo "========================================================================"
        echo "ANÁLISIS DE DLL: $DLL_NAME"
        echo "========================================================================"
        echo "Fecha: $(date)"
        echo "Ruta: $DLL_PATH"
        echo ""

        # Headers
        echo "========================================================================"
        echo "HEADERS"
        echo "========================================================================"
        objdump -p "$DLL_PATH" | head -50
        echo ""

        # Exports (FUNCIONES EXPORTADAS)
        echo "========================================================================"
        echo "FUNCIONES EXPORTADAS (LO MÁS IMPORTANTE)"
        echo "========================================================================"
        objdump -p "$DLL_PATH" | grep -A 9999 "Export Table" | head -200
        echo ""

        # Imports
        echo "========================================================================"
        echo "DEPENDENCIAS (IMPORTS)"
        echo "========================================================================"
        objdump -p "$DLL_PATH" | grep -A 9999 "DLL Name" | head -200
        echo ""

        # Strings interesantes
        echo "========================================================================"
        echo "STRINGS INTERESANTES"
        echo "========================================================================"
        strings "$DLL_PATH" | grep -iE "(pump|authorize|price|status|error|com|serial|port|gpbox|gilbarco|init|connect|total|volume|amount|hose|grade)" | head -100
        echo ""

    } > "$OUTPUT_FILE"

    echo "[2] Análisis headers... OK"
    echo "[3] Extrayendo funciones exportadas... OK"
    echo "[4] Analizando dependencias... OK"
    echo "[5] Extrayendo strings... OK"
    echo ""
    echo "========================================================================"
    echo "ANÁLISIS COMPLETADO"
    echo "========================================================================"
    echo ""
    echo "Reporte guardado en: $OUTPUT_FILE"
    echo ""

    # Mostrar resumen de exports
    echo "========================================================================"
    echo "RESUMEN DE FUNCIONES EXPORTADAS"
    echo "========================================================================"
    echo ""
    objdump -p "$DLL_PATH" | grep -A 100 "Export Table" | grep "\[" | head -30
    echo ""
    echo "Ver reporte completo en: $OUTPUT_FILE"
    echo ""
}

# ----------------------------------------------------------------------------
# Analizar todas las DLLs de SSF
# ----------------------------------------------------------------------------
analyze_all() {
    echo "========================================================================"
    echo "ANÁLISIS MASIVO DE DLLs DE SMART SHIP FACTORY"
    echo "========================================================================"
    echo ""

    # Buscar en Windows (si es WSL)
    SSF_BASE="/mnt/c/Windows/CEM44/Smart Ship Factory/Spirit"

    if [ ! -d "$SSF_BASE" ]; then
        # Buscar en Linux
        SSF_BASE="Smart Ship Factory/Spirit"

        if [ ! -d "$SSF_BASE" ]; then
            echo "[X] Error: No se encuentra Smart Ship Factory"
            echo ""
            echo "Buscado en:"
            echo "  /mnt/c/Windows/CEM44/Smart Ship Factory/Spirit"
            echo "  ./Smart Ship Factory/Spirit"
            echo ""
            exit 1
        fi
    fi

    echo "Base: $SSF_BASE"
    echo ""

    # Crear directorio para reportes
    OUTPUT_DIR="dll_analysis_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$OUTPUT_DIR"

    echo "Reportes se guardarán en: $OUTPUT_DIR"
    echo ""

    # Buscar todas las DLLs
    find "$SSF_BASE" -name "*.dll" -o -name "*.DLL" | while read DLL_FILE; do
        DLL_NAME=$(basename "$DLL_FILE")
        echo "[*] Analizando $DLL_NAME..."

        # Exports
        objdump -p "$DLL_FILE" > "$OUTPUT_DIR/${DLL_NAME%.dll}_full.txt" 2>&1 || true

        # Solo exports
        objdump -p "$DLL_FILE" | grep -A 500 "Export Table" > "$OUTPUT_DIR/${DLL_NAME%.dll}_exports.txt" 2>&1 || true

        # Strings
        strings "$DLL_FILE" | grep -iE "(pump|authorize|price|status|error|com|serial)" > "$OUTPUT_DIR/${DLL_NAME%.dll}_strings.txt" 2>&1 || true

        echo "    → $OUTPUT_DIR/${DLL_NAME%.dll}_exports.txt"
    done

    echo ""
    echo "========================================================================"
    echo "ANÁLISIS MASIVO COMPLETADO"
    echo "========================================================================"
    echo ""
    echo "Todos los reportes están en: $OUTPUT_DIR"
    echo ""
    echo "Abre los archivos *_exports.txt para ver las funciones de cada DLL"
    echo ""
}

# ----------------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------------
if [ "$1" == "--all" ]; then
    analyze_all
else
    analyze_dll "$1"
fi
