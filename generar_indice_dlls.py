#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
GENERADOR DE ÍNDICE HTML PARA ANÁLISIS DE DLLs
================================================
Crea un índice HTML interactivo con todos los análisis de DLLs

Uso:
    python generar_indice_dlls.py "C:\ruta\a\directorio_analisis"
"""

import sys
import os
import json
from pathlib import Path


HTML_TEMPLATE = """<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Análisis de DLLs - Smart Ship Factory</title>
    <style>
        * {{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }}

        body {{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 20px;
            color: #333;
        }}

        .container {{
            max-width: 1400px;
            margin: 0 auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            overflow: hidden;
        }}

        header {{
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 30px;
            text-align: center;
        }}

        header h1 {{
            font-size: 2.5em;
            margin-bottom: 10px;
        }}

        header p {{
            font-size: 1.1em;
            opacity: 0.9;
        }}

        .stats {{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            padding: 30px;
            background: #f8f9fa;
        }}

        .stat-card {{
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }}

        .stat-card .number {{
            font-size: 2.5em;
            font-weight: bold;
            color: #667eea;
        }}

        .stat-card .label {{
            color: #666;
            margin-top: 5px;
        }}

        .filters {{
            padding: 20px 30px;
            background: #fff;
            border-bottom: 1px solid #e0e0e0;
        }}

        .filters input {{
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 1em;
        }}

        .filters input:focus {{
            outline: none;
            border-color: #667eea;
        }}

        .dll-list {{
            padding: 30px;
        }}

        .dll-card {{
            background: white;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            margin-bottom: 20px;
            overflow: hidden;
            transition: all 0.3s ease;
        }}

        .dll-card:hover {{
            border-color: #667eea;
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.2);
        }}

        .dll-card-header {{
            padding: 20px;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }}

        .dll-card-header:hover {{
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }}

        .dll-name {{
            font-size: 1.3em;
            font-weight: bold;
        }}

        .dll-arch {{
            display: inline-block;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: bold;
        }}

        .arch-32 {{
            background: #ffd93d;
            color: #333;
        }}

        .arch-64 {{
            background: #6bcf7f;
            color: white;
        }}

        .dll-card-body {{
            padding: 20px;
            display: none;
        }}

        .dll-card.expanded .dll-card-body {{
            display: block;
        }}

        .info-grid {{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-bottom: 20px;
        }}

        .info-section {{
            background: #f8f9fa;
            padding: 15px;
            border-radius: 6px;
        }}

        .info-section h3 {{
            color: #667eea;
            margin-bottom: 10px;
            font-size: 1.1em;
        }}

        .info-section ul {{
            list-style: none;
        }}

        .info-section li {{
            padding: 5px 0;
            border-bottom: 1px solid #e0e0e0;
        }}

        .info-section li:last-child {{
            border-bottom: none;
        }}

        .export-func {{
            font-family: 'Courier New', monospace;
            background: #fff;
            padding: 8px;
            margin: 5px 0;
            border-left: 3px solid #667eea;
            border-radius: 3px;
        }}

        .highlight {{
            background: #fff59d;
            padding: 2px 5px;
            border-radius: 3px;
            font-weight: bold;
        }}

        footer {{
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
        }}

        .no-results {{
            text-align: center;
            padding: 40px;
            color: #999;
            font-size: 1.2em;
        }}
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>📚 Análisis de DLLs</h1>
            <p>Smart Ship Factory - Documentación Completa</p>
        </header>

        <div class="stats">
            <div class="stat-card">
                <div class="number">{total_dlls}</div>
                <div class="label">Total DLLs</div>
            </div>
            <div class="stat-card">
                <div class="number">{total_exports}</div>
                <div class="label">Funciones Exportadas</div>
            </div>
            <div class="stat-card">
                <div class="number">{dll_32bit}</div>
                <div class="label">DLLs 32-bit</div>
            </div>
            <div class="stat-card">
                <div class="number">{dll_64bit}</div>
                <div class="label">DLLs 64-bit</div>
            </div>
        </div>

        <div class="filters">
            <input type="text" id="searchBox" placeholder="🔍 Buscar DLL o función... (ej: GPBox, Authorize, Serial)" onkeyup="filterDLLs()">
        </div>

        <div class="dll-list" id="dllList">
            {dll_cards}
        </div>

        <div id="noResults" class="no-results" style="display: none;">
            No se encontraron resultados para tu búsqueda
        </div>

        <footer>
            <p>Generado automáticamente por generar_indice_dlls.py</p>
            <p>Smart Ship Factory Analysis Tool - 2025</p>
        </footer>
    </div>

    <script>
        function toggleCard(id) {{
            const card = document.getElementById('card-' + id);
            card.classList.toggle('expanded');
        }}

        function filterDLLs() {{
            const searchTerm = document.getElementById('searchBox').value.toLowerCase();
            const cards = document.querySelectorAll('.dll-card');
            let visibleCount = 0;

            cards.forEach(card => {{
                const content = card.textContent.toLowerCase();
                if (content.includes(searchTerm)) {{
                    card.style.display = 'block';
                    visibleCount++;
                }} else {{
                    card.style.display = 'none';
                }}
            }});

            document.getElementById('noResults').style.display = visibleCount === 0 ? 'block' : 'none';
        }}
    </script>
