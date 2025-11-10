#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
ANÁLISIS PROFUNDO DE DLLs
==========================
Analiza funciones internas, desensamblado, patrones de código
"""

import sys
import os
import re
import subprocess
from pathlib import Path

try:
    import pefile
except ImportError:
    print("ERROR: Requiere pefile")
    print("Instalar: pip install pefile")
    sys.exit(1)


class DeepDLLAnalyzer:
    """Analizador profundo de DLLs"""

    def __init__(self, dll_path):
        self.dll_path = dll_path
        self.pe = None
        self.analysis = {
            'dll_name': os.path.basename(dll_path),
            'exports': [],
            'imports': [],
            'strings': [],
            'method_patterns': [],
            'class_patterns': [],
            'api_calls': {},
            'disassembly_hints': []
        }

    def analyze(self):
        """Análisis completo profundo"""

        print("=" * 80)
        print(f"ANÁLISIS PROFUNDO: {self.analysis['dll_name']}")
        print("=" * 80)
        print()

        if not os.path.exists(self.dll_path):
            print(f"✗ Archivo no encontrado: {self.dll_path}")
            return self.analysis

        # Cargar PE
        try:
            self.pe = pefile.PE(self.dll_path)
        except Exception as e:
            print(f"✗ Error al cargar PE: {e}")
            return self.analysis

        # 1. Exports (ya lo tenemos)
        self._analyze_exports()

        # 2. Imports - análisis detallado de APIs
        self._analyze_imports_detailed()

        # 3. Strings - búsqueda de patrones de clases y métodos
        self._analyze_strings_deep()

        # 4. Buscar patrones de clases C++
        self._find_cpp_classes()

        # 5. Buscar patrones de métodos
        self._find_method_patterns()

        # 6. Analizar sección .rdata (read-only data)
        self._analyze_rdata_section()

        # 7. Intentar desensamblado básico
        self._basic_disassembly()

        # Mostrar resultados
        self._print_results()

        return self.analysis

    def _analyze_exports(self):
        """Analizar exports"""
        if not hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
            return

        for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
            if exp.name:
                self.analysis['exports'].append(exp.name.decode('utf-8'))

    def _analyze_imports_detailed(self):
        """Análisis detallado de imports"""

        print("─" * 80)
        print("1. ANÁLISIS DE APIs DE WINDOWS UTILIZADAS")
        print("─" * 80)
        print()

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
            print("Sin imports")
            return

        api_categories = {
            'Serial/COM': ['CreateFile', 'ReadFile', 'WriteFile', 'SetCommState',
                          'GetCommState', 'SetCommTimeouts', 'PurgeComm', 'ClearCommError'],
            'Networking': ['socket', 'connect', 'send', 'recv', 'WSAStartup',
                          'closesocket', 'bind', 'listen'],
            'Threading': ['CreateThread', 'CreateMutex', 'WaitForSingleObject',
                         'ReleaseMutex', 'Sleep', 'ExitThread'],
            'Database': ['SQLConnect', 'SQLExecute', 'SQLFetch', 'SQLBindCol'],
            'Registry': ['RegOpenKey', 'RegQueryValue', 'RegSetValue', 'RegCloseKey'],
            'DDE': ['DdeInitialize', 'DdeConnect', 'DdeClientTransaction', 'DdeDisconnect']
        }

        for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
            dll_name = entry.dll.decode('utf-8')

            for imp in entry.imports:
                if imp.name:
                    func_name = imp.name.decode('utf-8')

                    # Categorizar
                    for category, funcs in api_categories.items():
                        if any(api in func_name for api in funcs):
                            if category not in self.analysis['api_calls']:
                                self.analysis['api_calls'][category] = []
                            self.analysis['api_calls'][category].append(f"{dll_name}::{func_name}")

        # Mostrar categorías encontradas
        for category, calls in self.analysis['api_calls'].items():
            print(f"🔹 {category}:")
            for call in calls[:5]:
                print(f"   • {call}")
            if len(calls) > 5:
                print(f"   ... y {len(calls) - 5} más")
            print()

    def _analyze_strings_deep(self):
        """Análisis profundo de strings"""

        print("─" * 80)
        print("2. BÚSQUEDA DE NOMBRES DE CLASES Y MÉTODOS")
        print("─" * 80)
        print()

        # Leer binario
        with open(self.dll_path, 'rb') as f:
            data = f.read()

        # Buscar strings ASCII
        strings = []
        current_string = b''

        for byte in data:
            if 32 <= byte <= 126:
                current_string += bytes([byte])
            else:
                if len(current_string) >= 4:
                    try:
                        s = current_string.decode('ascii')
                        strings.append(s)
                    except:
                        pass
                current_string = b''

        # Patrones de clases C++
        cpp_class_patterns = [
            r'^SSF[A-Z][a-zA-Z]+$',           # SSFGPBoxComm, SSFSerialComm
            r'^[A-Z][a-z]+Comm$',              # GPBoxComm, SerialComm
            r'^[A-Z][a-z]+Controller$',        # PumpController
            r'^[A-Z][a-z]+Manager$',           # LogManager
        ]

        # Patrones de métodos
        method_patterns = [
            r'^[a-z]+[A-Z][a-zA-Z]+$',        # sendByte, readStatus
            r'^(get|set|read|write|send|receive)[A-Z][a-zA-Z]+$',
            r'^(open|close|connect|disconnect|reset|clear)[A-Z]?[a-zA-Z]*$',
        ]

        # Buscar clases
        classes_found = set()
        for s in strings:
            for pattern in cpp_class_patterns:
                if re.match(pattern, s):
                    classes_found.add(s)

        # Buscar métodos con contexto de clase
        class_methods = {}
        for s in strings:
            # Buscar patrón "ClassName::methodName"
            if '::' in s:
                parts = s.split('::')
                if len(parts) == 2:
                    class_name, method_name = parts
                    if class_name not in class_methods:
                        class_methods[class_name] = []
                    class_methods[class_name].append(method_name)

        if classes_found:
            print("🔸 Clases C++ encontradas:")
            for cls in sorted(classes_found)[:20]:
                print(f"   • {cls}")
            if len(classes_found) > 20:
                print(f"   ... y {len(classes_found) - 20} más")
            print()

        if class_methods:
            print("🔸 Métodos por clase:")
            for cls, methods in sorted(class_methods.items())[:10]:
                print(f"\n   📌 {cls}:")
                for method in methods[:10]:
                    print(f"      • {method}()")
                if len(methods) > 10:
                    print(f"      ... y {len(methods) - 10} más")
            print()

        self.analysis['class_patterns'] = list(classes_found)
        self.analysis['method_patterns'] = class_methods

    def _find_cpp_classes(self):
        """Buscar patrones específicos de clases C++"""

        # Buscar en strings
        with open(self.dll_path, 'rb') as f:
            data = f.read()

        # Patrones específicos para GPBox
        gpbox_patterns = [
            b'SSFGPBoxComm',
            b'GPBoxComm',
            b'GPBox',
            b'SerialComm',
            b'PumpController',
            b'GilbarcoComm',
        ]

        found_patterns = []
        for pattern in gpbox_patterns:
            if pattern in data:
                found_patterns.append(pattern.decode('ascii', errors='ignore'))

        if found_patterns:
            self.analysis['class_patterns'].extend(found_patterns)

    def _find_method_patterns(self):
        """Buscar patrones de métodos cerca de nombres de clases"""

        with open(self.dll_path, 'rb') as f:
            data = f.read()

        # Buscar "SSFGPBoxComm::" seguido de nombre de método
        pattern = rb'SSFGPBoxComm::([a-zA-Z_][a-zA-Z0-9_]*)'
        matches = re.findall(pattern, data)

        if matches:
            methods = [m.decode('ascii', errors='ignore') for m in matches]
            if 'SSFGPBoxComm' not in self.analysis['method_patterns']:
                self.analysis['method_patterns']['SSFGPBoxComm'] = []
            self.analysis['method_patterns']['SSFGPBoxComm'].extend(methods)

        # Mismo para SerialComm
        pattern = rb'SSFSerialComm::([a-zA-Z_][a-zA-Z0-9_]*)'
        matches = re.findall(pattern, data)

        if matches:
            methods = [m.decode('ascii', errors='ignore') for m in matches]
            if 'SSFSerialComm' not in self.analysis['method_patterns']:
                self.analysis['method_patterns']['SSFSerialComm'] = []
            self.analysis['method_patterns']['SSFSerialComm'].extend(methods)

    def _analyze_rdata_section(self):
        """Analizar sección .rdata (datos read-only, incluye strings)"""

        print("─" * 80)
        print("3. ANÁLISIS DE SECCIÓN .rdata (Datos Read-Only)")
        print("─" * 80)
        print()

        for section in self.pe.sections:
            name = section.Name.decode('utf-8').rstrip('\x00')
            if name == '.rdata':
                # Obtener datos de la sección
                data = section.get_data()

                # Buscar referencias a funciones
                func_refs = re.findall(rb'([a-zA-Z_][a-zA-Z0-9_]{5,})', data)

                unique_refs = set()
                for ref in func_refs:
                    try:
                        s = ref.decode('ascii')
                        if len(s) > 5 and len(s) < 50:
                            unique_refs.add(s)
                    except:
                        pass

                if unique_refs:
                    print(f"Referencias únicas en .rdata: {len(unique_refs)}")
                    print("\nMuestra de referencias (posibles nombres de funciones):")
                    for ref in sorted(unique_refs)[:30]:
                        if any(kw in ref.lower() for kw in ['comm', 'serial', 'pump', 'gpbox',
                                                             'read', 'write', 'send', 'receive',
                                                             'open', 'close', 'init', 'reset']):
                            print(f"   • {ref}")
                    print()

    def _basic_disassembly(self):
        """Desensamblado básico de las funciones exportadas"""

        print("─" * 80)
        print("4. HINTS DE DESENSAMBLADO")
        print("─" * 80)
        print()

        # Intentar usar objdump si está disponible
        try:
            result = subprocess.run(
                ['objdump', '-d', self.dll_path],
                capture_output=True,
                text=True,
                timeout=10
            )

            if result.returncode == 0:
                output = result.stdout

                # Buscar llamadas a funciones interesantes
                interesting_calls = []
                for line in output.split('\n'):
                    if 'call' in line.lower():
                        # Extraer lo que se está llamando
                        if '<' in line and '>' in line:
                            func = line[line.find('<')+1:line.find('>')]
                            if any(kw in func.lower() for kw in ['comm', 'serial', 'read',
                                                                  'write', 'send', 'recv',
                                                                  'open', 'close']):
                                interesting_calls.append(func)

                if interesting_calls:
                    unique_calls = list(set(interesting_calls))[:20]
                    print("Llamadas a funciones interesantes encontradas:")
                    for call in unique_calls:
                        print(f"   • {call}")
                    print()

                    self.analysis['disassembly_hints'] = unique_calls
            else:
                print("⚠️  objdump no disponible o falló")

        except FileNotFoundError:
            print("⚠️  objdump no está instalado")
        except Exception as e:
            print(f"⚠️  Error en desensamblado: {e}")

        print()

    def _print_results(self):
        """Imprimir resumen de resultados"""

        print("=" * 80)
        print("RESUMEN DEL ANÁLISIS PROFUNDO")
        print("=" * 80)
        print()

        print(f"📊 Estadísticas:")
        print(f"   • Exports públicos: {len(self.analysis['exports'])}")
        print(f"   • Clases C++ encontradas: {len(self.analysis['class_patterns'])}")
        print(f"   • Clases con métodos: {len(self.analysis['method_patterns'])}")
        print(f"   • Categorías de API: {len(self.analysis['api_calls'])}")
        print()

        if self.analysis['method_patterns']:
            print("🎯 MÉTODOS INTERNOS DESCUBIERTOS:")
            print()
            for cls, methods in sorted(self.analysis['method_patterns'].items()):
                if methods:
                    print(f"   📌 {cls}:")
                    unique_methods = list(set(methods))[:15]
                    for method in sorted(unique_methods):
                        print(f"      • {method}()")
                    if len(methods) > 15:
                        print(f"      ... y {len(methods) - 15} más")
                    print()

        print("=" * 80)
        print()

    def save_results(self, output_file):
        """Guardar resultados en archivo"""
        import json

        # Convertir sets a listas para JSON
        output = {}
        for key, value in self.analysis.items():
            if isinstance(value, set):
                output[key] = list(value)
            elif isinstance(value, dict):
                output[key] = {k: list(v) if isinstance(v, set) else v
                              for k, v in value.items()}
            else:
                output[key] = value

        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(output, f, indent=2, ensure_ascii=False)

        print(f"✓ Análisis guardado en: {output_file}")


def main():
    if len(sys.argv) < 2:
        print("Uso: python analisis_profundo_dll.py <ruta_dll>")
        print()
        print("Ejemplo:")
        print('  python analisis_profundo_dll.py "SSF.FC.Comm.GPBox.D.dll"')
        sys.exit(1)

    dll_path = sys.argv[1]

    analyzer = DeepDLLAnalyzer(dll_path)
    results = analyzer.analyze()

    # Guardar resultados
    output_file = f"{os.path.basename(dll_path)}_deep_analysis.json"
    analyzer.save_results(output_file)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado")
    except Exception as e:
        print(f"\n✗ Error: {e}")
        import traceback
        traceback.print_exc()
