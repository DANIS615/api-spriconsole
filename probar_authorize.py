#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Probar Comando AUTHORIZE (030)
Autoriza bomba con preset de monto o volumen
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
    print(f"\n[1] Seleccionando SLOT {pump_id}...")
    print(f"    TX: {cmd.hex()}")
    ser.write(cmd)
    time.sleep(0.2)
    resp = ser.read(10)
    if resp:
        print(f"    RX: {resp.hex()}")
        return True
    return False

def send_authorize(ser, pump_id, preset_type, amount):
    """
    Enviar comando AUTHORIZE (030)

    preset_type:
        '1' = Monto (dinero)
        '2' = Volumen (litros)
        '3' = Ambos
    amount: Monto en centavos o volumen en litros x 100
    """
    print(f"\n[2] Enviando AUTHORIZE...")
    print(f"    Tipo preset: {preset_type}")
    print(f"    Monto/Volumen: {amount}")

    # Seleccionar SLOT primero
    if not select_slot(ser, pump_id):
        print("[!] Error seleccionando SLOT")
        return None

    # Construir comando 030
    pump_addr = ord(str(pump_id))

    # Formato: 030 + TIPO + MONTO (8 dígitos)
    # Ejemplo: 030150000500 = Tipo 1, $5.00 (500 centavos)
    amount_str = f"{amount:08d}"
    cmd_data = f"030{preset_type}{amount_str}"

    print(f"    Comando: {cmd_data}")

    # Construir frame Gilbarco
    frame = bytes([0x10, pump_addr, 0x02]) + cmd_data.encode('ascii') + bytes([0x10, 0x03])

    # Calcular LRC
    lrc = 0
    for byte in frame[1:]:
        lrc ^= byte
    lrc = (~lrc + 1) & 0xFF

    frame = frame + bytes([lrc])

    print(f"    TX: {frame.hex()}")
    ser.write(frame)
    time.sleep(0.5)

    # Leer respuesta
    resp = ser.read(100)
    if resp:
        print(f"    RX: {resp.hex()} ({len(resp)} bytes)")
        return resp
    else:
        print(f"    RX: (sin respuesta)")
        return None

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("=" * 70)
    print("PROBAR COMANDO AUTHORIZE (030)")
    print("=" * 70)
    print(f"\nPuerto: {port}")
    print(f"Bomba: {pump_id}")
    print()

    # Abrir puerto
    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print(f"[+] Puerto abierto @ 115200 bps\n")
    except Exception as e:
        print(f"[!] Error: {e}")
        return 1

    # PRUEBAS DE AUTHORIZE
    print("=" * 70)
    print("PRUEBAS DE AUTHORIZE")
    print("=" * 70)

    pruebas = [
        ("1", 500, "Preset $5.00 (monto)"),
        ("2", 1000, "Preset 10.00 litros (volumen)"),
        ("1", 1000, "Preset $10.00 (monto)"),
        ("1", 2000, "Preset $20.00 (monto)"),
    ]

    for tipo, monto, desc in pruebas:
        print("\n" + "=" * 70)
        print(f"TEST: {desc}")
        print("=" * 70)

        resp = send_authorize(ser, pump_id, tipo, monto)

        if resp:
            print(f"\n[+] RESPUESTA RECIBIDA")
            print(f"    Hex: {resp.hex()}")
            print(f"    Bytes: {len(resp)}")

            # Interpretar respuesta
            if len(resp) == 4:
                if resp == bytes([0xE0, 0xC0, 0xE0, 0xF0]):
                    print(f"    Estado: Manguera levantada / Autorización OK")
                elif resp == bytes([0xE0, 0xC0, 0xE0, 0xF8]):
                    print(f"    Estado: Manguera colgada / Esperando")
                else:
                    print(f"    Estado: Desconocido")
        else:
            print(f"\n[!] SIN RESPUESTA")

        print("\n[!] Presiona Ctrl+C para detener o espera 5 segundos...")
        try:
            time.sleep(5)
        except KeyboardInterrupt:
            print("\n\n[!] Detenido por usuario")
            break

    # Leer estado final
    print("\n" + "=" * 70)
    print("ESTADO FINAL")
    print("=" * 70)

    if not select_slot(ser, pump_id):
        print("[!] Error seleccionando SLOT")
    else:
        # Comando 016 (READ STATUS)
        pump_addr = ord(str(pump_id))
        cmd = bytes([0x10, pump_addr, 0x02, 0x30, 0x31, 0x36, 0x10, 0x03])
        lrc = 0
        for byte in cmd[1:]:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF
        cmd = cmd + bytes([lrc])

        ser.write(cmd)
        time.sleep(0.3)
        resp = ser.read(100)

        if resp:
            print(f"\nEstado final: {resp.hex()}")
            if len(resp) >= 4:
                if resp[3] == 0xF0:
                    print("Manguera: LEVANTADA")
                elif resp[3] == 0xF8:
                    print("Manguera: COLGADA")

    ser.close()
    print("\n[+] Puerto cerrado")
    print("\n" + "=" * 70)
    print("FIN DE PRUEBAS")
    print("=" * 70)

    return 0

if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\n\n[!] Cancelado por usuario")
        sys.exit(1)
