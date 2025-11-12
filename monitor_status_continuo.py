#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Monitor continuo de STATUS - Para verificar cambios fisicos de manguera
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

def calcular_lrc(data):
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def read_status(ser, pump_id):
    """Lee STATUS sin imprimir"""
    # Seleccionar SLOT
    ser.reset_input_buffer()
    ser.write(bytes([pump_id, 0x00]))
    time.sleep(0.2)
    ser.read(ser.in_waiting)

    # Comando 016
    cmd = b'016'
    frame_data = bytes([ord(str(pump_id)), 0x02]) + cmd
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    ser.reset_input_buffer()
    ser.write(frame)
    time.sleep(0.3)

    return ser.read(ser.in_waiting)

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("="*80)
    print("MONITOR CONTINUO DE STATUS - VERIFICACION FISICA DE MANGUERA")
    print("="*80)
    print(f"\nBomba: {pump_id}")
    print("\nINSTRUCCIONES:")
    print("  - Observa el STATUS actual")
    print("  - LEVANTA todas las mangueras de la bomba")
    print("  - BAJA todas las mangueras de la bomba")
    print("  - Si el STATUS NO cambia = el byte 3 indica PRESET, no manguera fisica")
    print("  - Presiona Ctrl+C para detener")
    print("\nEsperando 3 segundos para comenzar...")
    time.sleep(3)

    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print("\n[+] Puerto abierto\n")
    except Exception as e:
        print(f"\n[!] Error: {e}")
        return 1

    print("="*80)
    print("INICIANDO MONITOREO (actualizando cada 1 segundo)")
    print("="*80)
    print()

    estado_anterior = None
    contador = 0

    try:
        while True:
            contador += 1

            # Leer status
            status = read_status(ser, pump_id)

            if status and len(status) >= 4:
                estado_hex = status.hex()

                # Solo mostrar si cambio
                if estado_hex != estado_anterior:
                    timestamp = time.strftime("%H:%M:%S")

                    print(f"\n[{timestamp}] #{contador:3d} - CAMBIO DETECTADO!")
                    print(f"  Anterior: {estado_anterior if estado_anterior else 'N/A'}")
                    print(f"  Actual:   {estado_hex}")
                    print(f"  Bytes: [{status[0]:02X}] [{status[1]:02X}] [{status[2]:02X}] [{status[3]:02X}]")

                    # Interpretar
                    byte1 = status[1]
                    byte3 = status[3]

                    if byte1 == 0xC0:
                        print(f"  Byte 1 = C0 -> SIN PRESET")
                    elif byte1 == 0xE0:
                        print(f"  Byte 1 = E0 -> CON PRESET")

                    if byte3 == 0xF8:
                        print(f"  Byte 3 = F8 -> Estado 1")
                    elif byte3 == 0xF0:
                        print(f"  Byte 3 = F0 -> Estado 2")
                    elif byte3 == 0xFE:
                        print(f"  Byte 3 = FE -> Estado 3")
                    elif byte3 == 0xFC:
                        print(f"  Byte 3 = FC -> Estado 4")

                    estado_anterior = estado_hex
                else:
                    # Mostrar en la misma linea
                    print(f"\r[{contador:3d}] Status: {estado_hex} (sin cambios)", end="", flush=True)

            time.sleep(1)

    except KeyboardInterrupt:
        print("\n\n" + "="*80)
        print("MONITOREO DETENIDO")
        print("="*80)
        print(f"\nEstado final: {estado_anterior}")

        if estado_anterior:
            print("\nRESUMEN:")
            print("  Si el estado NO cambio al levantar/bajar mangueras:")
            print("    -> Byte 3 indica PRESET/AUTORIZACION, no estado fisico")
            print("  Si el estado SI cambio:")
            print("    -> Byte 3 indica estado fisico de manguera")
    finally:
        ser.close()
        print("\n[+] Puerto cerrado")

    return 0

if __name__ == "__main__":
    sys.exit(main())
