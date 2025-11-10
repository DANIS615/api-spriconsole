"""Wrapper autogenerado para SSF.FC.Comm.GPBox.D.

IMPORTANTE:
- Ajusta restype y argtypes según la firma real de cada función.
- Revisa la aplicación original o usa ingeniería inversa para confirmar parámetros.
"""
import ctypes
from ctypes import c_int, c_void_p, c_char_p, c_uint32

DLL_PATH = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"

dll = ctypes.WinDLL(DLL_PATH)

# Funciones exportadas detectadas


def ssfPIDestroyPlugInInstance(*args):
    """Wrapper para ssfPIDestroyPlugInInstance. Ajusta restype/argtypes antes de usar."""
    func = getattr(dll, "ssfPIDestroyPlugInInstance")
    # TODO: Define func.restype y func.argtypes según la firma real
    func.restype = c_int
    # func.argtypes = []
    return func(*args)


def ssfPIGetPlugInConfigParam(*args):
    """Wrapper para ssfPIGetPlugInConfigParam. Ajusta restype/argtypes antes de usar."""
    func = getattr(dll, "ssfPIGetPlugInConfigParam")
    # TODO: Define func.restype y func.argtypes según la firma real
    func.restype = c_int
    # func.argtypes = []
    return func(*args)


def ssfPIGetPlugInInstance(*args):
    """Wrapper para ssfPIGetPlugInInstance. Ajusta restype/argtypes antes de usar."""
    func = getattr(dll, "ssfPIGetPlugInInstance")
    # TODO: Define func.restype y func.argtypes según la firma real
    func.restype = c_int
    # func.argtypes = []
    return func(*args)


def ssfPIInitialize(*args):
    """Wrapper para ssfPIInitialize. Ajusta restype/argtypes antes de usar."""
    func = getattr(dll, "ssfPIInitialize")
    # TODO: Define func.restype y func.argtypes según la firma real
    func.restype = c_int
    # func.argtypes = []
    return func(*args)


def ssfPIShutdown(*args):
    """Wrapper para ssfPIShutdown. Ajusta restype/argtypes antes de usar."""
    func = getattr(dll, "ssfPIShutdown")
    # TODO: Define func.restype y func.argtypes según la firma real
    func.restype = c_int
    # func.argtypes = []
    return func(*args)


if __name__ == "__main__":
    print(f'Wrapper disponible para {DLL_PATH}')
    # Ejemplo: resultado = ssfPIInitialize()
