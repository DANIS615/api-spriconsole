#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
USAR DLLs DE 32 BITS DE SMART SHIP FACTORY
============================================
Script para cargar y usar DLLs nativas de 32 bits con Python de 32 bits

IMPORTANTE:
    Este script DEBE ejecutarse con Python de 32 bits, NO con Python de 64 bits.

Requisitos:
    - Python 32-bit instalado
    - DLLs de Smart Ship Factory (32-bit)

Verificar versión de Python:
    python -c "import struct; print('Python', struct.calcsize('P') * 8, 'bits')"

Uso:
    # Con Python 32-bit:
    python usar_dll_32bit.py

    # O si tienes ambos instalados:
    "C:\Python310-32\python.exe" usar_dll_32bit.py
"""

import ctypes
import sys
import os
import struct
from pathlib import Path


# ===========================================
# VERIFICACIÓN CRÍTICA
# ===========================================

def verificar_python_32bits():
    """Verificar que estamos usando Python de 32 bits"""
    bits = struct.calcsize("P") * 8

    print("=" * 70)
    print("VERIFICACIÓN DE VERSIÓN DE PYTHON")
    print("=" * 70)
    print(f"\n→ Python detectado: {bits} bits")
    print(f"→ Versión: {sys.version}")
    print(f"→ Ejecutable: {sys.executable}")
    print()

    if bits != 32:
        print("✗ ERROR: Este script requiere Python de 32 bits")
        print()
        print("Estás usando Python de 64 bits, que NO puede cargar DLLs de 32 bits.")
        print()
        print("SOLUCIÓN:")
        print()
        print("1. Descargar e instalar Python 32-bit desde:")
        print("   https://www.python.org/downloads/windows/")
        print("   Buscar: 'Windows installer (32-bit)'")
        print()
        print("2. Ejecutar este script con Python 32-bit:")
        print('   "C:\\Python310-32\\python.exe" usar_dll_32bit.py')
        print()
        print("3. O crear un archivo .bat:")
        print("   @echo off")
        print('   "C:\\Python310-32\\python.exe" usar_dll_32bit.py')
        print("   pause")
        print()
        return False

    print("✓ Python de 32 bits confirmado")
    print("  Podemos cargar DLLs de 32 bits correctamente")
    print()
    return True


# ===========================================
# CONFIGURACIÓN DE RUTAS
# ===========================================

# Rutas de Smart Ship Factory
SSF_BASE = r"C:\Windows\CEM44\Smart Ship Factory\Spirit"

DIRS = {
    'pumps': os.path.join(SSF_BASE, 'bin', 'pumps'),
    'communications': os.path.join(SSF_BASE, 'bin', 'communications'),
    'lib': os.path.join(SSF_BASE, 'lib'),
}

# DLLs a intentar cargar
DLLS = {
    'Gilbarco': os.path.join(DIRS['pumps'], 'SSF.Gilbarco.D.dll'),
    'Wayne': os.path.join(DIRS['pumps'], 'SSF.Wayne.D.dll'),
    'GPBox': os.path.join(DIRS['communications'], 'SSF.FC.Comm.GPBox.D.dll'),
    'Serial': os.path.join(DIRS['communications'], 'SSF.FC.Comm.Serial.D.dll'),
    'Tools': os.path.join(DIRS['lib'], 'SSF.Tools.Library.D.dll'),
}


# ===========================================
# FUNCIONES DE CARGA
# ===========================================

def configurar_entorno():
    """Configurar PATH para encontrar las DLLs"""
    print("=" * 70)
    print("CONFIGURANDO ENTORNO")
    print("=" * 70)
    print()

    # Agregar todos los directorios al PATH
    path_dirs = []
    for name, dir_path in DIRS.items():
        if os.path.exists(dir_path):
            path_dirs.append(dir_path)
            print(f"✓ Encontrado: {name}")
            print(f"  Ruta: {dir_path}")
        else:
            print(f"✗ No encontrado: {name}")
            print(f"  Ruta esperada: {dir_path}")

    if not path_dirs:
        print()
        print("✗ No se encontró ningún directorio de Smart Ship Factory")
        print()
        print("Verifica que Smart Ship Factory esté instalado en:")
        print(f"  {SSF_BASE}")
        return False

    # Actualizar PATH
    os.environ['PATH'] = ';'.join(path_dirs) + ';' + os.environ['PATH']

    print()
    print(f"✓ Se agregaron {len(path_dirs)} directorios al PATH")
    print()

    return True


def cargar_dll(dll_path, dll_name):
    """
    Intentar cargar una DLL nativa

    Args:
        dll_path: Ruta completa a la DLL
        dll_name: Nombre descriptivo

    Returns:
        Objeto DLL cargado o None si falló
    """
    print("-" * 70)
    print(f"CARGANDO: {dll_name}")
    print("-" * 70)
    print(f"Archivo: {dll_path}")
    print()

    if not os.path.exists(dll_path):
        print(f"✗ Archivo no encontrado")
        print()
        return None

    try:
        # Intentar cargar con CDLL (convención C)
        dll = ctypes.CDLL(dll_path)
        print(f"✓ DLL cargada exitosamente (CDLL)")
        print()
        return dll

    except OSError as e:
        # Si falla con CDLL, intentar con WinDLL (convención stdcall de Windows)
        try:
            dll = ctypes.WinDLL(dll_path)
            print(f"✓ DLL cargada exitosamente (WinDLL)")
            print()
            return dll
        except OSError as e2:
            print(f"✗ Error al cargar DLL:")
            print(f"  {str(e)}")
            print()
            print("Posibles causas:")
            print("- Falta una DLL de dependencia")
            print("- La DLL está corrupta")
            print("- Incompatibilidad de versión")
            print()
            return None


def listar_funciones_comunes(dll, dll_name):
    """
    Intentar llamar funciones con nombres comunes

    Args:
        dll: Objeto DLL cargado
        dll_name: Nombre de la DLL
    """
    print(f"→ Probando funciones comunes en {dll_name}...")
    print()

    # Funciones comunes que podrían existir
    funciones = [
        # Inicialización
        'Initialize',
        'Init',
        'Startup',
        'Create',

        # Conexión
        'Connect',
        'Open',
        'Start',

        # Control de bombas
        'Authorize',
        'AuthorizePump',
        'PumpAuthorize',
        'Stop',
        'StopPump',
        'PumpStop',
        'Reset',
        'ResetPump',
        'PumpReset',

        # Estado
        'GetStatus',
        'Status',
        'PumpStatus',
        'ReadStatus',

        # Precios
        'GetPrice',
        'ReadPrice',
        'SetPrice',
        'WritePrice',

        # Totalizadores
        'GetTotalizers',
        'ReadTotalizers',
        'Totalizers',

        # Limpieza
        'Close',
        'Disconnect',
        'Shutdown',
        'Cleanup',
    ]

    encontradas = []

    for func_name in funciones:
        try:
            func = getattr(dll, func_name)
            encontradas.append(func_name)
        except AttributeError:
            pass

    if encontradas:
        print(f"✓ Se encontraron {len(encontradas)} funciones:")
        for func in encontradas:
            print(f"  • {func}")
    else:
        print("✗ No se encontraron funciones con nombres comunes")
        print()
        print("RECOMENDACIÓN:")
        print("  Usa Dependency Walker para ver las funciones exportadas:")
        print("  1. Descargar: https://www.dependencywalker.com/")
        print("  2. Abrir la DLL")
        print("  3. Ver 'Export Functions'")

    print()
    return encontradas


def inspeccionar_dll_con_dumpbin(dll_path):
    """
    Instrucciones para inspeccionar DLL con dumpbin

    Args:
        dll_path: Ruta a la DLL
    """
    print("=" * 70)
    print("CÓMO INSPECCIONAR LAS FUNCIONES DE LA DLL")
    print("=" * 70)
    print()
    print("Para ver qué funciones exporta esta DLL, usa una de estas opciones:")
    print()
    print("OPCIÓN 1: dumpbin (si tienes Visual Studio)")
    print("-" * 70)
    print(f'dumpbin /EXPORTS "{dll_path}"')
    print()
    print("OPCIÓN 2: Dependency Walker (gratis)")
    print("-" * 70)
    print("1. Descargar desde: https://www.dependencywalker.com/")
    print(f'2. Abrir: {dll_path}')
    print("3. Ver sección 'Export Functions'")
    print()
    print("OPCIÓN 3: CFF Explorer (gratis)")
    print("-" * 70)
    print("1. Descargar desde: https://ntcore.com/?page_id=388")
    print(f'2. Abrir: {dll_path}')
    print("3. Ir a: Export Directory → Export Functions")
    print()


def ejemplo_uso_dll(dll, dll_name):
    """
    Ejemplo de cómo usar una función de la DLL

    Args:
        dll: Objeto DLL cargado
        dll_name: Nombre de la DLL
    """
    print("=" * 70)
    print(f"EJEMPLO DE USO DE {dll_name}")
    print("=" * 70)
    print()
    print("Una vez que sepas qué funciones exporta la DLL, puedes usarlas así:")
    print()
    print("# Ejemplo: Función que inicializa (sin parámetros)")
    print("# int Initialize()")
    print("try:")
    print("    resultado = dll.Initialize()")
    print("    print(f'Initialize retornó: {resultado}')")
    print("except AttributeError:")
    print("    print('La función Initialize no existe')")
    print()
    print("# Ejemplo: Función con parámetros")
    print("# int PumpAuthorize(int pump_address, float amount)")
    print("dll.PumpAuthorize.argtypes = [ctypes.c_int, ctypes.c_float]")
    print("dll.PumpAuthorize.restype = ctypes.c_int")
    print()
    print("resultado = dll.PumpAuthorize(1, 50.0)  # Bomba 1, $50")
    print("if resultado == 0:")
    print("    print('Autorización exitosa')")
    print()
    print("# Ejemplo: Función que retorna string")
    print("# char* GetStatus(int pump_address)")
    print("dll.GetStatus.argtypes = [ctypes.c_int]")
    print("dll.GetStatus.restype = ctypes.c_char_p")
    print()
    print("status = dll.GetStatus(1)")
    print("print(f'Estado: {status.decode(\"utf-8\")}')")
    print()


# ===========================================
# MAIN
# ===========================================

def main():
    """Función principal"""

    print()
    print("=" * 70)
    print("CARGAR DLLs DE 32 BITS DE SMART SHIP FACTORY")
    print("=" * 70)
    print()

    # 1. Verificar que estamos en Python 32-bit
    if not verificar_python_32bits():
        return

    input("Presiona ENTER para continuar...")

    # 2. Configurar entorno
    if not configurar_entorno():
        return

    # 3. Intentar cargar cada DLL
    dlls_cargadas = {}

    for nombre, ruta in DLLS.items():
        dll = cargar_dll(ruta, nombre)
        if dll:
            dlls_cargadas[nombre] = {
                'dll': dll,
                'ruta': ruta
            }

    print()
    print("=" * 70)
    print("RESUMEN DE CARGA")
    print("=" * 70)
    print(f"\n✓ DLLs cargadas: {len(dlls_cargadas)}/{len(DLLS)}")
    print()

    if not dlls_cargadas:
        print("✗ No se pudo cargar ninguna DLL")
        print()
        print("Posibles causas:")
        print("1. Las DLLs tienen dependencias no satisfechas")
        print("2. Las rutas son incorrectas")
        print("3. Las DLLs están corruptas")
        print()
        return

    # 4. Para cada DLL cargada, buscar funciones
    for nombre, datos in dlls_cargadas.items():
        dll = datos['dll']
        ruta = datos['ruta']

        print()
        funciones = listar_funciones_comunes(dll, nombre)

        if not funciones:
            inspeccionar_dll_con_dumpbin(ruta)

        input(f"\nPresiona ENTER para continuar con {nombre}...")

    # 5. Mostrar ejemplo de uso
    if dlls_cargadas:
        primer_dll_nombre = list(dlls_cargadas.keys())[0]
        primer_dll = dlls_cargadas[primer_dll_nombre]['dll']

        ejemplo_uso_dll(primer_dll, primer_dll_nombre)

    # Resumen final
    print()
    print("=" * 70)
    print("PRÓXIMOS PASOS")
    print("=" * 70)
    print()
    print("1. Usa Dependency Walker o dumpbin para ver las funciones exportadas")
    print()
    print("2. Una vez que sepas los nombres de las funciones, crea un wrapper:")
    print()
    print("   # pump_wrapper.py")
    print("   import ctypes")
    print("   ")
    print("   class GilbarcoWrapper:")
    print("       def __init__(self, dll_path):")
    print("           self.dll = ctypes.CDLL(dll_path)")
    print("           self._setup_functions()")
    print("       ")
    print("       def _setup_functions(self):")
    print("           # Configurar firma de cada función")
    print("           self.dll.PumpAuthorize.argtypes = [ctypes.c_int, ctypes.c_float]")
    print("           self.dll.PumpAuthorize.restype = ctypes.c_int")
    print("       ")
    print("       def authorize(self, pump_address, amount):")
    print("           return self.dll.PumpAuthorize(pump_address, amount)")
    print()
    print("3. O considera usar el servicio C# de 32 bits (más robusto)")
    print("   Ver: servicio_bombas_csharp/ en el repositorio")
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
