#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EXPLORADOR DE DLL GPBOX (CTYPES)
=================================
La DLL es nativa (C/C++), no .NET, así que usamos ctypes
"""

import ctypes
import sys
import os

def main():
    print("=" * 70)
    print("  EXPLORADOR DE DLL GPBOX (NATIVA)")
    print("=" * 70)
    print()

    # Configurar rutas
    dll_dir = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications"
    dll_name = "SSF.FC.Comm.GPBox.D.dll"
    dll_path = os.path.join(dll_dir, dll_name)

    print(f"[1] Verificando DLL...")
    print(f"    Ruta: {dll_path}")

    if not os.path.exists(dll_path):
        print(f"    [!] ERROR: DLL no encontrada")
        return 1

    print(f"    [+] DLL encontrada")
    print()

    # Intentar cargar con ctypes
    print(f"[2] Cargando DLL con ctypes...")
    try:
        # Cambiar al directorio de la DLL (por si tiene dependencias)
        original_dir = os.getcwd()
        os.chdir(dll_dir)

        # Cargar DLL
        dll = ctypes.CDLL(dll_path)
        print(f"    [+] DLL cargada exitosamente con CDLL")

    except OSError as e:
        print(f"    [!] Error con CDLL: {e}")
        print(f"    [*] Intentando con WinDLL...")

        try:
            dll = ctypes.WinDLL(dll_path)
            print(f"    [+] DLL cargada exitosamente con WinDLL")
        except OSError as e2:
            print(f"    [!] Error con WinDLL: {e2}")
            print()
            print("    La DLL tiene dependencias faltantes.")
            print("    Buscando DLLs adicionales en el mismo directorio...")

            # Listar otras DLLs
            dlls_encontradas = [f for f in os.listdir(dll_dir) if f.endswith('.dll')]
            print(f"\n    DLLs en el directorio ({len(dlls_encontradas)}):")
            for dll_file in dlls_encontradas[:20]:
                print(f"      - {dll_file}")
            if len(dlls_encontradas) > 20:
                print(f"      ... y {len(dlls_encontradas) - 20} más")

            os.chdir(original_dir)
            return 1

    print()

    # Buscar funciones exportadas conocidas
    print(f"[3] Probando funciones conocidas...")
    print()

    funciones_conocidas = [
        "ssfPIInitialize",
        "ssfPIShutdown",
        "ssfPIGetPlugInInstance",
        "ssfPIDestroyPlugInInstance",
        "ssfPIGetPlugInConfigParam"
    ]

    funciones_encontradas = []

    for func_name in funciones_conocidas:
        try:
            func = getattr(dll, func_name)
            print(f"    [+] {func_name} - ENCONTRADA")
            funciones_encontradas.append(func_name)
        except AttributeError:
            print(f"    [-] {func_name} - No encontrada")

    print()

    if funciones_encontradas:
        print(f"[+] {len(funciones_encontradas)} funciones encontradas")
        print()
        print("Estas son funciones de Plugin Interface (PI)")
        print("Necesitamos:")
        print("  1. Llamar ssfPIInitialize() primero")
        print("  2. Obtener instancia con ssfPIGetPlugInInstance()")
        print("  3. Usar la instancia para comunicación")
        print()

        # Intentar llamar Initialize
        print(f"[4] Intentando inicializar...")
        try:
            # ssfPIInitialize típicamente recibe un config path
            init_func = getattr(dll, "ssfPIInitialize")

            # Configurar tipos (esto es tentativo)
            init_func.restype = ctypes.c_int
            init_func.argtypes = [ctypes.c_char_p]

            config_path = r"C:\Windows\CEM44\gpbox.ini"
            result = init_func(config_path.encode('utf-8'))

            print(f"    [*] ssfPIInitialize() retornó: {result}")
            if result == 0:
                print(f"    [+] Inicialización exitosa")
            else:
                print(f"    [!] Código de error: {result}")

        except Exception as e:
            print(f"    [!] Error al inicializar: {e}")
            print(f"    [*] Esto es normal - necesitamos conocer los parámetros exactos")

    else:
        print(f"[!] No se encontraron funciones conocidas")
        print()
        print("La DLL puede usar nombres de función diferentes o estar ofuscada")

    print()

    # Buscar otras DLLs relacionadas que puedan ayudar
    print(f"[5] Buscando DLLs relacionadas...")
    print()

    patron_busqueda = ["SSF", "Comm", "Gilbarco", "Pump", "GPBox"]
    dlls_relacionadas = []

    for archivo in os.listdir(dll_dir):
        if archivo.endswith('.dll'):
            for patron in patron_busqueda:
                if patron.lower() in archivo.lower():
                    dlls_relacionadas.append(archivo)
                    break

    if dlls_relacionadas:
        print(f"    DLLs relacionadas encontradas ({len(dlls_relacionadas)}):")
        for dll_file in dlls_relacionadas:
            print(f"      - {dll_file}")

    print()

    os.chdir(original_dir)

    print("=" * 70)
    print("[*] Exploración completada")
    print("=" * 70)
    print()
    print("CONCLUSIÓN:")
    print("  - La DLL es nativa (C/C++), no .NET")
    print("  - Usa interfaz de Plugin (ssfPI*)")
    print("  - Necesita configuración desde gpbox.ini")
    print()
    print("SIGUIENTE PASO:")
    print("  - Revisar usar_dll_ssf.py para ver uso correcto")
    print("  - O pasar directo a Opción 2: Reverse Engineering del protocolo")
    print()

    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\n\n[!] Cancelado por usuario")
        sys.exit(1)
    except Exception as e:
        print(f"\n[!] ERROR FATAL: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
