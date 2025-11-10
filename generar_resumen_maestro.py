#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Generar resumen maestro de todos los DLLs analizados
"""

import json
import os
from pathlib import Path

ANALYSIS_DIR = "/home/user/api-spriconsole/analisis_dlls_completo"

# Cargar todos los análisis
dll_analyses = []
for json_file in sorted(Path(ANALYSIS_DIR).glob("*.json")):
    with open(json_file, 'r', encoding='utf-8') as f:
        dll_analyses.append(json.load(f))

# Generar reporte
output = []
output.append("# 📊 RESUMEN MAESTRO - ANÁLISIS DE TODOS LOS DLLs")
output.append("")
output.append(f"**Total DLLs analizados**: {len(dll_analyses)}")
output.append(f"**Fecha**: 2025-11-10")
output.append("")
output.append("---")
output.append("")

# Tabla resumen
output.append("## 📋 TABLA RESUMEN")
output.append("")
output.append("| # | DLL | Exports | Arch | Compilado | Categoría |")
output.append("|---|-----|---------|------|-----------|-----------|")

categories = {
    'communications': '📡 Comunicación',
    'pumps': '⛽ Bombas',
    'addins': '🔌 Add-ins',
    'router': '🔀 Router',
    'lib': '📚 Librería'
}

for i, dll in enumerate(dll_analyses, 1):
    name = os.path.basename(dll['path'])
    exports = len(dll.get('exports', []))
    arch = "32-bit" if dll.get('is_32bit') else "64-bit" if dll.get('is_32bit') is False else "?"
    timestamp = dll.get('timestamp', 'N/A')[:10] if dll.get('timestamp') else 'N/A'

    # Determinar categoría
    category = '❓ Otro'
    for cat_key, cat_name in categories.items():
        if cat_key in dll['path']:
            category = cat_name
            break

    output.append(f"| {i} | {name} | {exports} | {arch} | {timestamp} | {category} |")

output.append("")
output.append("---")
output.append("")

# Estadísticas
total_exports = sum(len(dll.get('exports', [])) for dll in dll_analyses)
dll_32bit = sum(1 for dll in dll_analyses if dll.get('is_32bit') is True)
dll_64bit = sum(1 for dll in dll_analyses if dll.get('is_32bit') is False)

output.append("## 📊 ESTADÍSTICAS GLOBALES")
output.append("")
output.append(f"- **Total DLLs**: {len(dll_analyses)}")
output.append(f"- **Total funciones exportadas**: {total_exports}")
output.append(f"- **DLLs de 32 bits**: {dll_32bit}")
output.append(f"- **DLLs de 64 bits**: {dll_64bit}")
output.append(f"- **Promedio exports por DLL**: {total_exports / len(dll_analyses):.1f}")
output.append("")
output.append("---")
output.append("")

# Análisis detallado por categoría
output.append("## 📂 ANÁLISIS POR CATEGORÍA")
output.append("")

# Agrupar por categoría
by_category = {}
for dll in dll_analyses:
    cat = None
    for cat_key, cat_name in categories.items():
        if cat_key in dll['path']:
            cat = cat_name
            break
    if not cat:
        cat = '❓ Otro'

    if cat not in by_category:
        by_category[cat] = []
    by_category[cat].append(dll)

for cat_name in sorted(by_category.keys()):
    dlls_in_cat = by_category[cat_name]
    output.append(f"### {cat_name}")
    output.append("")
    output.append(f"**Total**: {len(dlls_in_cat)} DLLs")
    output.append("")

    for dll in dlls_in_cat:
        name = os.path.basename(dll['path'])
        exports = dll.get('exports', [])
        output.append(f"#### {name}")
        output.append("")
        output.append(f"- **Funciones exportadas**: {len(exports)}")
        output.append(f"- **Arquitectura**: {'32-bit' if dll.get('is_32bit') else '64-bit'}")
        output.append(f"- **Compilado**: {dll.get('timestamp', 'N/A')[:19] if dll.get('timestamp') else 'N/A'}")

        if len(exports) > 0:
            output.append("")
            output.append("**Funciones principales**:")
            for exp in exports[:10]:
                if exp.get('name'):
                    output.append(f"- `{exp['name']}`")
            if len(exports) > 10:
                output.append(f"- ... y {len(exports) - 10} más")

        output.append("")

    output.append("---")
    output.append("")

# Top 10 DLLs con más funciones
output.append("## 🏆 TOP 10 DLLs CON MÁS FUNCIONES")
output.append("")

sorted_by_exports = sorted(dll_analyses, key=lambda x: len(x.get('exports', [])), reverse=True)[:10]

output.append("| # | DLL | Funciones |")
output.append("|---|-----|-----------|")

for i, dll in enumerate(sorted_by_exports, 1):
    name = os.path.basename(dll['path'])
    exports = len(dll.get('exports', []))
    output.append(f"| {i} | {name} | {exports} |")

output.append("")
output.append("---")
output.append("")

# DLLs críticos (ya identificados)
output.append("## ⚠️ DLLs CRÍTICOS PARA CONTROL DE BOMBAS")
output.append("")
output.append("Basado en el análisis previo, estos son los DLLs más relevantes:")
output.append("")
output.append("### 🔴 CRÍTICO - Comunicación")
output.append("")
output.append("1. **SSF.FC.Comm.GPBox.D.dll** - Comunicación con GPBox")
output.append("   - ⚠️ Solo 5 exports (sistema de plugins)")
output.append("   - Strings revelan métodos internos de comunicación")
output.append("   - NO utilizable directamente")
output.append("")
output.append("2. **SSF.FC.Comm.Serial.D.dll** - Puerto serial")
output.append("   - ⚠️ Solo 5 exports (sistema de plugins)")
output.append("   - Maneja puerto COM genérico")
output.append("   - NO utilizable directamente")
output.append("")
output.append("### 🟡 IMPORTANTE - Bombas")
output.append("")
output.append("3. **SSF.Gilbarco.D.dll** - Plugin Gilbarco")
output.append("   - ⚠️ Solo 5 exports (sistema de plugins)")
output.append("   - Lógica de bombas Gilbarco")
output.append("")
output.append("4. **SSF.Wayne.D.dll** - Plugin Wayne")
output.append("   - ⚠️ Solo 5 exports (sistema de plugins)")
output.append("   - Lógica de bombas Wayne")
output.append("")
output.append("### 🟢 ÚTIL - Utilidades")
output.append("")
output.append("5. **SSF.Tools.Library.D.dll** - Utilidades generales")
output.append("   - ✅ 229 exports útiles")
output.append("   - Logging, conversiones BCD, DB, mutex, etc.")
output.append("")
output.append("6. **SSF.Router.Message.D.dll** - Mensajería")
output.append("   - ✅ 41 exports útiles")
output.append("   - Sistema de mensajes entre componentes")
output.append("")
output.append("---")
output.append("")

# Conclusión
output.append("## 🎯 CONCLUSIÓN FINAL")
output.append("")
output.append("### ❌ Enfoque DLL NO Recomendado")
output.append("")
output.append("**Razones**:")
output.append("")
output.append("1. **Sistema de Plugins Complejo**")
output.append("   - Mayoría de DLLs críticos solo exportan 5 funciones de plugin")
output.append("   - Funciones reales ocultas dentro del plugin")
output.append("   - Sin documentación de cómo acceder a ellas")
output.append("")
output.append("2. **Dependencias Múltiples**")
output.append("   - Los DLLs dependen entre sí (Router, Tools, etc.)")
output.append("   - Requiere inicializar todo el sistema")
output.append("   - Alto riesgo de conflictos")
output.append("")
output.append("3. **Arquitectura 32-bit**")
output.append("   - Todos los DLLs son 32-bit")
output.append("   - Limita portabilidad")
output.append("   - Requiere runtime específico")
output.append("")
output.append("### ✅ Enfoque Protocolo Directo RECOMENDADO")
output.append("")
output.append("**Razones**:")
output.append("")
output.append("1. **Independencia Total**")
output.append("   - No depende de DLLs propietarias")
output.append("   - Control total del código")
output.append("   - Portable a cualquier plataforma")
output.append("")
output.append("2. **Simplicidad**")
output.append("   - Protocolo serial directo")
output.append("   - Ya parcialmente implementado en `gilbarco_pump_controller.py`")
output.append("   - Herramientas listas (`serial_monitor.py`, `test_gpbox_real.py`)")
output.append("")
output.append("3. **Tiempo de Implementación**")
output.append("   - 3-5 días vs 2-4 semanas con DLLs")
output.append("   - Menor riesgo")
output.append("   - Más mantenible")
output.append("")
output.append("---")
output.append("")
output.append("## 🚀 SIGUIENTE PASO")
output.append("")
output.append("**Recomendación**: Seguir el plan de protocolo directo")
output.append("")
output.append("```bash")
output.append("# Ver guía completa")
output.append("cat PLAN_PROTOCOLO_GPBOX.md")
output.append("")
output.append("# O inicio rápido")
output.append("cat EMPEZAR_AHORA.md")
output.append("")
output.append("# Capturar tráfico")
output.append("python serial_monitor.py")
output.append("```")
output.append("")
output.append("---")
output.append("")
output.append("**Documento generado automáticamente**")
output.append(f"**Total DLLs analizados**: {len(dll_analyses)}")
output.append(f"**Total funciones**: {total_exports}")

# Guardar
output_file = "/home/user/api-spriconsole/RESUMEN_MAESTRO_TODOS_DLLS.md"
with open(output_file, 'w', encoding='utf-8') as f:
    f.write('\n'.join(output))

print(f"✓ Resumen maestro generado: {output_file}")
print(f"  - {len(dll_analyses)} DLLs analizados")
print(f"  - {total_exports} funciones exportadas totales")
