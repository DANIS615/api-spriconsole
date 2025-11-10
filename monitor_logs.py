#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Monitor de Logs CEM-44
Monitorea el archivo LOG.TXT en tiempo real para ver comandos
"""

import time
import re
from datetime import datetime

LOG_FILE = r"C:\Windows\CEM44\Files\LOG.TXT"
TIMEOUT = 60  # segundos

def monitor_logs():
    """Monitorea LOG.TXT en tiempo real"""

    print("="*80)
    print("MONITOR DE LOGS CEM-44")
    print("="*80)
    print(f"\nArchivo: {LOG_FILE}")
    print(f"Timeout: {TIMEOUT}s")
    print(f"Presiona Ctrl+C para detener")
    print("="*80)
    print()

    try:
        # Abrir archivo y posicionarse al final
        with open(LOG_FILE, 'r', encoding='latin-1', errors='ignore') as f:
            # Ir al final del archivo
            f.seek(0, 2)

            print("[INFO] Monitoreando logs en tiempo real...")
            print("[INFO] Esperando actividad...")
            print()

            start_time = time.time()
            lines_captured = 0

            while True:
                # Verificar timeout
                if time.time() - start_time > TIMEOUT:
                    print(f"\n[INFO] Timeout de {TIMEOUT}s alcanzado")
                    break

                # Leer nuevas lineas
                line = f.readline()

                if line:
                    lines_captured += 1

                    # Resetear timeout
                    if lines_captured == 1:
                        start_time = time.time()

                    # Procesar linea
                    procesar_linea(line.strip())

                else:
                    time.sleep(0.1)

    except KeyboardInterrupt:
        print("\n\n[INFO] Monitoreo detenido por usuario")

    except Exception as e:
        print(f"\n[ERROR] Error: {type(e).__name__}: {e}")
        return False

    print(f"\n[INFO] Total de lineas capturadas: {lines_captured}")
    return True


def procesar_linea(linea):
    """Procesa y analiza una linea del log"""

    # Patrones de interes
    patrones_importantes = [
        (r'PROCESS PRICE CHANGE', 'CAMBIO DE PRECIO'),
        (r'PUMP CTRL - GET PUMP FIRMWARE', 'SOLICITUD DE FIRMWARE'),
        (r'PROCESS END STATE', 'FIN DE TRANSACCION'),
        (r'CHECK FOR NOT CONTROLLED SALES', 'VERIFICACION DE VENTA'),
        (r'AUTHORIZE', 'AUTORIZACION'),
        (r'PRESET', 'PRESET'),
        (r'ERROR', 'ERROR'),
        (r'PUMP \[\d+\] HOSE \[\d+\]', 'INFO BOMBA/MANGUERA'),
    ]

    for patron, etiqueta in patrones_importantes:
        if re.search(patron, linea, re.IGNORECASE):
            timestamp = datetime.now().strftime("%H:%M:%S")
            print(f"[{timestamp}] [{etiqueta}]")
            print(f"   {linea}")
            print()

            # Analisis especifico de precios
            if 'PRICE' in linea.upper():
                analizar_precio(linea)

            break


def analizar_precio(linea):
    """Analiza lineas relacionadas con precios"""

    # Patron: PUMP [X] HOSE [Y] PRODUCT [Z] PRICE [PPP]
    match = re.search(r'PUMP \[(\d+)\].*?HOSE \[(\d+)\].*?PRODUCT \[(\d+)\].*?PRICE \[(\d+)\]', linea)

    if match:
        pump = match.group(1)
        hose = match.group(2)
        product = match.group(3)
        price_raw = int(match.group(4))
        price_decimal = price_raw / 100.0

        print(f"   >>> DECODIFICADO:")
        print(f"       Bomba: {pump}")
        print(f"       Manguera: {hose}")
        print(f"       Producto: {product}")
        print(f"       Precio RAW: {price_raw}")
        print(f"       Precio REAL: ${price_decimal:.2f}/litro")

    # Patron: PPU[XXXX]
    match_ppu = re.search(r'PPU\[(\d+)\]', linea)
    if match_ppu:
        ppu_raw = int(match_ppu.group(1))
        ppu_decimal = ppu_raw / 100.0

        print(f"   >>> PRECIO POR UNIDAD:")
        print(f"       PPU RAW: {ppu_raw}")
        print(f"       PPU REAL: ${ppu_decimal:.2f}/litro")


if __name__ == "__main__":
    print("\n[INFO] Iniciando monitor de logs...")
    print("[INFO] Los comandos se mostraran en tiempo real")
    print()

    if monitor_logs():
        print("\n[OK] Monitoreo completado")
    else:
        print("\n[ERROR] Monitoreo finalizado con errores")
