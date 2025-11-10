#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
ANÁLISIS DE DECOMPILACIÓN - Reverse Engineering Avanzado
=========================================================
Desensambla y analiza el código binario de las funciones

Usa radare2, objdump, y análisis de bytes para entender QUÉ hace cada función
"""

import sys
import os
import subprocess
import re
import struct

try:
    import pefile
except ImportError:
    print("ERROR: Requiere pefile")
    sys.exit(1)


class DecompilationAnalyzer:
    """Analizador de decompilación avanzado"""

    def __init__(self, dll_path):
        self.dll_path = dll_path
        self.pe = None
        self.analysis = {
            'dll_name': os.path.basename(dll_path),
            'functions': {},
            'call_graph': {},
            'api_usage': {},
            'constants': [],
            'strings_refs': {}
        }

    def analyze(self):
        """Análisis completo de decompilación"""

        print("=" * 80)
        print(f"ANÁLISIS DE DECOMPILACIÓN: {self.analysis['dll_name']}")
        print("=" * 80)
        print()

        # Cargar PE
        try:
            self.pe = pefile.PE(self.dll_path)
        except Exception as e:
            print(f"✗ Error: {e}")
            return

        # 1. Analizar exports con desensamblado
        self._analyze_exports_asm()

        # 2. Buscar referencias a funciones internas
        self._find_internal_function_refs()

        # 3. Analizar patrones de llamadas
        self._analyze_call_patterns()

        # 4. Intentar encontrar parámetros de funciones
        self._analyze_function_parameters()

        # 5. Analizar usando radare2 si está disponible
        self._analyze_with_radare2()

        # 6. Análisis de flujo de datos
        self._analyze_data_flow()

        # Guardar resultados
        self._print_results()

    def _analyze_exports_asm(self):
        """Analizar exports con desensamblado"""

        print("─" * 80)
        print("1. DESENSAMBLADO DE FUNCIONES EXPORTADAS")
        print("─" * 80)
        print()

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
            print("Sin exports")
            return

        for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
            if exp.name:
                func_name = exp.name.decode('utf-8')
                func_addr = self.pe.OPTIONAL_HEADER.ImageBase + exp.address

                print(f"📌 {func_name}")
                print(f"   Dirección: 0x{func_addr:08x}")

                # Intentar desensamblar con objdump
                self._disassemble_function(func_name, exp.address)

                print()

    def _disassemble_function(self, func_name, rva):
        """Desensamblar una función específica"""

        try:
            # Usar objdump para desensamblar
            result = subprocess.run(
                ['objdump', '-d', '-M', 'intel', self.dll_path],
                capture_output=True,
                text=True,
                timeout=10
            )

            if result.returncode == 0:
                output = result.stdout

                # Buscar la función en el output
                # Convertir RVA a dirección de archivo
                for section in self.pe.sections:
                    if section.VirtualAddress <= rva < section.VirtualAddress + section.Misc_VirtualSize:
                        file_offset = rva - section.VirtualAddress + section.PointerToRawData

                        # Buscar instrucciones cerca de esta dirección
                        lines = output.split('\n')
                        func_lines = []

                        for i, line in enumerate(lines):
                            # Buscar líneas con direcciones
                            if f'{rva:x}:' in line or f'{file_offset:x}:' in line:
                                # Tomar 20 líneas siguientes
                                func_lines = lines[i:i+20]
                                break

                        if func_lines:
                            print("\n   Desensamblado (primeras instrucciones):")
                            for line in func_lines[:15]:
                                if line.strip():
                                    print(f"   {line}")

                            # Analizar las instrucciones
                            self._analyze_instructions(func_name, func_lines)

                        break

        except FileNotFoundError:
            print("   ⚠️  objdump no disponible")
        except Exception as e:
            print(f"   ⚠️  Error: {e}")

    def _analyze_instructions(self, func_name, asm_lines):
        """Analizar instrucciones ensamblador"""

        calls = []
        pushes = []
        api_calls = []

        for line in asm_lines:
            # Buscar llamadas (call)
            if 'call' in line.lower():
                # Extraer qué se está llamando
                match = re.search(r'call\s+(?:QWORD PTR )?\[?([^\]]+)\]?', line, re.IGNORECASE)
                if match:
                    target = match.group(1)
                    calls.append(target)

                    # Si es una API de Windows
                    if any(api in line for api in ['CreateFile', 'ReadFile', 'WriteFile',
                                                     'RegOpen', 'RegQuery']):
                        api_calls.append(line.strip())

            # Buscar pushes (parámetros)
            if 'push' in line.lower():
                match = re.search(r'push\s+(.+)', line, re.IGNORECASE)
                if match:
                    pushes.append(match.group(1))

        if calls:
            print("\n   Llamadas encontradas:")
            for call in calls[:5]:
                print(f"      → {call}")

        if api_calls:
            print("\n   APIs de Windows llamadas:")
            for api in api_calls:
                print(f"      → {api}")

        self.analysis['functions'][func_name] = {
            'calls': calls,
            'pushes': pushes,
            'api_calls': api_calls
        }

    def _find_internal_function_refs(self):
        """Buscar referencias a funciones internas"""

        print("─" * 80)
        print("2. BÚSQUEDA DE REFERENCIAS A FUNCIONES INTERNAS")
        print("─" * 80)
        print()

        # Leer binario
        with open(self.dll_path, 'rb') as f:
            data = f.read()

        # Funciones que buscamos
        target_funcs = [
            b'iaSendPumpAuthorization',
            b'sendPumpPreset',
            b'iaSendPumpStop',
            b'iaReadPumpTotalizer',
            b'iaReadPumpLastSale',
            b'sendDataCmd',
            b'sendSimpleCmd',
            b'readBytes',
            b'sendMessage'
        ]

        found = {}

        for func in target_funcs:
            # Buscar todas las ocurrencias
            offset = 0
            occurrences = []

            while True:
                pos = data.find(func, offset)
                if pos == -1:
                    break
                occurrences.append(pos)
                offset = pos + 1

            if occurrences:
                found[func.decode('ascii')] = occurrences

        if found:
            print("Funciones internas encontradas en el binario:\n")
            for func_name, positions in sorted(found.items()):
                print(f"📌 {func_name}")
                print(f"   Ocurrencias: {len(positions)}")
                print(f"   Offsets: {[hex(p) for p in positions[:5]]}")

                # Intentar encontrar contexto
                self._analyze_function_context(func_name, positions[0], data)

                print()

    def _analyze_function_context(self, func_name, offset, data):
        """Analizar el contexto alrededor de una función"""

        # Buscar 200 bytes antes y después
        start = max(0, offset - 200)
        end = min(len(data), offset + len(func_name) + 200)

        context = data[start:end]

        # Buscar strings cerca
        strings_near = []
        pattern = rb'[ -~]{5,}'  # ASCII imprimibles

        for match in re.finditer(pattern, context):
            s = match.group().decode('ascii', errors='ignore')
            if s not in strings_near and len(s) > 4:
                strings_near.append(s)

        if strings_near:
            print(f"   Strings cercanos:")
            for s in strings_near[:5]:
                if s != func_name:
                    print(f"      • {s}")

        # Buscar patrones de llamada (E8 = call relativo en x86)
        call_pattern = b'\xe8'  # CALL opcode
        calls_found = context.count(call_pattern)

        if calls_found > 0:
            print(f"   Instrucciones CALL cerca: {calls_found}")

    def _analyze_call_patterns(self):
        """Analizar patrones de llamadas con objdump completo"""

        print("─" * 80)
        print("3. ANÁLISIS DE PATRONES DE LLAMADAS")
        print("─" * 80)
        print()

        try:
            result = subprocess.run(
                ['objdump', '-d', '-M', 'intel', self.dll_path],
                capture_output=True,
                text=True,
                timeout=30
            )

            if result.returncode == 0:
                output = result.stdout

                # Buscar todas las llamadas a CreateFile, ReadFile, WriteFile
                serial_apis = {
                    'CreateFileA': [],
                    'ReadFile': [],
                    'WriteFile': [],
                    'SetCommState': [],
                    'SetCommTimeouts': []
                }

                for line in output.split('\n'):
                    for api in serial_apis.keys():
                        if api in line and 'call' in line.lower():
                            # Extraer la dirección
                            match = re.search(r'([0-9a-f]+):', line)
                            if match:
                                addr = match.group(1)
                                serial_apis[api].append((addr, line.strip()))

                print("APIs de Puerto Serial detectadas:\n")
                for api, calls in serial_apis.items():
                    if calls:
                        print(f"📌 {api}")
                        print(f"   Llamadas: {len(calls)}")
                        print(f"   Ejemplo: {calls[0][1] if calls else 'N/A'}")
                        print()

                # Analizar secuencias CreateFile → WriteFile → ReadFile
                self._find_io_sequences(output)

        except Exception as e:
            print(f"⚠️  Error: {e}")

    def _find_io_sequences(self, asm_output):
        """Buscar secuencias de I/O (CreateFile → Write → Read)"""

        print("Secuencias de I/O detectadas:\n")

        lines = asm_output.split('\n')

        for i, line in enumerate(lines):
            if 'CreateFileA' in line or 'CreateFile' in line:
                # Buscar WriteFile o ReadFile en las siguientes 50 líneas
                sequence = []
                sequence.append(('CreateFile', line.strip()))

                for j in range(i+1, min(i+50, len(lines))):
                    if 'WriteFile' in lines[j]:
                        sequence.append(('WriteFile', lines[j].strip()))
                    if 'ReadFile' in lines[j]:
                        sequence.append(('ReadFile', lines[j].strip()))

                if len(sequence) > 1:
                    print(f"Secuencia encontrada:")
                    for op, code in sequence[:3]:
                        print(f"   {op}: {code[:80]}")
                    print()
                    break  # Solo mostrar primera secuencia

    def _analyze_function_parameters(self):
        """Intentar encontrar parámetros de funciones"""

        print("─" * 80)
        print("4. ANÁLISIS DE PARÁMETROS DE FUNCIONES")
        print("─" * 80)
        print()

        # Buscar patrones de stack frame
        # En x86: push ebp; mov ebp, esp; sub esp, X
        # En x64: push rbp; mov rbp, rsp; sub rsp, X

        try:
            result = subprocess.run(
                ['objdump', '-d', '-M', 'intel', self.dll_path],
                capture_output=True,
                text=True,
                timeout=30
            )

            if result.returncode == 0:
                output = result.stdout
                lines = output.split('\n')

                # Buscar funciones con prologues
                functions_with_params = []

                for i, line in enumerate(lines):
                    # Buscar "push ebp" seguido de "mov ebp, esp"
                    if 'push' in line.lower() and ('ebp' in line.lower() or 'rbp' in line.lower()):
                        # Verificar siguiente línea
                        if i+1 < len(lines):
                            next_line = lines[i+1]
                            if 'mov' in next_line.lower() and 'ebp' in next_line.lower():
                                # Función encontrada
                                # Buscar sub esp para ver tamaño de stack
                                if i+2 < len(lines):
                                    third_line = lines[i+2]
                                    if 'sub' in third_line.lower() and 'esp' in third_line.lower():
                                        # Extraer tamaño
                                        match = re.search(r'0x([0-9a-f]+)', third_line)
                                        if match:
                                            stack_size = int(match.group(1), 16)
                                            functions_with_params.append({
                                                'addr': line,
                                                'stack_size': stack_size
                                            })

                if functions_with_params:
                    print(f"Funciones con stack frames: {len(functions_with_params)}\n")
                    print("Ejemplos (tamaño de stack sugiere # de variables locales):\n")
                    for func in functions_with_params[:5]:
                        print(f"   Stack: {func['stack_size']} bytes → ~{func['stack_size']//4} variables (x86)")
                        print(f"   {func['addr']}")
                        print()

        except Exception as e:
            print(f"⚠️  Error: {e}")

    def _analyze_with_radare2(self):
        """Análisis con radare2 si está disponible"""

        print("─" * 80)
        print("5. ANÁLISIS CON RADARE2 (si disponible)")
        print("─" * 80)
        print()

        try:
            # Verificar si radare2 está instalado
            result = subprocess.run(
                ['r2', '-v'],
                capture_output=True,
                text=True,
                timeout=5
            )

            if result.returncode == 0:
                print("✓ radare2 detectado\n")

                # Analizar exports con radare2
                r2_cmd = f'r2 -q -c "iE" "{self.dll_path}"'
                result = subprocess.run(
                    r2_cmd,
                    shell=True,
                    capture_output=True,
                    text=True,
                    timeout=10
                )

                if result.returncode == 0:
                    print("Exports (radare2):")
                    print(result.stdout[:500])
                    print()

                # Buscar strings con radare2
                r2_cmd = f'r2 -q -c "iz~SSF" "{self.dll_path}"'
                result = subprocess.run(
                    r2_cmd,
                    shell=True,
                    capture_output=True,
                    text=True,
                    timeout=10
                )

                if result.returncode == 0:
                    print("Strings SSF* encontrados:")
                    print(result.stdout[:500])
                    print()

            else:
                print("⚠️  radare2 no disponible")

        except FileNotFoundError:
            print("⚠️  radare2 no instalado")
        except Exception as e:
            print(f"⚠️  Error: {e}")

    def _analyze_data_flow(self):
        """Análisis de flujo de datos"""

        print("─" * 80)
        print("6. ANÁLISIS DE FLUJO DE DATOS")
        print("─" * 80)
        print()

        # Leer sección .data y .rdata
        for section in self.pe.sections:
            name = section.Name.decode('utf-8').rstrip('\x00')

            if name in ['.data', '.rdata']:
                print(f"Sección {name}:")
                print(f"   Tamaño: {section.SizeOfRawData} bytes")
                print(f"   RVA: 0x{section.VirtualAddress:08x}")

                # Buscar constantes interesantes
                data = section.get_data()

                # Buscar constantes numéricas comunes (9600 = baudrate, etc.)
                constants = [
                    (9600, "Baudrate 9600"),
                    (19200, "Baudrate 19200"),
                    (115200, "Baudrate 115200"),
                    (0x10, "DLE"),
                    (0x02, "STX"),
                    (0x03, "ETX"),
                ]

                for const, desc in constants:
                    # Buscar como little-endian 32-bit
                    const_bytes = struct.pack('<I', const)
                    if const_bytes in data:
                        print(f"   ✓ Constante encontrada: {desc} ({const} / 0x{const:x})")

                print()

    def _print_results(self):
        """Imprimir resumen"""

        print("=" * 80)
        print("RESUMEN DEL ANÁLISIS DE DECOMPILACIÓN")
        print("=" * 80)
        print()

        if self.analysis['functions']:
            print("Funciones exportadas analizadas:")
            for func, data in self.analysis['functions'].items():
                print(f"\n📌 {func}:")
                if data.get('api_calls'):
                    print(f"   APIs llamadas: {len(data['api_calls'])}")
                if data.get('calls'):
                    print(f"   Llamadas internas: {len(data['calls'])}")

        print()
        print("=" * 80)


def main():
    if len(sys.argv) < 2:
        print("Uso: python analisis_decompilacion.py <dll_path>")
        print()
        print("Ejemplo:")
        print('  python analisis_decompilacion.py "SSF.FC.Comm.GPBox.D.dll"')
        sys.exit(1)

    dll_path = sys.argv[1]

    if not os.path.exists(dll_path):
        print(f"✗ Archivo no encontrado: {dll_path}")
        sys.exit(1)

    analyzer = DecompilationAnalyzer(dll_path)
    analyzer.analyze()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado")
    except Exception as e:
        print(f"\n✗ Error: {e}")
        import traceback
        traceback.print_exc()
