#!/usr/bin/env python3
"""
Extrae el protocolo completo Gilbarco desde el código descompilado de CEM-44
"""
import re
import json
from collections import defaultdict
from pathlib import Path

class GilbarcoProtocolExtractor:
    def __init__(self, codigodev6_path="codigodev6"):
        self.codigodev6_path = Path(codigodev6_path)
        self.commands = {}
        self.constants = {}
        self.timing_values = []
        self.serial_config = {}

    def extract_commands_from_forecourt(self):
        """Extrae todos los comandos del archivo FORECOURT.123"""
        forecourt_file = self.codigodev6_path / "FORECOURT.123"

        if not forecourt_file.exists():
            print(f"❌ No se encontró {forecourt_file}")
            return

        print(f"📖 Leyendo {forecourt_file}...")
        content = forecourt_file.read_text(errors='ignore')

        # Buscar patrones de comandos: LitStr "XXX" donde XXX son 3 dígitos
        pattern = r'LitStr\s+"(\d{3})"'
        matches = re.findall(pattern, content)

        command_counts = defaultdict(int)
        for cmd in matches:
            command_counts[cmd] += 1

        print(f"\n✅ Comandos encontrados: {len(command_counts)}")

        # Organizar por grupos
        for cmd, count in sorted(command_counts.items()):
            cmd_num = int(cmd)
            self.commands[cmd] = {
                'code': cmd,
                'count': count,
                'category': self._categorize_command(cmd_num)
            }

        return self.commands

    def _categorize_command(self, cmd_num):
        """Categoriza comandos según su rango numérico"""
        if cmd_num == 0:
            return "RESET/INIT"
        elif 1 <= cmd_num <= 10:
            return "BASIC_CONTROL"
        elif 11 <= cmd_num <= 29:
            return "PUMP_OPERATIONS"
        elif 30 <= cmd_num <= 49:
            return "CONFIGURATION"
        elif 50 <= cmd_num <= 69:
            return "STATUS_QUERY"
        elif 70 <= cmd_num <= 99:
            return "ADVANCED_OPS"
        elif 100 <= cmd_num <= 180:
            return "EXTENDED_CMDS"
        elif 200 <= cmd_num <= 254:
            return "SPECIAL_CMDS"
        else:
            return "UNKNOWN"

    def extract_chr_constants(self):
        """Extrae constantes Chr$() usadas en el protocolo"""
        forecourt_file = self.codigodev6_path / "FORECOURT.123"

        if not forecourt_file.exists():
            return

        content = forecourt_file.read_text(errors='ignore')

        # Buscar Chr$(N) donde N es un número
        pattern = r'Chr\$\((\d+)\)'
        matches = re.findall(pattern, content)

        chr_counts = defaultdict(int)
        for num in matches:
            chr_counts[int(num)] += 1

        for num, count in sorted(chr_counts.items()):
            char_name = self._get_char_name(num)
            self.constants[f"Chr({num})"] = {
                'value': num,
                'hex': f"0x{num:02X}",
                'name': char_name,
                'count': count
            }

        print(f"\n✅ Constantes Chr() encontradas: {len(chr_counts)}")
        return self.constants

    def _get_char_name(self, num):
        """Retorna nombre del carácter ASCII"""
        names = {
            2: "STX (Start of Text)",
            3: "ETX (End of Text)",
            10: "LF (Line Feed)",
            13: "CR (Carriage Return)",
            16: "DLE (Data Link Escape)",
            24: "CAN (Cancel)",
            32: "SPACE"
        }
        return names.get(num, f"ASCII {num}")

    def extract_timing_values(self):
        """Extrae valores de timing del código"""
        files_to_check = [
            "FORECOURT.123",
            "Mod_drv.bas",
            "modDll.bas"
        ]

        timing_pattern = r'(\d+)\s*ms|Sleep\s*\(?\s*(\d+)|Timer\s*[+\-]\s*(\d+)'

        for filename in files_to_check:
            filepath = self.codigodev6_path / filename
            if not filepath.exists():
                continue

            content = filepath.read_text(errors='ignore')
            matches = re.findall(timing_pattern, content, re.IGNORECASE)

            for match in matches:
                for val in match:
                    if val:
                        self.timing_values.append(int(val))

        if self.timing_values:
            timing_counts = defaultdict(int)
            for val in self.timing_values:
                timing_counts[val] += 1

            print(f"\n✅ Valores de timing encontrados:")
            for val, count in sorted(timing_counts.items(), key=lambda x: -x[1])[:10]:
                print(f"   {val}ms: {count} ocurrencias")

        return timing_counts

    def analyze_mod_drv(self):
        """Analiza el módulo Mod_drv.bas para funciones de envío/recepción"""
        mod_drv = self.codigodev6_path / "Mod_drv.bas"

        if not mod_drv.exists():
            print(f"❌ No se encontró {mod_drv}")
            return {}

        print(f"\n📖 Analizando Mod_drv.bas...")

        # Leer primeras 1000 líneas para encontrar funciones públicas
        with open(mod_drv, 'r', errors='ignore') as f:
            lines = [f.readline() for _ in range(1000)]

        content = ''.join(lines)

        # Buscar Public Function/Sub
        function_pattern = r'(Public|Private)\s+(Function|Sub)\s+(\w+)'
        functions = re.findall(function_pattern, content, re.IGNORECASE)

        function_list = []
        for visibility, func_type, name in functions:
            function_list.append({
                'name': name,
                'type': func_type,
                'visibility': visibility
            })

        if function_list:
            print(f"✅ Funciones encontradas en Mod_drv.bas: {len(function_list)}")
            for func in function_list[:20]:  # Mostrar primeras 20
                print(f"   {func['visibility']} {func['type']} {func['name']}")

        return function_list

    def generate_report(self):
        """Genera reporte completo en Markdown"""
        print("\n" + "="*80)
        print("🎯 EXTRACCIÓN COMPLETA DEL PROTOCOLO GILBARCO")
        print("="*80)

        # 1. Extraer comandos
        commands = self.extract_commands_from_forecourt()

        # 2. Extraer constantes Chr()
        constants = self.extract_chr_constants()

        # 3. Extraer timing
        timing = self.extract_timing_values()

        # 4. Analizar Mod_drv
        functions = self.analyze_mod_drv()

        # Generar Markdown
        report = self._generate_markdown_report(commands, constants, timing, functions)

        # Guardar reporte
        output_file = Path("PROTOCOLO_GILBARCO_VB6_COMPLETO.md")
        output_file.write_text(report, encoding='utf-8')
        print(f"\n✅ Reporte guardado en: {output_file}")

        # Guardar JSON
        json_data = {
            'commands': self.commands,
            'constants': self.constants,
            'timing_values': dict(timing) if timing else {},
            'functions': functions
        }
        json_file = Path("protocolo_gilbarco_vb6.json")
        json_file.write_text(json.dumps(json_data, indent=2, ensure_ascii=False), encoding='utf-8')
        print(f"✅ Datos JSON guardados en: {json_file}")

        return report

    def _generate_markdown_report(self, commands, constants, timing, functions):
        """Genera reporte en Markdown"""
        md = []
        md.append("# 🎯 PROTOCOLO GILBARCO - EXTRACCIÓN COMPLETA DESDE CEM-44 VB6\n")
        md.append("*Extraído del código descompilado de CEM-44.exe con VBLite*\n\n")
        md.append("---\n\n")

        # Comandos
        md.append("## 📋 COMANDOS DEL PROTOCOLO\n\n")
        md.append(f"**Total de comandos únicos encontrados:** {len(commands)}\n\n")

        # Agrupar por categoría
        by_category = defaultdict(list)
        for cmd, info in sorted(commands.items()):
            by_category[info['category']].append((cmd, info))

        for category, cmds in sorted(by_category.items()):
            md.append(f"### {category}\n\n")
            md.append("| Código | Decimal | Ocurrencias |\n")
            md.append("|--------|---------|-------------|\n")
            for cmd, info in cmds:
                md.append(f"| {cmd} | {int(cmd):3d} | {info['count']:4d} |\n")
            md.append("\n")

        # Constantes
        if constants:
            md.append("## 🔢 CONSTANTES DEL PROTOCOLO\n\n")
            md.append("| Chr(n) | Hex | Nombre | Ocurrencias |\n")
            md.append("|--------|-----|--------|-------------|\n")
            for const_name, info in sorted(constants.items(), key=lambda x: x[1]['value']):
                md.append(f"| Chr({info['value']}) | {info['hex']} | {info['name']} | {info['count']} |\n")
            md.append("\n")

        # Timing
        if timing:
            md.append("## ⏱️ VALORES DE TIMING\n\n")
            md.append("| Tiempo (ms) | Ocurrencias |\n")
            md.append("|-------------|-------------|\n")
            for val, count in sorted(timing.items(), key=lambda x: -x[1])[:20]:
                md.append(f"| {val:6d} | {count:4d} |\n")
            md.append("\n")

        # Funciones
        if functions:
            md.append("## 🔧 FUNCIONES EN MOD_DRV.BAS\n\n")
            md.append("| Visibilidad | Tipo | Nombre |\n")
            md.append("|-------------|------|--------|\n")
            for func in functions[:50]:  # Primeras 50
                md.append(f"| {func['visibility']} | {func['type']} | {func['name']} |\n")
            md.append("\n")

        # Resumen de hallazgos
        md.append("## 🎯 HALLAZGOS CLAVE\n\n")

        if 2 in [c['value'] for c in constants.values()]:
            md.append("✅ **STX (0x02)** confirmado en el protocolo\n\n")
        if 3 in [c['value'] for c in constants.values()]:
            md.append("✅ **ETX (0x03)** confirmado en el protocolo\n\n")
        if 16 in [c['value'] for c in constants.values()]:
            md.append("✅ **DLE (0x10)** confirmado en el protocolo\n\n")

        md.append(f"✅ **{len(commands)} comandos únicos** identificados\n\n")

        if timing:
            most_common_timing = max(timing.items(), key=lambda x: x[1])
            md.append(f"✅ **Timing más común:** {most_common_timing[0]}ms ({most_common_timing[1]} ocurrencias)\n\n")

        md.append("\n---\n\n")
        md.append("*Generado automáticamente por extract_protocol_from_vb.py*\n")

        return ''.join(md)

def main():
    print("🚀 Iniciando extracción del protocolo Gilbarco...")
    print("=" * 80)

    extractor = GilbarcoProtocolExtractor()
    extractor.generate_report()

    print("\n" + "=" * 80)
    print("✅ ¡Extracción completada con éxito!")
    print("=" * 80)

if __name__ == "__main__":
    main()
