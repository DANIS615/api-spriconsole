#!/usr/bin/env python3
"""
ANALIZADOR DE SERVICIOS CEM-44 - Ingeniería Inversa Completa
=============================================================
Análisis exhaustivo de los servicios .exe de CEM-44:
- PumpService.exe
- TankService.exe  (PRIORIDAD ALTA)
- PosService.exe
- SMSService.exe

Similar al análisis que hicimos con SSF DLLs
Autor: Sistema de análisis automatizado
Fecha: 2025-11-10
"""

import os
import re
import pefile
import struct
import json
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Tuple, Optional


class ServicioCEM44Analyzer:
    """Analizador de servicios CEM-44"""

    def __init__(self, exe_path: str):
        self.exe_path = Path(exe_path)
        self.exe_name = self.exe_path.name
        self.pe = None
        self.strings = []
        self.imports = []
        self.exports = []
        self.sections = []
        self.constants = []
        self.com_ports = []
        self.protocols = {}
        self.results = {}

    def analyze_all(self):
        """Análisis completo del ejecutable"""
        print(f"\n{'='*80}")
        print(f"🔬 ANALIZANDO: {self.exe_name}")
        print(f"{'='*80}\n")

        try:
            # Cargar PE
            self.pe = pefile.PE(str(self.exe_path))

            # Análisis básico
            self._analyze_pe_header()
            self._analyze_sections()
            self._analyze_imports()
            self._analyze_exports()

            # Análisis de strings
            self._extract_strings()
            self._analyze_strings()

            # Análisis específico
            self._detect_com_ports()
            self._detect_protocols()
            self._detect_constants()
            self._detect_timing_values()
            self._detect_database_operations()

            # Generar reporte
            self._generate_results()

            return self.results

        except Exception as e:
            print(f"❌ Error analizando {self.exe_name}: {e}")
            return None

    def _analyze_pe_header(self):
        """Analiza el header PE32"""
        print("📋 Información Básica del Ejecutable")
        print("-" * 40)

        # Información básica
        info = {
            'Machine': hex(self.pe.FILE_HEADER.Machine),
            'NumberOfSections': self.pe.FILE_HEADER.NumberOfSections,
            'TimeDateStamp': self.pe.FILE_HEADER.TimeDateStamp,
            'SizeOfOptionalHeader': self.pe.FILE_HEADER.SizeOfOptionalHeader,
            'Characteristics': hex(self.pe.FILE_HEADER.Characteristics),
            'ImageBase': hex(self.pe.OPTIONAL_HEADER.ImageBase),
            'SectionAlignment': self.pe.OPTIONAL_HEADER.SectionAlignment,
            'FileAlignment': self.pe.OPTIONAL_HEADER.FileAlignment,
            'SizeOfImage': self.pe.OPTIONAL_HEADER.SizeOfImage,
            'Subsystem': self.pe.OPTIONAL_HEADER.Subsystem,
        }

        for key, value in info.items():
            print(f"  {key}: {value}")

        self.results['pe_header'] = info
        print()

    def _analyze_sections(self):
        """Analiza las secciones del ejecutable"""
        print("📦 Secciones del Ejecutable")
        print("-" * 40)

        for section in self.pe.sections:
            name = section.Name.decode('utf-8', errors='ignore').strip('\x00')
            sec_info = {
                'Name': name,
                'VirtualAddress': hex(section.VirtualAddress),
                'VirtualSize': section.Misc_VirtualSize,
                'RawSize': section.SizeOfRawData,
                'Characteristics': hex(section.Characteristics)
            }
            self.sections.append(sec_info)
            print(f"  [{name:8s}] VA={sec_info['VirtualAddress']}, Size={sec_info['VirtualSize']}")

        self.results['sections'] = self.sections
        print()

    def _analyze_imports(self):
        """Analiza las importaciones (DLLs usadas)"""
        print("📥 DLLs Importadas y Funciones")
        print("-" * 40)

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_IMPORT'):
            print("  No hay importaciones")
            return

        dll_imports = defaultdict(list)

        for entry in self.pe.DIRECTORY_ENTRY_IMPORT:
            dll_name = entry.dll.decode('utf-8', errors='ignore')
            for imp in entry.imports:
                if imp.name:
                    func_name = imp.name.decode('utf-8', errors='ignore')
                    dll_imports[dll_name].append(func_name)

        # Mostrar imports críticos
        critical_dlls = ['KERNEL32.dll', 'USER32.dll', 'MSVCRT.dll', 'WS2_32.dll']

        for dll, funcs in sorted(dll_imports.items()):
            if dll in critical_dlls or 'COM' in dll.upper() or 'SERIAL' in dll.upper():
                print(f"\n  {dll} ({len(funcs)} funciones)")
                for func in funcs[:10]:  # Mostrar primeras 10
                    print(f"    - {func}")
                if len(funcs) > 10:
                    print(f"    ... y {len(funcs) - 10} más")

        self.imports = dict(dll_imports)
        self.results['imports'] = self.imports
        print()

    def _analyze_exports(self):
        """Analiza las exportaciones"""
        print("📤 Funciones Exportadas")
        print("-" * 40)

        if not hasattr(self.pe, 'DIRECTORY_ENTRY_EXPORT'):
            print("  No hay exportaciones")
            self.results['exports'] = []
            return

        exports = []
        for exp in self.pe.DIRECTORY_ENTRY_EXPORT.symbols:
            if exp.name:
                func_name = exp.name.decode('utf-8', errors='ignore')
                exports.append({
                    'name': func_name,
                    'address': hex(exp.address)
                })
                print(f"  - {func_name} @ {hex(exp.address)}")

        self.exports = exports
        self.results['exports'] = exports
        print()

    def _extract_strings(self):
        """Extrae strings del ejecutable"""
        print("🔍 Extrayendo Strings...")

        data = self.pe.get_memory_mapped_image()

        # Strings ASCII (mínimo 4 caracteres)
        ascii_pattern = rb'[\x20-\x7E]{4,}'
        ascii_strings = re.findall(ascii_pattern, data)

        # Strings Unicode (mínimo 4 caracteres)
        unicode_pattern = rb'(?:[\x20-\x7E]\x00){4,}'
        unicode_strings = re.findall(unicode_pattern, data)

        # Convertir a texto
        self.strings = []

        for s in ascii_strings:
            try:
                decoded = s.decode('ascii', errors='ignore')
                if len(decoded) >= 4:
                    self.strings.append(decoded)
            except:
                pass

        for s in unicode_strings:
            try:
                decoded = s.decode('utf-16le', errors='ignore')
                if len(decoded) >= 4:
                    self.strings.append(decoded)
            except:
                pass

        # Eliminar duplicados
        self.strings = list(set(self.strings))

        print(f"  ✅ {len(self.strings)} strings únicas extraídas\n")
        self.results['total_strings'] = len(self.strings)

    def _analyze_strings(self):
        """Analiza las strings extraídas"""
        print("📝 Análisis de Strings Importantes")
        print("-" * 40)

        categories = {
            'COM/Serial': [],
            'Protocolo': [],
            'Database': [],
            'Error/Log': [],
            'Config': [],
            'Tank/Tanque': [],
            'Pump/Bomba': [],
            'SMS': [],
            'Network': []
        }

        patterns = {
            'COM/Serial': r'(?i)(COM\d+|serial|uart|tty|baudrate|baud|parity|stopbit)',
            'Protocolo': r'(?i)(protocol|frame|packet|checksum|crc|lrc|dle|stx|etx)',
            'Database': r'(?i)(SELECT|INSERT|UPDATE|DELETE|FROM|WHERE|\.mdb|\.db|\.sqlite)',
            'Error/Log': r'(?i)(error|warning|log|debug|trace|exception|fail)',
            'Config': r'(?i)(config|settings|\.ini|\.cfg|parameter)',
            'Tank/Tanque': r'(?i)(tank|tanque|level|nivel|volum|capacity|capacidad)',
            'Pump/Bomba': r'(?i)(pump|bomba|dispenser|surtidor|nozzle|manguera)',
            'SMS': r'(?i)(sms|message|notification|alert|gsm|modem)',
            'Network': r'(?i)(tcp|udp|socket|ip|port|connect|send|recv)'
        }

        for string in self.strings:
            for category, pattern in patterns.items():
                if re.search(pattern, string):
                    categories[category].append(string)

        # Mostrar resultados
        for category, strings in categories.items():
            if strings:
                print(f"\n  {category}: {len(strings)} strings")
                for s in strings[:5]:  # Mostrar primeras 5
                    print(f"    - {s[:80]}")
                if len(strings) > 5:
                    print(f"    ... y {len(strings) - 5} más")

        self.results['string_categories'] = {k: len(v) for k, v in categories.items()}
        self.results['critical_strings'] = categories
        print()

    def _detect_com_ports(self):
        """Detecta referencias a puertos COM"""
        print("🔌 Detección de Puertos COM/Serial")
        print("-" * 40)

        com_patterns = [
            r'COM\d+',
            r'/dev/tty[a-zA-Z0-9]+',
            r'\\\\\.\\COM\d+',
            r'19200|9600|115200|57600|38400',  # Baudrates comunes
        ]

        com_found = defaultdict(list)

        for string in self.strings:
            for pattern in com_patterns:
                matches = re.findall(pattern, string, re.IGNORECASE)
                if matches:
                    for match in matches:
                        com_found[pattern].append(match)

        if com_found:
            for pattern, matches in com_found.items():
                unique_matches = list(set(matches))
                print(f"  Patrón '{pattern}': {unique_matches}")
        else:
            print("  No se detectaron puertos COM explícitos")

        self.com_ports = dict(com_found)
        self.results['com_ports'] = self.com_ports
        print()

    def _detect_protocols(self):
        """Detecta protocolos de comunicación"""
        print("📡 Detección de Protocolos")
        print("-" * 40)

        protocol_keywords = [
            'Modbus', 'TCP/IP', 'UDP', 'HTTP', 'FTP', 'SMTP',
            'Gilbarco', 'Wayne', 'Veeder', 'Tokheim',
            'DLE', 'STX', 'ETX', 'ACK', 'NAK', 'ENQ',
            'checksum', 'CRC', 'LRC', 'XOR'
        ]

        protocols_found = defaultdict(list)

        for keyword in protocol_keywords:
            for string in self.strings:
                if keyword.lower() in string.lower():
                    protocols_found[keyword].append(string[:80])

        if protocols_found:
            for keyword, strings in protocols_found.items():
                print(f"  {keyword}: {len(strings)} referencias")
                for s in strings[:3]:
                    print(f"    - {s}")
        else:
            print("  No se detectaron protocolos conocidos")

        self.protocols = dict(protocols_found)
        self.results['protocols'] = {k: len(v) for k, v in protocols_found.items()}
        print()

    def _detect_constants(self):
        """Detecta constantes importantes"""
        print("🔢 Detección de Constantes")
        print("-" * 40)

        # Buscar números hexadecimales
        hex_pattern = r'0x[0-9A-Fa-f]{2,8}'

        constants_found = defaultdict(int)

        for string in self.strings:
            hex_matches = re.findall(hex_pattern, string)
            for match in hex_matches:
                constants_found[match] += 1

        # Mostrar constantes más comunes
        if constants_found:
            sorted_constants = sorted(constants_found.items(), key=lambda x: -x[1])
            print(f"  Top 10 constantes hexadecimales:")
            for const, count in sorted_constants[:10]:
                print(f"    {const}: {count} ocurrencias")
        else:
            print("  No se detectaron constantes hexadecimales")

        self.constants = dict(constants_found)
        self.results['constants'] = self.constants
        print()

    def _detect_timing_values(self):
        """Detecta valores de timing"""
        print("⏱️ Detección de Valores de Timing")
        print("-" * 40)

        timing_patterns = [
            r'(\d+)\s*ms',
            r'Sleep\s*\(?\s*(\d+)',
            r'Delay\s*\(?\s*(\d+)',
            r'Wait\s*\(?\s*(\d+)',
            r'Timeout\s*[=:]\s*(\d+)'
        ]

        timing_values = defaultdict(int)

        for string in self.strings:
            for pattern in timing_patterns:
                matches = re.findall(pattern, string, re.IGNORECASE)
                for match in matches:
                    try:
                        value = int(match)
                        if 1 <= value <= 10000:  # Rango razonable
                            timing_values[value] += 1
                    except:
                        pass

        if timing_values:
            sorted_timing = sorted(timing_values.items(), key=lambda x: -x[1])
            print(f"  Valores de timing detectados:")
            for value, count in sorted_timing[:10]:
                print(f"    {value}ms: {count} ocurrencias")
        else:
            print("  No se detectaron valores de timing")

        self.results['timing_values'] = dict(timing_values)
        print()

    def _detect_database_operations(self):
        """Detecta operaciones de base de datos"""
        print("🗄️ Detección de Operaciones de Base de Datos")
        print("-" * 40)

        sql_keywords = ['SELECT', 'INSERT', 'UPDATE', 'DELETE', 'CREATE', 'DROP', 'ALTER']
        db_files = ['.mdb', '.db', '.sqlite', '.accdb']

        sql_queries = []
        db_file_refs = []

        for string in self.strings:
            # SQL queries
            for keyword in sql_keywords:
                if keyword in string.upper():
                    sql_queries.append(string[:80])
                    break

            # Database files
            for ext in db_files:
                if ext in string.lower():
                    db_file_refs.append(string)

        if sql_queries:
            print(f"  SQL Queries encontradas: {len(sql_queries)}")
            for query in sql_queries[:5]:
                print(f"    - {query}")

        if db_file_refs:
            print(f"\n  Archivos de base de datos: {len(db_file_refs)}")
            for ref in db_file_refs[:5]:
                print(f"    - {ref}")

        if not sql_queries and not db_file_refs:
            print("  No se detectaron operaciones de base de datos")

        self.results['database'] = {
            'sql_queries': len(sql_queries),
            'db_files': len(db_file_refs),
            'samples': sql_queries[:10]
        }
        print()

    def _generate_results(self):
        """Genera resumen de resultados"""
        self.results['summary'] = {
            'exe_name': self.exe_name,
            'total_strings': len(self.strings),
            'total_imports': sum(len(funcs) for funcs in self.imports.values()),
            'total_exports': len(self.exports),
            'sections': len(self.sections),
            'has_com_ports': len(self.com_ports) > 0,
            'has_protocols': len(self.protocols) > 0,
            'has_database': self.results.get('database', {}).get('sql_queries', 0) > 0
        }


