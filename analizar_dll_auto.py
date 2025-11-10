#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
ANALIZADOR AUTOMÁTICO DE DLLs
===============================
Extrae toda la información útil de las DLLs de Smart Ship Factory
sin necesidad de cargarlas.

Requisitos:
    pip install pefile

Uso:
    python analizar_dll_auto.py "C:\ruta\a\SSF.Gilbarco.D.dll"

    O para analizar todas:
    python analizar_dll_auto.py --all
"""

import sys
import os
import struct
import json
from pathlib import Path

try:
    import pefile
except ImportError:
    print("=" * 70)
    print("ERROR: Se requiere la librería 'pefile'")
    print("=" * 70)
    print()
    print("Instalar con:")
    print("    pip install pefile")
    print()
    sys.exit(1)


class DLLAnalyzer:
    """Analizador automático de DLLs"""

    def __init__(self, dll_path):
        self.dll_path = dll_path
        self.pe = None
        self.info = {
            'path': dll_path,
            'exists': False,
            'is_32bit': None,
            'is_dll': False,
            'exports': [],
            'imports': [],
            'strings': [],
            'sections': [],
            'timestamp': None,
            'characteristics': []
        }

    def analyze(self):
        """Analizar la DLL completamente"""

        print("=" * 70)
        print(f"ANALIZANDO: {os.path.basename(self.dll_path)}")
        print("=" * 70)
        print(f"Ruta: {self.dll_path}")
        print()

        # Verificar que existe
        if not os.path.exists(self.dll_path):
            print("✗ El archivo no existe")
            return self.info

        self.info['exists'] = True

        try:
            # Cargar PE
            self.pe = pefile.PE(self.dll_path)

            # Información básica
            self._analyze_headers()

            # Exports (FUNCIONES EXPORTADAS - LO MÁS IMPORTANTE)
            self._analyze_exports()

            # Imports (dependencias)
            self._analyze_imports()

            # Strings interesantes
            self._analyze_strings()

            # Secciones
            self._analyze_sections()

            print("\n✓ Análisis completado")

        except pefile.PEFormatError as e:
            print(f"✗ Error: No es un archivo PE válido ({e})")
        except Exception as e:
            print(f"✗ Error inesperado: {e}")
        finally:
            if self.pe:
                self.pe.close()

        return self.info

    def _analyze_headers(self):
        """Analizar headers PE"""

        print("-" * 70)
        print("INFORMACIÓN BÁSICA")
        print("-" * 70)

        # Arquitectura
        machine = self.pe.FILE_HEADER.Machine
        if machine == 0x14c:  # IMAGE_FILE_MACHINE_I386
            self.info['is_32bit'] = True
            print("✓ Arquitectura: 32 bits (x86)")
        elif machine == 0x8664:  # IMAGE_FILE_MACHINE_AMD64
            self.info['is_32bit'] = False
            print("✓ Arquitectura: 64 bits (x64)")
        else:
            print(f"? Arquitectura: Desconocida (0x{machine:x})")

        # Tipo
        characteristics = self.pe.FILE_HEADER.Characteristics
        if characteristics & 0x2000:  # IMAGE_FILE_DLL
            self.info['is_dll'] = True
            print("✓ Tipo: DLL")
        else:
            print("? Tipo: EXE o desconocido")

        # Timestamp
        timestamp = self.pe.FILE_HEADER.TimeDateStamp
        import datetime
        dt = datetime.datetime.fromtimestamp(timestamp)
        self.info['timestamp'] = dt.isoformat()
        print(f"✓ Compilado: {dt.strftime('%Y-%m-%d %H:%M:%S')}")

        # Entry point
        if hasattr(self.pe, 'OPTIONAL_HEADER'):
            entry_point = self.pe.OPTIONAL_HEADER.AddressOfEntryPoint
            print(f"✓ Entry Point: 0x{entry_point:x}")

        print()

    def _analyze_exports(self):
        """Analizar funciones exportadas"""

        print("-" * 70)
        print("FUNCIONES EXPORTADAS (LO MÁS IMPORTANTE)")
        print("-" * 70)
        print()

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
            print("✗ Esta DLL no exporta funciones públicas")
            print("  Probablemente solo para uso interno")
            print()
            return

        exports = []

        for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
            name = exp.name.decode('utf-8') if exp.name else None
            ordinal = exp.ordinal
            address = self.pe.OPTIONAL_HEADER.ImageBase + exp.address

            export_info = {
                'name': name,
                'ordinal': ordinal,
                'address': hex(address)
            }

            exports.append(export_info)

            if name:
                print(f"  [{ordinal:4d}] 0x{address:08x}  {name}")
            else:
                print(f"  [{ordinal:4d}] 0x{address:08x}  (sin nombre)")

        self.info['exports'] = exports

        print()
        print(f"✓ Total de funciones exportadas: {len(exports)}")
        print()

        # Análisis de nombres
        if exports:
            self._analyze_export_patterns(exports)

    def _analyze_export_patterns(self, exports):
        """Analizar patrones en nombres de funciones"""

        print("-" * 70)
        print("ANÁLISIS DE FUNCIONES")
        print("-" * 70)
        print()

        # Categorizar por prefijos/keywords
        categories = {
            'Initialize': [],
            'Authorize': [],
            'Start': [],
            'Stop': [],
            'Reset': [],
            'Status': [],
            'Get': [],
            'Set': [],
            'Read': [],
            'Write': [],
            'Send': [],
            'Receive': [],
            'Price': [],
            'Pump': [],
            'Total': [],
            'Config': [],
            'Connect': [],
            'Disconnect': [],
        }

        for exp in exports:
            name = exp['name']
            if not name:
                continue

            for keyword, funcs in categories.items():
                if keyword.lower() in name.lower():
                    funcs.append(name)

        # Mostrar categorías que tengan funciones
        found_any = False
        for category, funcs in categories.items():
            if funcs:
                found_any = True
                print(f"📌 {category}:")
                for func in funcs:
                    print(f"   • {func}")
                print()

        if not found_any:
            print("ℹ️  No se encontraron patrones comunes en los nombres")
            print("   Revisar lista completa arriba")
            print()

    def _analyze_imports(self):
        """Analizar DLLs importadas"""

        print("-" * 70)
        print("DEPENDENCIAS (DLLs REQUERIDAS)")
        print("-" * 70)
        print()

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
            print("ℹ️  No hay imports explícitos")
            print()
            return

        imports = []

        for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
            dll_name = entry.dll.decode('utf-8')
            functions = []

            print(f"📦 {dll_name}")

            for imp in entry.imports[:10]:  # Limitar a 10 por DLL
                if imp.name:
                    func_name = imp.name.decode('utf-8')
                    functions.append(func_name)
                    print(f"   • {func_name}")

            if len(entry.imports) > 10:
                print(f"   ... y {len(entry.imports) - 10} más")

            imports.append({
                'dll': dll_name,
                'functions': functions
            })

            print()

        self.info['imports'] = imports

    def _analyze_strings(self):
        """Extraer strings interesantes"""

        print("-" * 70)
        print("STRINGS INTERESANTES")
        print("-" * 70)
        print()

        # Leer el archivo como bytes
        with open(self.dll_path, 'rb') as f:
            data = f.read()

        # Buscar strings ASCII imprimibles (mínimo 4 caracteres)
        strings = []
        current_string = b''

        for byte in data:
            if 32 <= byte <= 126:  # Caracteres ASCII imprimibles
                current_string += bytes([byte])
            else:
                if len(current_string) >= 4:
                    try:
                        s = current_string.decode('ascii')
                        strings.append(s)
                    except:
                        pass
                current_string = b''

        # Filtrar strings interesantes
        keywords = [
            'pump', 'authorize', 'price', 'status', 'error',
            'com', 'serial', 'port', 'gpbox', 'gilbarco',
            'init', 'connect', 'disconnect', 'reset',
            'total', 'volume', 'amount', 'hose', 'grade'
        ]

        interesting = []
        for s in strings:
            s_lower = s.lower()
            if any(kw in s_lower for kw in keywords):
                if s not in interesting:
                    interesting.append(s)

        # Mostrar solo los primeros 30
        for s in interesting[:30]:
            print(f"  • {s}")

        if len(interesting) > 30:
            print(f"  ... y {len(interesting) - 30} más")

        self.info['strings'] = interesting
        print()

    def _analyze_sections(self):
        """Analizar secciones del PE"""

        print("-" * 70)
        print("SECCIONES")
        print("-" * 70)
        print()

        for section in self.pe.sections:
            name = section.Name.decode('utf-8').rstrip('\x00')
            size = section.SizeOfRawData
            virtual_addr = section.VirtualAddress

            print(f"  {name:8s}  Tamaño: {size:8d} bytes  "
                  f"Dirección Virtual: 0x{virtual_addr:08x}")

            self.info['sections'].append({
                'name': name,
                'size': size,
                'virtual_address': hex(virtual_addr)
            })

        print()

    def save_json(self, output_path=None):
        """Guardar resultado en JSON"""

        if output_path is None:
            base_name = os.path.basename(self.dll_path)
            output_path = f"{base_name}_analysis.json"

        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(self.info, f, indent=2, ensure_ascii=False)

        print(f"✓ Análisis guardado en: {output_path}")
        print()


def analyze_all_ssf_dlls():
    """Analizar todas las DLLs de Smart Ship Factory"""

    base_path = r"C:\Windows\CEM44\Smart Ship Factory\Spirit"

    dll_dirs = [
        os.path.join(base_path, 'bin', 'pumps'),
        os.path.join(base_path, 'bin', 'communications'),
        os.path.join(base_path, 'lib'),
    ]

    dll_files = []
    for dll_dir in dll_dirs:
        if os.path.exists(dll_dir):
            for file in os.listdir(dll_dir):
                if file.endswith('.dll'):
                    dll_files.append(os.path.join(dll_dir, file))

    print("=" * 70)
    print("ANÁLISIS MASIVO DE DLLs DE SMART SHIP FACTORY")
    print("=" * 70)
    print(f"\nSe encontraron {len(dll_files)} DLLs")
    print()

    results = []

    for dll_path in dll_files:
        analyzer = DLLAnalyzer(dll_path)
        info = analyzer.analyze()
        results.append(info)

        # Guardar JSON individual
        base_name = os.path.basename(dll_path)
        json_path = f"analysis_{base_name}.json"
        analyzer.save_json(json_path)

        input("\nPresiona ENTER para continuar con la siguiente DLL...\n")

    # Guardar resumen global
    with open('analysis_all_dlls.json', 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)

    print("=" * 70)
    print("RESUMEN FINAL")
    print("=" * 70)
    print(f"\n✓ Se analizaron {len(results)} DLLs")
    print(f"✓ Resultados guardados en: analysis_all_dlls.json")
    print()


def main():
    """Función principal"""

    print()
    print("=" * 70)
    print("ANALIZADOR AUTOMÁTICO DE DLLs")
    print("=" * 70)
    print()

    if len(sys.argv) < 2:
        print("Uso:")
        print()
        print("  Analizar una DLL:")
        print('    python analizar_dll_auto.py "C:\\ruta\\a\\archivo.dll"')
        print()
        print("  Analizar todas las DLLs de SSF:")
        print('    python analizar_dll_auto.py --all')
        print()
        sys.exit(1)

    if sys.argv[1] == '--all':
        analyze_all_ssf_dlls()
    else:
        dll_path = sys.argv[1]

        analyzer = DLLAnalyzer(dll_path)
        info = analyzer.analyze()

        # Guardar JSON
        print()
        save = input("¿Guardar análisis en JSON? (s/n): ").strip().lower()
        if save == 's':
            analyzer.save_json()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado por el usuario")
    except Exception as e:
        print(f"\n\n✗ Error inesperado: {e}")
        import traceback
        traceback.print_exc()
