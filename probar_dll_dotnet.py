#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
PROBAR DLLs .NET DE SMART SHIP FACTORY
========================================
Script para cargar y probar las DLLs de SSF usando pythonnet

Requisitos:
    pip install pythonnet

Uso:
    python probar_dll_dotnet.py
"""

import sys
import os
from pathlib import Path

# ===========================================
# CONFIGURACIÓN DE RUTAS
# ===========================================

# Rutas base de Smart Ship Factory
SSF_BASE = r"C:\Windows\CEM44\Smart Ship Factory\Spirit"

# Directorios de DLLs
DIRS = {
    'pumps': os.path.join(SSF_BASE, 'bin', 'pumps'),
    'communications': os.path.join(SSF_BASE, 'bin', 'communications'),
    'lib': os.path.join(SSF_BASE, 'lib'),
    'addins': os.path.join(SSF_BASE, 'bin', 'addins'),
}

# Lista de DLLs disponibles
DLLS = {
    'Gilbarco': 'SSF.Gilbarco.D',
    'Wayne': 'SSF.Wayne.D',
    'GPBox': 'SSF.FC.Comm.GPBox.D',
    'Serial': 'SSF.FC.Comm.Serial.D',
    'TCP': 'SSF.FC.Comm.TCP.D',
    'PlugInServer': 'SSF.PlugInServer.D',
    'RouterMessage': 'SSF.Router.Message.D',
    'Tools': 'SSF.Tools.Library.D',
}


def configurar_entorno():
    """Configurar entorno para cargar DLLs"""
    print("=" * 70)
    print("CONFIGURANDO ENTORNO")
    print("=" * 70)

    # Agregar directorios al PATH
    path_dirs = []
    for name, dir_path in DIRS.items():
        if os.path.exists(dir_path):
            path_dirs.append(dir_path)
            sys.path.append(dir_path)
            print(f"✓ Agregado al PATH: {name}")
        else:
            print(f"✗ No encontrado: {dir_path}")

    # Actualizar variable de entorno PATH
    if path_dirs:
        os.environ['PATH'] = ';'.join(path_dirs) + ';' + os.environ['PATH']
        print(f"\n✓ Se agregaron {len(path_dirs)} directorios al PATH")
    else:
        print("\n✗ No se encontraron directorios de DLLs")
        print("   Verifica la instalación de Smart Ship Factory")
        return False

    return True


def cargar_clr():
    """Cargar el módulo CLR de pythonnet"""
    print("\n" + "=" * 70)
    print("CARGANDO PYTHONNET")
    print("=" * 70)

    try:
        import clr
        print("✓ pythonnet importado correctamente")
        return clr
    except ImportError:
        print("✗ Error: pythonnet no está instalado")
        print("\n  Instalar con:")
        print("    pip install pythonnet")
        print()
        return None


def cargar_dll(clr, dll_name, dll_ref):
    """
    Cargar una DLL específica

    Args:
        clr: Módulo CLR de pythonnet
        dll_name: Nombre descriptivo
        dll_ref: Nombre de referencia de la DLL
    """
    print(f"\n→ Cargando {dll_name} ({dll_ref})...")

    try:
        clr.AddReference(dll_ref)
        print(f"  ✓ {dll_name} cargada correctamente")
        return True

    except Exception as e:
        print(f"  ✗ Error al cargar {dll_name}:")
        print(f"     {str(e)}")
        return False


def inspeccionar_dll(clr, dll_ref):
    """
    Inspeccionar y mostrar contenido de una DLL

    Args:
        clr: Módulo CLR
        dll_ref: Referencia de la DLL
    """
    print("\n" + "-" * 70)
    print(f"INSPECCIONANDO: {dll_ref}")
    print("-" * 70)

    try:
        import System
        assembly = clr.System.Reflection.Assembly.Load(dll_ref)

        tipos = list(assembly.GetTypes())
        print(f"\n✓ Se encontraron {len(tipos)} tipos (clases/interfaces)\n")

        for i, tipo in enumerate(tipos[:10], 1):  # Mostrar solo los primeros 10
            print(f"{i}. 📦 {tipo.FullName}")

            # Mostrar algunos métodos públicos
            metodos = [m for m in tipo.GetMethods() if not m.Name.startswith('_')]
            if metodos:
                print(f"   Métodos ({len(metodos)}):")
                for metodo in metodos[:5]:  # Primeros 5 métodos
                    params = [p.ParameterType.Name for p in metodo.GetParameters()]
                    params_str = ", ".join(params) if params else "sin parámetros"
                    print(f"      • {metodo.Name}({params_str}) → {metodo.ReturnType.Name}")

            # Mostrar propiedades
            props = list(tipo.GetProperties())
            if props:
                print(f"   Propiedades ({len(props)}):")
                for prop in props[:3]:  # Primeras 3 propiedades
                    print(f"      • {prop.Name}: {prop.PropertyType.Name}")

            print()

        if len(tipos) > 10:
            print(f"   ... y {len(tipos) - 10} tipos más\n")

        return tipos

    except Exception as e:
        print(f"✗ Error al inspeccionar DLL: {e}")
        return []


def probar_gilbarco(clr):
    """
    Intentar usar la DLL de Gilbarco

    Args:
        clr: Módulo CLR
    """
    print("\n" + "=" * 70)
    print("PROBANDO DLL DE GILBARCO")
    print("=" * 70)

    try:
        # Importar namespace (esto puede variar según la DLL)
        print("\n→ Intentando importar namespaces...")

        # Obtener el ensamblado
        import System
        assembly = clr.System.Reflection.Assembly.Load("SSF.Gilbarco.D")

        # Buscar clases principales
        tipos = list(assembly.GetTypes())
        print(f"\n✓ Encontrados {len(tipos)} tipos")

        # Intentar instanciar clases que parezcan controladores
        for tipo in tipos:
            nombre = tipo.Name.lower()
            if 'pump' in nombre or 'controller' in nombre or 'gilbarco' in nombre:
                print(f"\n→ Intentando instanciar: {tipo.FullName}")

                try:
                    # Obtener el tipo desde el namespace
                    tipo_completo = tipo

                    # Intentar crear instancia
                    instancia = System.Activator.CreateInstance(tipo_completo)
                    print(f"  ✓ Instancia creada exitosamente")

                    # Listar métodos disponibles
                    print(f"  → Métodos públicos:")
                    for metodo in tipo.GetMethods():
                        if not metodo.Name.startswith('_') and not metodo.Name.startswith('get_') and not metodo.Name.startswith('set_'):
                            params = [p.ParameterType.Name for p in metodo.GetParameters()]
                            print(f"     • {metodo.Name}({', '.join(params)})")

                    return instancia

                except Exception as e:
                    print(f"  ✗ No se pudo instanciar: {e}")

        print("\n⚠️  No se encontró una clase principal para instanciar")
        print("   Revisa la documentación de SSF o usa dnSpy para inspeccionar la DLL")

    except Exception as e:
        print(f"\n✗ Error: {e}")

    return None


def main():
    """Función principal"""

    print()
    print("=" * 70)
    print("  PROBAR DLLs .NET DE SMART SHIP FACTORY")
    print("=" * 70)
    print()

    # 1. Configurar entorno
    if not configurar_entorno():
        return

    # 2. Cargar pythonnet
    clr = cargar_clr()
    if not clr:
        return

    print("\n" + "=" * 70)
    print("CARGANDO DLLs")
    print("=" * 70)

    # 3. Intentar cargar cada DLL
    dlls_cargadas = {}
    for nombre, ref in DLLS.items():
        if cargar_dll(clr, nombre, ref):
            dlls_cargadas[nombre] = ref

    print(f"\n✓ Se cargaron {len(dlls_cargadas)}/{len(DLLS)} DLLs")

    if not dlls_cargadas:
        print("\n✗ No se pudo cargar ninguna DLL")
        print("\nPosibles causas:")
        print("1. Las DLLs no son .NET (son nativas C/C++)")
        print("2. Faltan dependencias")
        print("3. Versión incompatible de .NET")
        print("\nSoluciones:")
        print("- Usa dnSpy para verificar que sean DLLs .NET")
        print("- Si son nativas, usa ctypes en lugar de pythonnet")
        print("- Verifica que estén todas las DLLs en el directorio")
        return

    # 4. Inspeccionar DLLs cargadas
    print("\n" + "=" * 70)
    print("¿DESEAS INSPECCIONAR LAS DLLs?")
    print("=" * 70)
    print("\nEsto mostrará las clases y métodos disponibles en cada DLL")

    respuesta = input("\n¿Inspeccionar? (s/n): ").strip().lower()

    if respuesta == 's':
        for nombre, ref in list(dlls_cargadas.items())[:3]:  # Inspeccionar las 3 primeras
            inspeccionar_dll(clr, ref)
            input("\nPresiona ENTER para continuar...")

    # 5. Probar uso de Gilbarco
    if 'Gilbarco' in dlls_cargadas:
        print("\n" + "=" * 70)
        print("¿DESEAS PROBAR LA DLL DE GILBARCO?")
        print("=" * 70)

        respuesta = input("\n¿Probar? (s/n): ").strip().lower()

        if respuesta == 's':
            probar_gilbarco(clr)

    # Resumen final
    print("\n" + "=" * 70)
    print("RESUMEN FINAL")
    print("=" * 70)
    print(f"\n✓ DLLs cargadas exitosamente: {len(dlls_cargadas)}")
    print("\nDLLs cargadas:")
    for nombre in dlls_cargadas.keys():
        print(f"  • {nombre}")

    print("\n" + "=" * 70)
    print("PRÓXIMOS PASOS")
    print("=" * 70)
    print("""
1. Si las DLLs cargaron correctamente:
   → Usa dnSpy para ver la documentación completa
   → Crea un script específico para tu caso de uso

2. Si NO cargaron:
   → Verifica que sean DLLs .NET (no nativas)
   → Usa "usar_dll_ssf.py" si son DLLs nativas (C/C++)

3. Para inspección detallada:
   → Descargar dnSpy: https://github.com/dnSpy/dnSpy
   → Abrir la DLL y ver todos los métodos disponibles

4. Para crear tu propio sistema:
   → Considera usar el protocolo directo (gilbarco_pump_controller.py)
   → O crear un servicio C# intermedio (ver GUIA_CONSUMIR_DLLS.md)
    """)

    print("\n✓ Script finalizado")
    print()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado por el usuario")
    except Exception as e:
        print(f"\n\n✗ Error inesperado: {e}")
        import traceback
        traceback.print_exc()
