#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
USAR DLLs DE SMART SHIP FACTORY

Intenta cargar y usar las DLLs de Gilbarco y GPBox directamente
"""

import ctypes
import sys
import os

# Rutas a las DLLs
DLL_GILBARCO = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"
DLL_GPBOX = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"
DLL_SERIAL = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.Serial.D.dll"

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
        dll = ctypes.CDLL(dll_path)
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
        dll = ctypes.CDLL(dll_path)
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
