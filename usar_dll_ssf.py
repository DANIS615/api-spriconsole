#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
USAR DLLs DE SMART SHIP FACTORY

Intenta cargar y usar las DLLs de Gilbarco y GPBox directamente
"""

import ctypes
import sys
import os
from pathlib import Path

try:
    import pefile  # type: ignore
except ImportError:
    pefile = None

# Directorio base de Smart Ship Factory
BASE_DIR = r"C:\Windows\CEM44\Smart Ship Factory\Spirit"

# Directorios que contienen dependencias
DEPENDENCY_DIRS = [
    os.path.join(BASE_DIR, "bin"),
    os.path.join(BASE_DIR, "bin", "pumps"),
    os.path.join(BASE_DIR, "bin", "communications"),
    os.path.join(BASE_DIR, "bin", "addins"),
    os.path.join(BASE_DIR, "lib"),
]

WRAPPERS_DIR = Path("dll_wrappers")

# Rutas a las DLLs
DLL_GILBARCO = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"
DLL_GPBOX = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"
DLL_SERIAL = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.Serial.D.dll"


def preparar_entorno():
    """Asegura que los directorios necesarios estén en la ruta de búsqueda de DLLs."""
    print("=" * 80)
    print("CONFIGURANDO RUTAS DE DLL")
    print("=" * 80)
    agregados = []

    for carpeta in DEPENDENCY_DIRS:
        if os.path.exists(carpeta):
            try:
                os.add_dll_directory(carpeta)
                agregados.append(carpeta)
                print(f"[OK] Agregada ruta de dependencias: {carpeta}")
            except (AttributeError, FileNotFoundError):
                # os.add_dll_directory no disponible en versiones antiguas de Python
                pass

    if agregados:
        extra_path = ";".join(agregados)
        os.environ["PATH"] = f"{extra_path};{os.environ.get('PATH', '')}"
        print(f"[OK] PATH actualizado con {len(agregados)} rutas adicionales\n")
    else:
        print("[ADVERTENCIA] No se agregaron rutas adicionales. Verifica la instalación.\n")


def listar_exportaciones(dll_path, limite=30):
    """Lista exportaciones de una DLL utilizando pefile."""
    if pefile is None:
        print("[INFO] Para listar exportaciones instala 'pefile' en Python 32-bit: pip install pefile")
        return []

    try:
        pe = pefile.PE(dll_path)
        exports = []
        if hasattr(pe, "DIRECTORY_ENTRY_EXPORT"):
            for simbolo in pe.DIRECTORY_ENTRY_EXPORT.symbols:
                nombre = simbolo.name.decode("utf-8", errors="ignore") if simbolo.name else f"ord_{simbolo.ordinal}"
                exports.append(nombre)

        if not exports:
            print("[INFO] La DLL no expone símbolos exportados o están ofuscados.")
            return []

        print(f"[OK] Se encontraron {len(exports)} exportaciones. Primeras {min(limite, len(exports))}:")
        for nombre in exports[:limite]:
            print(f"   - {nombre}")

        if len(exports) > limite:
            print(f"   ... ({len(exports) - limite} símbolos adicionales)")

        return exports

    except Exception as exc:
        print(f"[ADVERTENCIA] No se pudieron listar exportaciones: {exc}")
        return []


def generar_wrapper_stub(dll_path, exports):
    """Genera un stub inicial para facilitar el consumo de la DLL."""
    if not exports:
        return

    WRAPPERS_DIR.mkdir(exist_ok=True)
    dll_name = Path(dll_path).stem
    stub_file = WRAPPERS_DIR / f"{dll_name.lower()}_stub.py"

    header = f'''"""Wrapper autogenerado para {dll_name}.