</body>
</html>
"""


def generate_dll_card(dll_info, index):
    """Generar tarjeta HTML para una DLL"""

    dll_name = os.path.basename(dll_info.get('path', 'Unknown'))
    is_32bit = dll_info.get('is_32bit', None)
    arch_class = 'arch-32' if is_32bit else 'arch-64'
    arch_label = '32-bit' if is_32bit else '64-bit' if is_32bit is False else 'Unknown'

    exports = dll_info.get('exports', [])
    imports = dll_info.get('imports', [])

    # Generar lista de exports
    exports_html = ""
    if exports:
        exports_html = "<h3>🎯 Funciones Exportadas</h3>"
        for exp in exports[:20]:  # Limitar a 20
            name = exp.get('name', '(sin nombre)')
            ordinal = exp.get('ordinal', 0)

            # Resaltar funciones importantes
            important_keywords = ['authorize', 'pump', 'price', 'status', 'init', 'connect', 'read', 'write']
            is_important = any(kw in name.lower() for kw in important_keywords) if name != '(sin nombre)' else False

            if is_important:
                exports_html += f'<div class="export-func"><span class="highlight">[{ordinal}] {name}</span></div>'
            else:
                exports_html += f'<div class="export-func">[{ordinal}] {name}</div>'

        if len(exports) > 20:
            exports_html += f'<p>... y {len(exports) - 20} más</p>'
    else:
        exports_html = "<h3>🎯 Funciones Exportadas</h3><p>No exporta funciones públicas</p>"

    # Generar lista de imports
    imports_html = "<h3>📦 Dependencias</h3>"
    if imports:
        imports_html += "<ul>"
        for imp in imports[:10]:
            dll_name_imp = imp.get('dll', 'Unknown')
            imports_html += f"<li>{dll_name_imp}</li>"
        imports_html += "</ul>"
        if len(imports) > 10:
            imports_html += f"<p>... y {len(imports) - 10} más</p>"
    else:
        imports_html += "<p>Sin imports</p>"

    # Información básica
    timestamp = dll_info.get('timestamp', 'Desconocido')

    card_html = f"""
    <div class="dll-card" id="card-{index}">
        <div class="dll-card-header" onclick="toggleCard({index})">
            <div class="dll-name">{dll_name}</div>
            <div class="dll-arch {arch_class}">{arch_label}</div>
        </div>
        <div class="dll-card-body">
            <div class="info-grid">
                <div class="info-section">
                    <h3>ℹ️ Información Básica</h3>
                    <ul>
                        <li><strong>Ruta:</strong> {dll_info.get('path', 'N/A')}</li>
                        <li><strong>Compilado:</strong> {timestamp}</li>
                        <li><strong>Tipo:</strong> {'DLL' if dll_info.get('is_dll') else 'Otro'}</li>
                        <li><strong>Funciones exportadas:</strong> {len(exports)}</li>
                    </ul>
                </div>
                <div class="info-section">
                    {imports_html}
                </div>
            </div>
            <div class="info-section">
                {exports_html}
            </div>
        </div>
    </div>
    """

    return card_html


def generate_index(analysis_dir):
    """Generar índice HTML completo"""

    print(f"[*] Buscando archivos JSON en: {analysis_dir}")

    # Buscar todos los archivos JSON
    json_files = []
    for file in os.listdir(analysis_dir):
        if file.endswith('_analysis.json'):
            json_files.append(os.path.join(analysis_dir, file))

    if not json_files:
        print("[!] No se encontraron archivos de análisis JSON")
        return False

    print(f"[*] Encontrados {len(json_files)} archivos de análisis")

    # Cargar todos los análisis
    all_dlls = []
    total_exports = 0
    dll_32bit = 0
    dll_64bit = 0

    for json_file in json_files:
        try:
            with open(json_file, 'r', encoding='utf-8') as f:
                dll_info = json.load(f)
                all_dlls.append(dll_info)

                total_exports += len(dll_info.get('exports', []))

                if dll_info.get('is_32bit') is True:
                    dll_32bit += 1
                elif dll_info.get('is_32bit') is False:
                    dll_64bit += 1
        except Exception as e:
            print(f"[!] Error al leer {json_file}: {e}")

    # Ordenar por nombre
    all_dlls.sort(key=lambda x: os.path.basename(x.get('path', '')))

    # Generar tarjetas HTML
    dll_cards_html = ""
    for i, dll_info in enumerate(all_dlls):
        dll_cards_html += generate_dll_card(dll_info, i)

    # Generar HTML final
    html = HTML_TEMPLATE.format(
        total_dlls=len(all_dlls),
        total_exports=total_exports,
        dll_32bit=dll_32bit,
        dll_64bit=dll_64bit,
        dll_cards=dll_cards_html
    )

    # Guardar índice
    output_path = os.path.join(analysis_dir, 'indice.html')
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(html)

    print(f"[✓] Índice HTML generado: {output_path}")

    return True


def main():
    if len(sys.argv) < 2:
        print("Uso: python generar_indice_dlls.py <directorio_analisis>")
        sys.exit(1)

    analysis_dir = sys.argv[1]

    if not os.path.exists(analysis_dir):
        print(f"[✗] El directorio no existe: {analysis_dir}")
        sys.exit(1)

    success = generate_index(analysis_dir)

    if not success:
        sys.exit(1)


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"[✗] Error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
