#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
EXPLORADOR DE DLL GPBOX
========================
Script para explorar y probar la DLL SSF.FC.Comm.GPBox.D.dll

Objetivo:
1. Cargar la DLL
2. Ver qué clases/métodos expone
3. Identificar funciones para comunicación con bombas
"""

import sys
import os
import clr

def main():
    print("=" * 70)
    print("  EXPLORADOR DE DLL GPBOX")
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

    # Agregar directorio al path
    print(f"[2] Configurando rutas...")
    sys.path.append(dll_dir)
    os.chdir(dll_dir)
    print(f"    [+] Directorio agregado al path")
    print()

    # Intentar cargar la DLL
    print(f"[3] Cargando DLL...")
    try:
        clr.AddReference("SSF.FC.Comm.GPBox.D")
        print(f"    [+] DLL cargada exitosamente")
    except Exception as e:
        print(f"    [!] ERROR al cargar DLL: {e}")
        print()
        print("    Posibles causas:")
        print("    - Falta .NET Framework 4.x o superior")
        print("    - DLL corrupta o incompatible")
        print("    - Dependencias faltantes")
        return 1

    print()

    # Explorar contenido
    print(f"[4] Explorando contenido de la DLL...")
    print()

    try:
        # Importar el módulo
        import SSF
        print("[+] Namespace 'SSF' disponible")
        print(f"    Contenido: {dir(SSF)}")
        print()

        # Intentar acceder a sub-namespaces
        if hasattr(SSF, 'FC'):
            print("[+] Namespace 'SSF.FC' disponible")
            print(f"    Contenido: {dir(SSF.FC)}")
            print()

            if hasattr(SSF.FC, 'Comm'):
                print("[+] Namespace 'SSF.FC.Comm' disponible")
                print(f"    Contenido: {dir(SSF.FC.Comm)}")
                print()

                if hasattr(SSF.FC.Comm, 'GPBox'):
                    print("[+] Namespace 'SSF.FC.Comm.GPBox' disponible")
                    print(f"    Contenido: {dir(SSF.FC.Comm.GPBox)}")
                    print()

                    # Explorar cada clase/tipo encontrado
                    gpbox_ns = SSF.FC.Comm.GPBox
                    items = [item for item in dir(gpbox_ns) if not item.startswith('_')]

                    print(f"[5] Explorando {len(items)} items en GPBox namespace...")
                    print()

                    for item_name in items:
                        try:
                            item = getattr(gpbox_ns, item_name)
                            print(f"  [{item_name}]")
                            print(f"    Tipo: {type(item)}")

                            # Si es una clase, ver sus métodos
                            if hasattr(item, '__dict__') or str(type(item)).find('type') != -1:
                                methods = [m for m in dir(item) if not m.startswith('_')]
                                if methods:
                                    print(f"    Métodos/Propiedades ({len(methods)}):")
                                    for method in methods[:10]:  # Primeros 10
                                        print(f"      - {method}")
                                    if len(methods) > 10:
                                        print(f"      ... y {len(methods) - 10} más")
                            print()

                        except Exception as e:
                            print(f"    [!] Error explorando: {e}")
                            print()

    except Exception as e:
        print(f"[!] ERROR durante exploración: {e}")
        import traceback
        traceback.print_exc()
        return 1

    print()
    print("=" * 70)
    print("[+] Exploración completada")
    print("=" * 70)
    print()
    print("Próximos pasos:")
    print("  1. Identificar la clase principal de comunicación")
    print("  2. Ver métodos para: Initialize, Authorize, GetStatus, etc.")
    print("  3. Crear wrapper Python funcional")
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
