#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Test Simple: Lee estado ANTES y DESPUÉS de levantar manguera
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

def mostrar_bytes(data, direccion):
    """Muestra bytes en formato detallado"""
    hex_str = ' '.join(f'{b:02X}' for b in data)
    print(f"\n{direccion}")
    print(f"  HEX: {hex_str}")
    print(f"  LEN: {len(data)} bytes")

def leer_estado_bomba(ser):
    """Lee estado de bomba 1"""
    # Limpiar buffer
    ser.reset_input_buffer()

    # PASO 1: Seleccionar SLOT 1
    slot_cmd = bytes([0x01, 0x00])
    print("\n[1] Seleccionando SLOT 1...")
    mostrar_bytes(slot_cmd, ">>> TX")
    ser.write(slot_cmd)
    time.sleep(0.2)

    resp_slot = ser.read(100)
    mostrar_bytes(resp_slot, "<<< RX")

    # PASO 2: Enviar comando 016 (READ STATUS)
    status_cmd = bytes([0x10, 0x31, 0x02, 0x30, 0x31, 0x36, 0x10, 0x03, 0xFC])
    print("\n[2] Enviando comando 016 (READ STATUS)...")
    mostrar_bytes(status_cmd, ">>> TX")
    ser.write(status_cmd)
    time.sleep(0.3)

    resp_status = ser.read(100)
    mostrar_bytes(resp_status, "<<< RX")

    return resp_status

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'

    print("=" * 60)
    print("TEST: LEER ESTADO CON MANGUERA")
    print("=" * 60)

    # Abrir puerto
    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print(f"\n[+] Puerto {port} abierto @ 115200 bps")
    except Exception as e:
        print(f"[!] Error: {e}")
        return 1

    # LECTURA 1: Estado inicial (manguera colgada)
    print("\n" + "=" * 60)
    print("LECTURA 1: ESTADO INICIAL (manguera colgada)")
    print("=" * 60)
    estado1 = leer_estado_bomba(ser)

    # Esperar para que levantes manguera
    print("\n" + "=" * 60)
    print("ESPERANDO...")
    print("=" * 60)
    print("\n[!] LEVANTA LA MANGUERA 1 AHORA")
    print("[!] Tienes 10 segundos...")

    for i in range(10, 0, -1):
        print(f"    {i}...", end='\r')
        time.sleep(1)

    print("\n")

    # LECTURA 2: Estado con manguera levantada
    print("=" * 60)
    print("LECTURA 2: CON MANGUERA LEVANTADA")
    print("=" * 60)
    estado2 = leer_estado_bomba(ser)

    # COMPARACIÓN
    print("\n" + "=" * 60)
    print("COMPARACION DE ESTADOS")
    print("=" * 60)

    print("\nESTADO 1 (Colgada):")
    print(f"  HEX: {estado1.hex() if estado1 else 'Sin respuesta'}")

    print("\nESTADO 2 (Levantada):")
    print(f"  HEX: {estado2.hex() if estado2 else 'Sin respuesta'}")

    if estado1 and estado2:
        if estado1 == estado2:
            print("\n[!] IGUALES - No hay diferencia detectada")
        else:
            print("\n[+] DIFERENTES - Hay cambio de estado!")
            print("\nDIFERENCIAS byte por byte:")
            max_len = max(len(estado1), len(estado2))
            for i in range(max_len):
                b1 = estado1[i] if i < len(estado1) else None
                b2 = estado2[i] if i < len(estado2) else None

                if b1 != b2:
                    b1_str = f"{b1:02X}" if b1 is not None else "--"
                    b2_str = f"{b2:02X}" if b2 is not None else "--"
                    print(f"  Byte {i}: {b1_str} -> {b2_str}")

    print("\n" + "=" * 60)

    ser.close()
    print("\n[+] Puerto cerrado")
    return 0

if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\n\n[!] Cancelado")
        sys.exit(1)
