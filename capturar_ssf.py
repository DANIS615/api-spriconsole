#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
CAPTURA TRAFICO DE SMART SHIP FACTORY

Este script monitorea el puerto serial mientras Smart Ship Factory funciona
para capturar los comandos REALES que envia a las bombas Gilbarco.
"""

import serial
import time
from datetime import datetime
import sys

PORT = 'COM1'
BAUDRATE = 9600
OUTPUT_FILE = 'captura_ssf_trafico.txt'
TIMEOUT_SECONDS = 300  # 5 minutos

def capturar_trafico():
    """Captura trafico serial de SSF"""

    print("="*80)
    print("CAPTURA DE TRAFICO - SMART SHIP FACTORY")
    print("="*80)
    print()
    print(f"Puerto: {PORT}")
    print(f"Baudrate: {BAUDRATE}")
    print(f"Archivo de salida: {OUTPUT_FILE}")
    print(f"Timeout: {TIMEOUT_SECONDS}s")
    print()
    print("INSTRUCCIONES:")
    print("1. Este monitor ya esta corriendo")
    print("2. Ahora ejecuta Smart Ship Factory")
    print("3. Realiza operaciones (cambiar precio, autorizar, etc)")
    print("4. Presiona Ctrl+C cuando termines")
    print()
    print("="*80)
    print()

    try:
        # Abrir puerto serial
        ser = serial.Serial(
            port=PORT,
            baudrate=BAUDRATE,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            timeout=0.1
        )

        print(f"[OK] Puerto {PORT} abierto @ {BAUDRATE} baud")
        print("[INFO] Monitoreando trafico...")
        print()

    except serial.SerialException as e:
        print(f"[ERROR] No se pudo abrir {PORT}: {e}")
        print()
        print("POSIBLES CAUSAS:")
        print("- PumpService o SSF ya esta usando el puerto")
        print("- El puerto no existe")
        print()
        print("SOLUCION:")
        print("- Detener PumpService: sc stop PumpService")
        print("- O cerrar SSF si ya esta corriendo")
        return False

    # Archivo de salida
    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        f.write("="*80 + "\n")
        f.write("CAPTURA DE TRAFICO - SMART SHIP FACTORY\n")
        f.write("="*80 + "\n")
        f.write(f"Fecha: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Puerto: {PORT}\n")
        f.write(f"Baudrate: {BAUDRATE}\n")
        f.write("="*80 + "\n\n")

    start_time = time.time()
    bytes_captured = 0
    messages_captured = 0

    try:
        while True:
            # Verificar timeout
            elapsed = time.time() - start_time
            if elapsed > TIMEOUT_SECONDS:
                print(f"\n[INFO] Timeout de {TIMEOUT_SECONDS}s alcanzado")
                break

            # Leer datos disponibles
            if ser.in_waiting > 0:
                data = ser.read(ser.in_waiting)

                if data:
                    bytes_captured += len(data)
                    messages_captured += 1

                    # Timestamp
                    timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]

                    # Formatear
                    hex_str = ' '.join(f'{b:02X}' for b in data)
                    ascii_str = ''.join(chr(b) if 32 <= b < 127 else '.' for b in data)

                    # Mostrar en consola
                    print(f"[{timestamp}] RX ({len(data)} bytes)")
                    print(f"  HEX:   {hex_str}")
                    print(f"  ASCII: {ascii_str}")
                    print()

                    # Guardar en archivo
                    with open(OUTPUT_FILE, 'a', encoding='utf-8') as f:
                        f.write(f"[{timestamp}] RX ({len(data)} bytes)\n")
                        f.write(f"  HEX:   {hex_str}\n")
                        f.write(f"  ASCII: {ascii_str}\n")
                        f.write("\n")

                    # Analizar si es protocolo Gilbarco
                    if len(data) >= 2 and data[0] == 0x10 and data[1] == 0x02:
                        print("  >>> Posible mensaje Gilbarco (DLE STX)")
                        if len(data) >= 5:
                            addr = data[2]
                            cmd = data[3]
                            length = data[4]
                            print(f"      Address: 0x{addr:02X}")
                            print(f"      Command: 0x{cmd:02X}")
                            print(f"      Length:  {length}")
                        print()

                    # Resetear timeout cuando hay datos
                    start_time = time.time()

            time.sleep(0.01)

    except KeyboardInterrupt:
        print("\n\n[INFO] Captura detenida por usuario")

    finally:
        ser.close()
        print()
        print("="*80)
        print("RESUMEN DE CAPTURA")
        print("="*80)
        print(f"Bytes capturados:    {bytes_captured}")
        print(f"Mensajes capturados: {messages_captured}")
        print(f"Tiempo total:        {elapsed:.1f}s")
        print(f"Archivo guardado:    {OUTPUT_FILE}")
        print("="*80)

    return True


if __name__ == "__main__":
    print()
    print("CAPTURA DE TRAFICO DE SMART SHIP FACTORY")
    print()
    print("Este script capturara TODO el trafico serial mientras")
    print("Smart Ship Factory se comunica con las bombas Gilbarco.")
    print()

    input("Presiona Enter para iniciar la captura...")
    print()

    if capturar_trafico():
        print("\n[OK] Captura completada exitosamente")
        print(f"\nAhora revisa el archivo: {OUTPUT_FILE}")
        print("\nBusca:")
        print("- Comandos que SSF envia (TX)")
        print("- Respuestas de las bombas (RX)")
        print("- Patron DLE STX (10 02)")
        print("- Comandos READ_PRICE, STATUS, etc")
    else:
        print("\n[ERROR] Captura fallida")
        sys.exit(1)
