[1mdiff --git a/usar_dll_ssf.py b/usar_dll_ssf.py[m
[1mindex 803f818..6019774 100644[m
[1m--- a/usar_dll_ssf.py[m
[1m+++ b/usar_dll_ssf.py[m
[36m@@ -9,12 +9,132 @@[m [mIntenta cargar y usar las DLLs de Gilbarco y GPBox directamente[m
 import ctypes[m
 import sys[m
 import os[m
[32m+[m[32mfrom pathlib import Path[m
[32m+[m
[32m+[m[32mtry:[m
[32m+[m[32m    import pefile  # type: ignore[m
[32m+[m[32mexcept ImportError:[m
[32m+[m[32m    pefile = None[m
[32m+[m
[32m+[m[32m# Directorio base de Smart Ship Factory[m
[32m+[m[32mBASE_DIR = r"C:\Windows\CEM44\Smart Ship Factory\Spirit"[m
[32m+[m
[32m+[m[32m# Directorios que contienen dependencias[m
[32m+[m[32mDEPENDENCY_DIRS = [[m
[32m+[m[32m    os.path.join(BASE_DIR, "bin"),[m
[32m+[m[32m    os.path.join(BASE_DIR, "bin", "pumps"),[m
[32m+[m[32m    os.path.join(BASE_DIR, "bin", "communications"),[m
[32m+[m[32m    os.path.join(BASE_DIR, "bin", "addins"),[m
[32m+[m[32m    os.path.join(BASE_DIR, "lib"),[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mWRAPPERS_DIR = Path("dll_wrappers")[m
 [m
 # Rutas a las DLLs[m
 DLL_GILBARCO = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"[m
 DLL_GPBOX = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"[m
 DLL_SERIAL = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.Serial.D.dll"[m
 [m
[32m+[m
[32m+[m[32mdef preparar_entorno():[m
[32m+[m[32m    """Asegura que los directorios necesarios estén en la ruta de búsqueda de DLLs."""[m
[32m+[m[32m    print("=" * 80)[m
[32m+[m[32m    print("CONFIGURANDO RUTAS DE DLL")[m
[32m+[m[32m    print("=" * 80)[m
[32m+[m[32m    agregados = [][m
[32m+[m
[32m+[m[32m    for carpeta in DEPENDENCY_DIRS:[m
[32m+[m[32m        if os.path.exists(carpeta):[m
[32m+[m[32m            try:[m
[32m+[m[32m                os.add_dll_directory(carpeta)[m
[32m+[m[32m                agregados.append(carpeta)[m
[32m+[m[32m                print(f"[OK] Agregada ruta de dependencias: {carpeta}")[m
[32m+[m[32m            except (AttributeError, FileNotFoundError):[m
[32m+[m[32m                # os.add_dll_directory no disponible en versiones antiguas de Python[m
[32m+[m[32m                pass[m
[32m+[m
[32m+[m[32m    if agregados:[m
[32m+[m[32m        extra_path = ";".join(agregados)[m
[32m+[m[32m        os.environ["PATH"] = f"{extra_path};{os.environ.get('PATH', '')}"[m
[32m+[m[32m        print(f"[OK] PATH actualizado con {len(agregados)} rutas adicionales\n")[m
[32m+[m[32m    else:[m
[32m+[m[32m        print("[ADVERTENCIA] No se agregaron rutas adicionales. Verifica la instalación.\n")[m
[32m+[m
[32m+[m
[32m+[m[32mdef listar_exportaciones(dll_path, limite=30):[m
[32m+[m[32m    """Lista exportaciones de una DLL utilizando pefile."""[m
[32m+[m[32m    if pefile is None:[m
[32m+[m[32m        print("[INFO] Para listar exportaciones instala 'pefile' en Python 32-bit: pip install pefile")[m
[32m+[m[32m        return [][m
[32m+[m
[32m+[m[32m    try:[m
[32m+[m[32m        pe = pefile.PE(dll_path)[m
[32m+[m[32m        exports = [][m
[32m+[m[32m        if hasattr(pe, "DIRECTORY_ENTRY_EXPORT"):[m
[32m+[m[32m            for simbolo in pe.DIRECTORY_ENTRY_EXPORT.symbols:[m
[32m+[m[32m                nombre = simbolo.name.decode("utf-8", errors="ignore") if simbolo.name else f"ord_{simbolo.ordinal}"[m
[32m+[m[32m                exports.append(nombre)[m
[32m+[m
[32m+[m[32m        if not exports:[m
[32m+[m[32m            print("[INFO] La DLL no expone símbolos exportados o están ofuscados.")[m
[32m+[m[32m            return [][m
[32m+[m
[32m+[m[32m        print(f"[OK] Se encontraron {len(exports)} exportaciones. Primeras {min(limite, len(exports))}:")[m
[32m+[m[32m        for nombre in exports[:limite]:[m
[32m+[m[32m            print(f"   - {nombre}")[m
[32m+[m
[32m+[m[32m        if len(exports) > limite:[m
[32m+[m[32m            print(f"   ... ({len(exports) - limite} símbolos adicionales)")[m
[32m+[m
[32m+[m[32m        return exports[m
[32m+[m
[32m+[m[32m    except Exception as exc:[m
[32m+[m[32m        print(f"[ADVERTENCIA] No se pudieron listar exportaciones: {exc}")[m
[32m+[m[32m        return [][m
[32m+[m
[32m+[m
[32m+[m[32mdef generar_wrapper_stub(dll_path, exports):[m
[32m+[m[32m    """Genera un stub inicial para facilitar el consumo de la DLL."""[m
[32m+[m[32m    if not exports:[m
[32m+[m[32m        return[m
[32m+[m
[32m+[m[32m    WRAPPERS_DIR.mkdir(exist_ok=True)[m
[32m+[m[32m    dll_name = Path(dll_path).stem[m
[32m+[m[32m    stub_file = WRAPPERS_DIR / f"{dll_name.lower()}_stub.py"[m
[32m+[m
[32m+[m[32m    header = f'''"""Wrapper autogenerado para {dll_name}.[m
[32m+[m
[32m+[m[32mIMPORTANTE:[m
[32m+[m[32m- Ajusta restype y argtypes según la firma real de cada función.[m
[32m+[m[32m- Revisa la aplicación original o usa ingeniería inversa para confirmar parámetros.[m
[32m+[m[32m"""[m
[32m+[m[32mimport ctypes[m
[32m+[m[32mfrom ctypes import c_int, c_void_p, c_char_p, c_uint32[m
[32m+[m
[32m+[m[32mDLL_PATH = r"{dll_path}"[m
[32m+[m
[32m+[m[32mdll = ctypes.WinDLL(DLL_PATH)[m
[32m+[m
[32m+[m[32m'''[m
[32m+[m
[32m+[m[32m    with stub_file.open("w", encoding="utf-8") as fh:[m
[32m+[m[32m        fh.write(header)[m
[32m+[m[32m        fh.write("# Funciones exportadas detectadas\n")[m
[32m+[m[32m        for nombre in exports:[m
[32m+[m[32m            fh.write(f"\n\ndef {nombre}(*args):\n")[m
[32m+[m[32m            fh.write(f"    \"\"\"Wrapper para {nombre}. Ajusta restype/argtypes antes de usar.\"\"\"\n")[m
[32m+[m[32m            fh.write(f"    func = getattr(dll, \"{nombre}\")\n")[m
[32m+[m[32m            fh.write("    # TODO: Define func.restype y func.argtypes según la firma real\n")[m
[32m+[m[32m            fh.write("    func.restype = c_int\n")[m
[32m+[m[32m            fh.write("    # func.argtypes = []\n")[m
[32m+[m[32m            fh.write("    return func(*args)\n")[m
[32m+[m
[32m+[m[32m        fh.write("\n\nif __name__ == \"__main__\":\n")[m
[32m+[m[32m        fh.write("    print(f'Wrapper disponible para {DLL_PATH}')\n")[m
[32m+[m[32m        fh.write("    # Ejemplo: resultado = ssfPIInitialize()\n")[m
[32m+[m
[32m+[m[32m    print(f"[OK] Stub generado: {stub_file}")[m
[32m+[m
 def analizar_dll(dll_path):[m
     """Intenta cargar una DLL y analizar sus funciones"""[m
 [m
[36m@@ -30,7 +150,7 @@[m [mdef analizar_dll(dll_path):[m
 [m
     try:[m
         # Intentar cargar la DLL[m
[31m-        dll = ctypes.CDLL(dll_path)[m
[32m+[m[32m        dll = ctypes.WinDLL(dll_path)[m
         print("[OK] DLL cargada exitosamente")[m
         print()[m
 [m
[36m@@ -52,6 +172,9 @@[m [mdef analizar_dll(dll_path):[m
         print(f'    objdump -x "{dll_path}" | findstr "Export"')[m
         print()[m
 [m
[32m+[m[32m        exports = listar_exportaciones(dll_path)[m
[32m+[m[32m        generar_wrapper_stub(dll_path, exports)[m
[32m+[m
         return True[m
 [m
     except OSError as e:[m
[36m@@ -76,7 +199,7 @@[m [mdef probar_funciones_comunes():[m
     dll_path = DLL_GILBARCO[m
 [m
     try:[m
[31m-        dll = ctypes.CDLL(dll_path)[m
[32m+[m[32m        dll = ctypes.WinDLL(dll_path)[m
         print(f"[OK] DLL cargada: {os.path.basename(dll_path)}")[m
         print()[m
 [m
[36m@@ -134,6 +257,8 @@[m [mdef main():[m
     print("="*80)[m
     print()[m
 [m
[32m+[m[32m    preparar_entorno()[m
[32m+[m
     # Analizar cada DLL[m
     print("\n--- DLL GILBARCO ---\n")[m
     analizar_dll(DLL_GILBARCO)[m