IMPORTANTE:
- Ajusta restype y argtypes según la firma real de cada función.
- Revisa la aplicación original o usa ingeniería inversa para confirmar parámetros.
"""
import ctypes
from ctypes import c_int, c_void_p, c_char_p, c_uint32

DLL_PATH = r"{dll_path}"

dll = ctypes.WinDLL(DLL_PATH)

'''

    with stub_file.open("w", encoding="utf-8") as fh:
        fh.write(header)
        fh.write("# Funciones exportadas detectadas\n")
        for nombre in exports:
            fh.write(f"\n\ndef {nombre}(*args):\n")
            fh.write(f"    \"\"\"Wrapper para {nombre}. Ajusta restype/argtypes antes de usar.\"\"\"\n")
            fh.write(f"    func = getattr(dll, \"{nombre}\")\n")
            fh.write("    # TODO: Define func.restype y func.argtypes según la firma real\n")
            fh.write("    func.restype = c_int\n")
            fh.write("    # func.argtypes = []\n")
            fh.write("    return func(*args)\n")

        fh.write("\n\nif __name__ == \"__main__\":\n")
        fh.write("    print(f'Wrapper disponible para {DLL_PATH}')\n")
        fh.write("    # Ejemplo: resultado = ssfPIInitialize()\n")

    print(f"[OK] Stub generado: {stub_file}")

def analizar_dll(dll_path):
    """Intenta cargar una DLL y analizar sus funciones"""

    print("="*80)
    print(f"ANALIZANDO: {os.path.basename(dll_path)}")
    print("="*80)
    print(f"Ruta: {dll_path}")
    print()

    if not os.path.exists(dll_path):
        print("[ERROR] El archivo no existe")
        return False

    try:
        # Intentar cargar la DLL
        dll = ctypes.WinDLL(dll_path)
        print("[OK] DLL cargada exitosamente")
        print()

        # La DLL se cargo, pero no sabemos que funciones exporta
        # Necesitamos usar herramientas externas para ver las funciones

        print("INFORMACION:")
        print("- La DLL se cargo correctamente")
        print("- Para ver las funciones exportadas, usa:")
        print()
        print("  Opcion 1 - dumpbin (viene con Visual Studio):")
        print(f'    dumpbin /EXPORTS "{dll_path}"')
        print()
        print("  Opcion 2 - Dependency Walker:")
        print("    https://www.dependencywalker.com/")
        print(f'    Abrir: {dll_path}')
        print()
        print("  Opcion 3 - objdump (viene con MinGW):")
        print(f'    objdump -x "{dll_path}" | findstr "Export"')
        print()

        exports = listar_exportaciones(dll_path)
        generar_wrapper_stub(dll_path, exports)

        return True

    except OSError as e:
        print(f"[ERROR] No se pudo cargar la DLL: {e}")
        print()
        print("POSIBLES CAUSAS:")
        print("- Falta alguna dependencia")
        print("- La DLL es de 32-bit y Python es 64-bit (o viceversa)")
        print("- La DLL es .NET (no nativa)")
        print()
        return False


def probar_funciones_comunes():
    """Intenta llamar funciones comunes que podrian existir"""

    print("="*80)
    print("PROBANDO FUNCIONES COMUNES")
    print("="*80)
    print()

    dll_path = DLL_GILBARCO

    try:
        dll = ctypes.WinDLL(dll_path)
        print(f"[OK] DLL cargada: {os.path.basename(dll_path)}")
        print()

        # Lista de nombres de funciones comunes
        funciones_posibles = [
            'Initialize',
            'Init',
            'Connect',
            'Disconnect',
            'GetPrice',
            'SetPrice',
            'GetStatus',
            'Authorize',
            'Stop',
            'Reset',
            'GetTotalizers',
            'ReadPrice',
            'WritePrice',
            'PumpStatus',
            'PumpControl',
        ]

        print("Probando funciones comunes...")
        print()

        encontradas = []

        for func_name in funciones_posibles:
            try:
                func = getattr(dll, func_name)
                print(f"[OK] Encontrada: {func_name}")
                encontradas.append(func_name)
            except AttributeError:
                pass  # Funcion no existe

        print()
        if encontradas:
            print(f"[OK] Se encontraron {len(encontradas)} funciones:")
            for func in encontradas:
                print(f"  - {func}")
        else:
            print("[INFO] No se encontraron funciones con nombres comunes")
            print("[INFO] Usa dumpbin o Dependency Walker para ver las funciones reales")

    except Exception as e:
        print(f"[ERROR] Error: {e}")


def main():
    """Funcion principal"""

    print()
    print("="*80)
    print("ANALISIS DE DLLs DE SMART SHIP FACTORY")
    print("="*80)
    print()

    preparar_entorno()

    # Analizar cada DLL
    print("\n--- DLL GILBARCO ---\n")
    analizar_dll(DLL_GILBARCO)

    print("\n--- DLL GPBOX ---\n")
    analizar_dll(DLL_GPBOX)

    print("\n--- DLL SERIAL ---\n")
    analizar_dll(DLL_SERIAL)

    # Probar funciones comunes
    print()
    probar_funciones_comunes()

    print()
    print("="*80)
    print("SIGUIENTE PASO")
    print("="*80)
    print()
    print("Para obtener mas informacion, ejecuta:")
    print()
    print("1. Si tienes Visual Studio instalado:")
    print('   dumpbin /EXPORTS "C:\\Windows\\CEM44\\Smart Ship Factory\\Spirit\\bin\\pumps\\SSF.Gilbarco.D.dll"')
    print()
    print("2. Descargar Dependency Walker:")
    print("   https://www.dependencywalker.com/")
    print("   Abrir la DLL y ver la seccion 'Export Functions'")
    print()
    print("3. Usar .NET Reflector o dnSpy si son DLLs .NET:")
    print("   https://github.com/dnSpy/dnSpy")
    print()


if __name__ == "__main__":
    main()
