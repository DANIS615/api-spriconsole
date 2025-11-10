#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Probar TODOS los comandos prioritarios automáticamente
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

def select_slot(ser, pump_id):
    """Seleccionar SLOT"""
    ser.reset_input_buffer()
    cmd = bytes([pump_id, 0x00])
    ser.write(cmd)
    time.sleep(0.2)
    resp = ser.read(10)
    return len(resp) > 0

def send_command(ser, pump_id, command_str, description):
    """Enviar comando Gilbarco"""
    print(f"\n{'='*60}")
    print(f"COMANDO: {command_str} - {description}")
    print(f"{'='*60}")

    # Seleccionar SLOT
    if not select_slot(ser, pump_id):
        print("[!] Error seleccionando SLOT")
        return None

    # Construir comando Gilbarco
    pump_addr = ord(str(pump_id))
    cmd_bytes = command_str.encode('ascii')

    frame = bytes([0x10, pump_addr, 0x02]) + cmd_bytes + bytes([0x10, 0x03])

    # Calcular LRC
    lrc = 0
    for byte in frame[1:]:
        lrc ^= byte
    lrc = (~lrc + 1) & 0xFF

    frame = frame + bytes([lrc])

    # Enviar
    print(f"TX: {frame.hex()}")
    ser.write(frame)
    time.sleep(0.5)

    # Leer respuesta
    resp = ser.read(100)
    if resp:
        print(f"RX: {resp.hex()} ({len(resp)} bytes)")
        return resp
    else:
        print(f"RX: (sin respuesta)")
        return None

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("=" * 60)
    print("PROBADOR AUTOMATICO DE COMANDOS GILBARCO")
    print("=" * 60)
    print(f"\nPuerto: {port}")
    print(f"Bomba: {pump_id}")
    print()

    # Abrir puerto
    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print(f"[+] Puerto abierto\n")
    except Exception as e:
        print(f"[!] Error: {e}")
        return 1

    # Comandos a probar
    comandos = [
        ("016", "READ STATUS - Leer estado"),
        ("020T0", "READ TOTALIZER T0"),
        ("020T1", "READ TOTALIZER T1"),
        ("020T2", "READ TOTALIZER T2"),
        ("020M0", "READ TOTALIZER MONEY 0"),
        ("000", "RESET - Resetear bomba"),
    ]

    resultados = {}

    for cmd, desc in comandos:
        try:
            resp = send_command(ser, pump_id, cmd, desc)
            resultados[cmd] = {
                'descripcion': desc,
                'respuesta': resp.hex() if resp else None,
                'bytes': len(resp) if resp else 0
            }
            time.sleep(1)
        except Exception as e:
            print(f"[!] Error: {e}")
            resultados[cmd] = {
                'descripcion': desc,
                'respuesta': None,
                'error': str(e)
            }

    # Resumen
    print("\n" + "=" * 60)
    print("RESUMEN DE RESULTADOS")
    print("=" * 60)
    print()

    for cmd, result in resultados.items():
        print(f"Comando {cmd}: {result['descripcion']}")
        if result.get('respuesta'):
            print(f"  RX: {result['respuesta']}")
            print(f"  Bytes: {result['bytes']}")
        else:
            print(f"  Sin respuesta")
        print()

    ser.close()
    print("[+] Puerto cerrado")
    return 0

if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\n\n[!] Cancelado")
        sys.exit(1)