def analyze_all_services():
    """Analiza todos los servicios de CEM-44"""

    services = [
        'CEM441/PumpService/PumpService.exe',
        'CEM441/TankService/TankService.exe',
        'CEM441/PosService/PosService.exe',
        'CEM441/SMSService/SMSService.exe'
    ]

    all_results = {}

    for service_path in services:
        if not Path(service_path).exists():
            print(f"⚠️ No se encontró: {service_path}")
            continue

        analyzer = ServicioCEM44Analyzer(service_path)
        results = analyzer.analyze_all()

        if results:
            all_results[analyzer.exe_name] = results

            # Guardar resultados individuales
            output_file = f"{analyzer.exe_name}_analysis.json"
            with open(output_file, 'w', encoding='utf-8') as f:
                json.dump(results, f, indent=2, ensure_ascii=False)
            print(f"✅ Resultados guardados en: {output_file}\n")

    # Guardar resultados consolidados
    with open('servicios_cem44_analisis_completo.json', 'w', encoding='utf-8') as f:
        json.dump(all_results, f, indent=2, ensure_ascii=False)

    print("\n" + "="*80)
    print("🎯 ANÁLISIS COMPLETADO")
    print("="*80)
    print(f"\nServicios analizados: {len(all_results)}")
    for name, results in all_results.items():
        summary = results.get('summary', {})
        print(f"\n{name}:")
        print(f"  - Strings: {summary.get('total_strings', 0)}")
        print(f"  - Imports: {summary.get('total_imports', 0)}")
        print(f"  - Exports: {summary.get('total_exports', 0)}")
        print(f"  - COM Ports: {'✅' if summary.get('has_com_ports') else '❌'}")
        print(f"  - Protocols: {'✅' if summary.get('has_protocols') else '❌'}")
        print(f"  - Database: {'✅' if summary.get('has_database') else '❌'}")

    return all_results


if __name__ == "__main__":
    print("="*80)
    print("🔬 ANALIZADOR DE SERVICIOS CEM-44")
    print("Ingeniería Inversa - Análisis Completo")
    print("="*80)

    results = analyze_all_services()

    print("\n✅ Análisis completado. Revisa los archivos JSON generados.")
