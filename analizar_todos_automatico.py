#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Analizar TODOS los DLLs automáticamente
"""

import os
import subprocess
import glob

# Directorio base de SSF
SSF_ROOT = "/home/user/api-spriconsole/Smart Ship Factory"
OUTPUT_DIR = "/home/user/api-spriconsole/analisis_dlls_completo"

# Encontrar todos los DLLs
dll_files = []
for root, dirs, files in os.walk(SSF_ROOT):
    for file in files:
        if file.lower().endswith('.dll'):
            dll_files.append(os.path.join(root, file))

dll_files.sort()

print("=" * 70)
print(f"ANÁLISIS MASIVO DE {len(dll_files)} DLLs")
print("=" * 70)
print()

for i, dll_path in enumerate(dll_files, 1):
    dll_name = os.path.basename(dll_path)
    print(f"[{i}/{len(dll_files)}] Analizando: {dll_name}")

    # Ejecutar análisis
    cmd = [
        "python",
        "analizar_dll_auto.py",
        dll_path,
        "--output",
        OUTPUT_DIR
    ]

    try:
        subprocess.run(cmd, cwd="/home/user/api-spriconsole", check=True,
                      stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print(f"    ✓ Completado")
    except subprocess.CalledProcessError as e:
        print(f"    ✗ Error: {e}")

    print()

print("=" * 70)
print(f"ANÁLISIS COMPLETO - {len(dll_files)} DLLs procesados")
print(f"Resultados en: {OUTPUT_DIR}")
print("=" * 70)
