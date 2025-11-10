#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
VB DECOMPILER CODE ORGANIZER
=============================
Organiza el código gigante de VBLite en archivos separados:
- Forms (formularios)
- Modules (módulos)
- Classes (clases)
- Functions/Subs (funciones)
- Event Handlers (eventos)

Uso: python vb_code_organizer.py <archivo_vblite_output.txt>
"""

import sys
import os
import re
from pathlib import Path
from typing import List, Dict, Optional


class VBCodeOrganizer:
    """Organizador de código VB decompilado"""

    def __init__(self, input_file: str, output_dir: str = "vb_code_organized"):
        self.input_file = input_file
        self.output_dir = output_dir
        self.code_blocks = {
            'forms': {},
            'modules': {},
            'classes': {},
            'functions': {},
            'subs': {},
            'properties': {},
            'events': {},
            'declarations': [],
        }

    def organize(self):
        """Organizar todo el código"""

        print("=" * 80)
        print("🔧 VB CODE ORGANIZER - Organizando código decompilado")
        print("=" * 80)
        print()

        # Crear directorio de salida
        Path(self.output_dir).mkdir(parents=True, exist_ok=True)

        # Leer archivo
        print(f"📖 Leyendo: {self.input_file}")
        with open(self.input_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()

        print(f"   Tamaño: {len(content):,} caracteres")
        print()

        # Analizar y separar código
        self._parse_code(content)

        # Guardar en archivos separados
        self._save_organized_code()

        # Crear índice
        self._create_index()

        print()
        print("✅ Código organizado exitosamente")
        print(f"📁 Directorio: {self.output_dir}/")

    def _parse_code(self, content: str):
        """Parsear y separar el código en bloques"""

        print("🔍 Parseando código VB...")
        print()

        # Separar por líneas
        lines = content.split('\n')
        current_block = None
        current_type = None
        current_name = None
        buffer = []

        for i, line in enumerate(lines):
            # Detectar inicio de bloque

            # Form (formulario)
            if re.match(r'^\s*Begin\s+VB\.Form\s+(\w+)', line, re.IGNORECASE):
                if current_block:
                    self._save_block(current_type, current_name, buffer)
                match = re.search(r'Begin\s+VB\.Form\s+(\w+)', line, re.IGNORECASE)
                current_name = match.group(1) if match else f"Form_{i}"
                current_type = 'forms'
                buffer = [line]
                current_block = 'form'

            # Module (módulo)
            elif re.match(r'^\s*Attribute\s+VB_Name\s*=\s*"(\w+)"', line):
                match = re.search(r'VB_Name\s*=\s*"(\w+)"', line)
                module_name = match.group(1) if match else f"Module_{i}"

                # Ver si es módulo o clase
                if i > 0 and 'VB_GlobalNameSpace' in lines[i-1:i+5]:
                    if current_block:
                        self._save_block(current_type, current_name, buffer)
                    current_type = 'classes'
                    current_name = module_name
                    buffer = [line]
                    current_block = 'class'
                else:
                    if current_block:
                        self._save_block(current_type, current_name, buffer)
                    current_type = 'modules'
                    current_name = module_name
                    buffer = [line]
                    current_block = 'module'

            # Function
            elif re.match(r'^\s*(Public|Private|Friend)?\s*Function\s+(\w+)', line, re.IGNORECASE):
                if current_block in ['form', 'module', 'class']:
                    buffer.append(line)
                else:
                    if current_block:
                        self._save_block(current_type, current_name, buffer)
                    match = re.search(r'Function\s+(\w+)', line, re.IGNORECASE)
                    current_name = match.group(1) if match else f"Function_{i}"
                    current_type = 'functions'
                    buffer = [line]
                    current_block = 'function'

            # Sub
            elif re.match(r'^\s*(Public|Private|Friend)?\s*Sub\s+(\w+)', line, re.IGNORECASE):
                if current_block in ['form', 'module', 'class']:
                    buffer.append(line)
                else:
                    if current_block:
                        self._save_block(current_type, current_name, buffer)
                    match = re.search(r'Sub\s+(\w+)', line, re.IGNORECASE)
                    current_name = match.group(1) if match else f"Sub_{i}"

                    # Detectar si es event handler
                    if '_' in current_name and any(event in current_name for event in ['Click', 'Load', 'KeyPress', 'Change']):
                        current_type = 'events'
                    else:
                        current_type = 'subs'

                    buffer = [line]
                    current_block = 'sub'

            # Property
            elif re.match(r'^\s*(Public|Private)?\s*Property\s+(Get|Let|Set)\s+(\w+)', line, re.IGNORECASE):
                if current_block in ['form', 'module', 'class']:
                    buffer.append(line)
                else:
                    if current_block:
                        self._save_block(current_type, current_name, buffer)
                    match = re.search(r'Property\s+(?:Get|Let|Set)\s+(\w+)', line, re.IGNORECASE)
                    current_name = match.group(1) if match else f"Property_{i}"
                    current_type = 'properties'
                    buffer = [line]
                    current_block = 'property'

            # End de bloque
            elif re.match(r'^\s*End\s+(Function|Sub|Property)', line, re.IGNORECASE):
                buffer.append(line)
                if current_block in ['function', 'sub', 'property']:
                    self._save_block(current_type, current_name, buffer)
                    current_block = None
                    current_type = None
                    current_name = None
                    buffer = []

            elif re.match(r'^\s*End\s*$', line) and current_block == 'form':
                buffer.append(line)
                self._save_block(current_type, current_name, buffer)
                current_block = None
                current_type = None
                current_name = None
                buffer = []

            # Declaraciones globales
            elif re.match(r'^\s*(Public|Private|Dim|Const|Type|Declare)', line, re.IGNORECASE):
                if current_block:
                    buffer.append(line)
                else:
                    self.code_blocks['declarations'].append(line)

            # Línea normal
            else:
                if current_block:
                    buffer.append(line)
                elif line.strip():  # Línea no vacía sin bloque
                    self.code_blocks['declarations'].append(line)

        # Guardar último bloque si existe
        if current_block and buffer:
            self._save_block(current_type, current_name, buffer)

        # Mostrar estadísticas
        print("📊 Estadísticas del código:")
        print(f"   Forms:        {len(self.code_blocks['forms']):3d}")
        print(f"   Modules:      {len(self.code_blocks['modules']):3d}")
        print(f"   Classes:      {len(self.code_blocks['classes']):3d}")
        print(f"   Functions:    {len(self.code_blocks['functions']):3d}")
        print(f"   Subs:         {len(self.code_blocks['subs']):3d}")
        print(f"   Properties:   {len(self.code_blocks['properties']):3d}")
        print(f"   Events:       {len(self.code_blocks['events']):3d}")
        print(f"   Declarations: {len(self.code_blocks['declarations']):3d} líneas")

    def _save_block(self, block_type: str, name: str, lines: List[str]):
        """Guardar un bloque de código"""
        if not block_type or not name:
            return

        code = '\n'.join(lines)

        if block_type in self.code_blocks:
            if isinstance(self.code_blocks[block_type], dict):
                self.code_blocks[block_type][name] = code
            elif isinstance(self.code_blocks[block_type], list):
                self.code_blocks[block_type].append(code)

    def _save_organized_code(self):
        """Guardar código organizado en archivos"""

        print()
        print("💾 Guardando archivos organizados...")
        print()

        # Forms
        if self.code_blocks['forms']:
            forms_dir = Path(self.output_dir) / "01_Forms"
            forms_dir.mkdir(exist_ok=True)

            for name, code in self.code_blocks['forms'].items():
                filename = forms_dir / f"{name}.frm"
                with open(filename, 'w', encoding='utf-8') as f:
                    f.write(code)
                print(f"   ✓ {filename}")

        # Modules
        if self.code_blocks['modules']:
            modules_dir = Path(self.output_dir) / "02_Modules"
            modules_dir.mkdir(exist_ok=True)

            for name, code in self.code_blocks['modules'].items():
                filename = modules_dir / f"{name}.bas"
                with open(filename, 'w', encoding='utf-8') as f:
                    f.write(code)
                print(f"   ✓ {filename}")

        # Classes
        if self.code_blocks['classes']:
            classes_dir = Path(self.output_dir) / "03_Classes"
            classes_dir.mkdir(exist_ok=True)

            for name, code in self.code_blocks['classes'].items():
                filename = classes_dir / f"{name}.cls"
                with open(filename, 'w', encoding='utf-8') as f:
                    f.write(code)
                print(f"   ✓ {filename}")

        # Functions
        if self.code_blocks['functions']:
            funcs_dir = Path(self.output_dir) / "04_Functions"
            funcs_dir.mkdir(exist_ok=True)

            # Agrupar funciones en un solo archivo para no tener demasiados
            all_functions = "\n\n' " + "=" * 70 + "\n\n".join(
                f"' FUNCTION: {name}\n{code}"
                for name, code in self.code_blocks['functions'].items()
            )

            filename = funcs_dir / "AllFunctions.bas"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(all_functions)
            print(f"   ✓ {filename}")

        # Subs
        if self.code_blocks['subs']:
            subs_dir = Path(self.output_dir) / "05_Subs"
            subs_dir.mkdir(exist_ok=True)

            all_subs = "\n\n' " + "=" * 70 + "\n\n".join(
                f"' SUB: {name}\n{code}"
                for name, code in self.code_blocks['subs'].items()
            )

            filename = subs_dir / "AllSubs.bas"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(all_subs)
            print(f"   ✓ {filename}")

        # Properties
        if self.code_blocks['properties']:
            props_dir = Path(self.output_dir) / "06_Properties"
            props_dir.mkdir(exist_ok=True)

            all_props = "\n\n' " + "=" * 70 + "\n\n".join(
                f"' PROPERTY: {name}\n{code}"
                for name, code in self.code_blocks['properties'].items()
            )

            filename = props_dir / "AllProperties.bas"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(all_props)
            print(f"   ✓ {filename}")

        # Events
        if self.code_blocks['events']:
            events_dir = Path(self.output_dir) / "07_Events"
            events_dir.mkdir(exist_ok=True)

            all_events = "\n\n' " + "=" * 70 + "\n\n".join(
                f"' EVENT: {name}\n{code}"
                for name, code in self.code_blocks['events'].items()
            )

            filename = events_dir / "AllEvents.bas"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(all_events)
            print(f"   ✓ {filename}")

        # Declarations
        if self.code_blocks['declarations']:
            decl_dir = Path(self.output_dir) / "08_Declarations"
            decl_dir.mkdir(exist_ok=True)

            all_declarations = '\n'.join(self.code_blocks['declarations'])

            filename = decl_dir / "Declarations.bas"
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(all_declarations)
            print(f"   ✓ {filename}")

    def _create_index(self):
        """Crear índice HTML del código"""

        index_html = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CEM-44 Code Index</title>
    <style>
        body {{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            background: #f5f5f5;
        }}
        h1 {{
            color: #333;
            border-bottom: 3px solid #007acc;
            padding-bottom: 10px;
        }}
        .section {{
            background: white;
            padding: 20px;
            margin: 20px 0;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }}
        .section h2 {{
            color: #007acc;
            margin-top: 0;
        }}
        .item {{
            padding: 8px;
            margin: 5px 0;
            border-left: 3px solid #007acc;
            padding-left: 15px;
        }}
        .item a {{
            color: #0066cc;
            text-decoration: none;
            font-weight: bold;
        }}
        .item a:hover {{
            text-decoration: underline;
        }}
        .count {{
            color: #666;
            font-size: 0.9em;
        }}
        .stats {{
            background: #e8f4f8;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
        }}
    </style>
</head>
<body>
    <h1>🔧 CEM-44 Code Index</h1>

    <div class="stats">
        <h3>📊 Estadísticas</h3>
        <p><strong>Forms:</strong> {len(self.code_blocks['forms'])}</p>
        <p><strong>Modules:</strong> {len(self.code_blocks['modules'])}</p>
        <p><strong>Classes:</strong> {len(self.code_blocks['classes'])}</p>
        <p><strong>Functions:</strong> {len(self.code_blocks['functions'])}</p>
        <p><strong>Subs:</strong> {len(self.code_blocks['subs'])}</p>
        <p><strong>Properties:</strong> {len(self.code_blocks['properties'])}</p>
        <p><strong>Events:</strong> {len(self.code_blocks['events'])}</p>
        <p><strong>Declarations:</strong> {len(self.code_blocks['declarations'])} líneas</p>
    </div>
"""

        # Forms
        if self.code_blocks['forms']:
            index_html += """
    <div class="section">
        <h2>📋 Forms (Formularios)</h2>
"""
            for name in sorted(self.code_blocks['forms'].keys()):
                index_html += f'        <div class="item"><a href="01_Forms/{name}.frm">{name}</a></div>\n'
            index_html += "    </div>\n"

        # Modules
        if self.code_blocks['modules']:
            index_html += """
    <div class="section">
        <h2>📦 Modules (Módulos)</h2>
"""
            for name in sorted(self.code_blocks['modules'].keys()):
                index_html += f'        <div class="item"><a href="02_Modules/{name}.bas">{name}</a></div>\n'
            index_html += "    </div>\n"

        # Classes
        if self.code_blocks['classes']:
            index_html += """
    <div class="section">
        <h2>🏗️  Classes (Clases)</h2>
"""
            for name in sorted(self.code_blocks['classes'].keys()):
                index_html += f'        <div class="item"><a href="03_Classes/{name}.cls">{name}</a></div>\n'
            index_html += "    </div>\n"

        # Functions
        if self.code_blocks['functions']:
            index_html += f"""
    <div class="section">
        <h2>⚙️  Functions <span class="count">({len(self.code_blocks['functions'])})</span></h2>
        <div class="item"><a href="04_Functions/AllFunctions.bas">Ver todas las funciones</a></div>
    </div>
"""

        # Subs
        if self.code_blocks['subs']:
            index_html += f"""
    <div class="section">
        <h2>🔧 Subs <span class="count">({len(self.code_blocks['subs'])})</span></h2>
        <div class="item"><a href="05_Subs/AllSubs.bas">Ver todas las subs</a></div>
    </div>
"""

        # Events
        if self.code_blocks['events']:
            index_html += f"""
    <div class="section">
        <h2>⚡ Events <span class="count">({len(self.code_blocks['events'])})</span></h2>
        <div class="item"><a href="07_Events/AllEvents.bas">Ver todos los eventos</a></div>
    </div>
"""

        # Declarations
        if self.code_blocks['declarations']:
            index_html += """
    <div class="section">
        <h2>📝 Declarations (Declaraciones)</h2>
        <div class="item"><a href="08_Declarations/Declarations.bas">Ver declaraciones globales</a></div>
    </div>
"""

        index_html += """
</body>
</html>
"""

        # Guardar índice
        index_file = Path(self.output_dir) / "index.html"
        with open(index_file, 'w', encoding='utf-8') as f:
            f.write(index_html)

        print()
        print(f"📄 Índice HTML creado: {index_file}")
        print(f"   Abrir en navegador para ver estructura completa")


def main():
    if len(sys.argv) < 2:
        print("Uso: python vb_code_organizer.py <archivo_vblite_output.txt>")
        print()
        print("Esta herramienta organiza el código gigante de VBLite en archivos separados.")
        print()
        print("Ejemplo:")
        print("  python vb_code_organizer.py cem44_decompiled.txt")
        print()
        print("Organiza el código en:")
        print("  - 01_Forms/       → Formularios (.frm)")
        print("  - 02_Modules/     → Módulos (.bas)")
        print("  - 03_Classes/     → Clases (.cls)")
        print("  - 04_Functions/   → Funciones")
        print("  - 05_Subs/        → Subs")
        print("  - 06_Properties/  → Properties")
        print("  - 07_Events/      → Event handlers")
        print("  - 08_Declarations/ → Declaraciones globales")
        print()
        sys.exit(1)

    input_file = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "vb_code_organized"

    if not os.path.exists(input_file):
        print(f"✗ Archivo no encontrado: {input_file}")
        sys.exit(1)

    organizer = VBCodeOrganizer(input_file, output_dir)
    organizer.organize()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado")
    except Exception as e:
        print(f"\n✗ Error: {e}")
        import traceback
        traceback.print_exc()
