#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Test AUTHORIZE con verificacion de STATUS antes y despues
Detecta si el comando AUTHORIZE cambia el estado de la bomba
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
    """Calcula LRC para frame Gilbarco"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def select_slot(ser, pump_id):
    """Selecciona SLOT"""
    print(f"\n--- Seleccionando SLOT {pump_id} ---")
    ser.reset_input_buffer()
    cmd = bytes([pump_id, 0x00])
    print(f"TX: {cmd.hex()}")
    ser.write(cmd)
    time.sleep(0.3)
    resp = ser.read(ser.in_waiting)
    print(f"RX: {resp.hex()}")
    return len(resp) > 0 and resp[0] == 0x00

def read_status(ser, pump_id):
    """Lee STATUS (comando 016)"""
    print(f"\n--- Leyendo STATUS bomba {pump_id} (016) ---")

    # Construir comando
    cmd = b'016'
    frame_data = bytes([ord(str(pump_id)), 0x02]) + cmd
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    print(f"TX: {frame.hex()}")
    ser.reset_input_buffer()
    ser.write(frame)
    time.sleep(0.5)

    resp = ser.read(ser.in_waiting)
    print(f"RX: {resp.hex()} ({len(resp)} bytes)")

    return resp

def send_authorize(ser, pump_id, comando_str):
    """Envia comando AUTHORIZE"""
    print(f"\n--- Enviando AUTHORIZE: {comando_str} ---")

    # Construir frame
    cmd_bytes = comando_str.encode('ascii')
    frame_data = bytes([ord(str(pump_id)), 0x02]) + cmd_bytes
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    print(f"TX: {frame.hex()}")
    ser.reset_input_buffer()
    ser.write(frame)
    time.sleep(0.5)

    resp = ser.read(ser.in_waiting)
    print(f"RX: {resp.hex()} ({len(resp)} bytes)")

    return resp

def interpretar_status(status_bytes, label=""):
    """Interpreta bytes de status"""
    if not status_bytes or len(status_bytes) < 4:
        print(f"{label}SIN RESPUESTA VALIDA")
        return None

    print(f"\n{label}ANALISIS DE STATUS:")
    for i in range(min(4, len(status_bytes))):
        byte = status_bytes[i]
        print(f"  Byte {i}: 0x{byte:02X} ({byte:3d}) [{byte:08b}]")

    byte3 = status_bytes[3]

    # Interpretar byte 3
    estados = {
        0xF8: "Manguera COLGADA (idle)",
        0xF0: "Manguera LEVANTADA (ready)",
        0xFE: "Estado FE (preset activo?)",
        0xFC: "Estado FC (volumen?)",
        0xC0: "Estado C0 (despachando?)",
        0xE0: "Estado E0 (finalizado?)",
    }

    estado_str = estados.get(byte3, f"Estado DESCONOCIDO: 0x{byte3:02X}")
    print(f"\n  Interpretacion byte 3: {estado_str}")

    return status_bytes.hex()

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("="*70)
    print("TEST AUTHORIZE CON VERIFICACION DE STATUS")
    print("="*70)
    print(f"\nPuerto: {port}")
    print(f"Bomba: {pump_id}")

    # Abrir puerto
    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print(f"\n[+] Puerto abierto @ 115200 bps")
    except Exception as e:
        print(f"\n[!] Error: {e}")
        return 1

    try:
        # PASO 1: Leer estado INICIAL
        print("\n" + "="*70)
        print("PASO 1: ESTADO INICIAL")
        print("="*70)

        if not select_slot(ser, pump_id):
            print("[!] Error seleccionando SLOT")
            return 1

        time.sleep(0.3)
        status_inicial = read_status(ser, pump_id)
        estado_inicial_hex = interpretar_status(status_inicial, "[INICIAL] ")

        # PASO 2: Enviar AUTHORIZE
        print("\n" + "="*70)
        print("PASO 2: ENVIAR AUTHORIZE")
        print("="*70)

        # Probar formato mas prometedor
        formato = "030110000500"  # Tipo 1, Hose 1, $5.00
        print(f"\nFormato a probar: {formato}")
        print(f"Interpretacion: 030 + Tipo(1) + Hose(1) + Monto(00000500)")
        print(f"Significado: Autorizar manguera 1, preset $5.00")

        if not select_slot(ser, pump_id):
            print("[!] Error seleccionando SLOT")
            return 1

        time.sleep(0.3)
        resp_authorize = send_authorize(ser, pump_id, formato)

        # PASO 3: Leer estado DESPUES
        print("\n" + "="*70)
        print("PASO 3: ESTADO DESPUES DE AUTHORIZE")
        print("="*70)

        print("\nEsperando 2 segundos...")
        time.sleep(2)

        if not select_slot(ser, pump_id):
            print("[!] Error seleccionando SLOT")
            return 1

        time.sleep(0.3)
        status_despues = read_status(ser, pump_id)
        estado_despues_hex = interpretar_status(status_despues, "[DESPUES] ")

        # PASO 4: COMPARACION
        print("\n" + "="*70)
        print("PASO 4: COMPARACION Y ANALISIS")
        print("="*70)

        print(f"\nEstado ANTES:   {estado_inicial_hex}")
        print(f"Estado DESPUES: {estado_despues_hex}")

        if estado_inicial_hex == estado_despues_hex:
            print("\n[!] ESTADOS IGUALES - AUTHORIZE NO TUVO EFECTO")
            print("    Posibles causas:")
            print("    - Formato incorrecto")
            print("    - Bomba no acepta preset remoto")
            print("    - Necesita comando previo (ej: SELECT HOSE)")
        else:
            print("\n[+] ESTADOS DIFERENTES - AUTHORIZE CAMBIO EL ESTADO!")
            print("    El comando tuvo efecto en la bomba")

            # Analizar diferencias
            if status_inicial and status_despues and len(status_inicial) >= 4 and len(status_despues) >= 4:
                byte3_antes = status_inicial[3]
                byte3_despues = status_despues[3]

                if byte3_antes != byte3_despues:
                    print(f"\n    Byte 3 cambio: 0x{byte3_antes:02X} -> 0x{byte3_despues:02X}")

                    if byte3_despues == 0xFE:
                        print("    Interpretacion: PRESET ACTIVO (byte 3 = FE)")
                        print("    Accion: Levantar manguera y verificar si permite despachar $5.00")
                    elif byte3_despues == 0xC0:
                        print("    Interpretacion: BOMBA AUTORIZADA (byte 3 = C0)")
                    elif byte3_despues == 0xF0 and byte3_antes == 0xF8:
                        print("    Interpretacion: Cambio fisico (manguera levantada)")

        # PASO 5: Intentar CLEAR PRESET si es necesario
        if estado_despues_hex != 'e0c0e0f8':  # Si no esta en idle
            print("\n" + "="*70)
            print("PASO 5: CLEAR PRESET (si esta activo)")
            print("="*70)

            print("\nIntentando comando 033 (CLEAR PRESET)...")

            if not select_slot(ser, pump_id):
                print("[!] Error seleccionando SLOT")
                return 1

            time.sleep(0.3)
            resp_clear = send_authorize(ser, pump_id, "033")

            time.sleep(1)

            # Leer estado final
            if not select_slot(ser, pump_id):
                print("[!] Error seleccionando SLOT")
                return 1

            time.sleep(0.3)
            status_final = read_status(ser, pump_id)
            estado_final_hex = interpretar_status(status_final, "[FINAL] ")

            print(f"\nEstado despues de CLEAR: {estado_final_hex}")

    except KeyboardInterrupt:
        print("\n\n[!] Interrumpido por usuario")
    finally:
        ser.close()
        print("\n[+] Puerto cerrado")

    print("\n" + "="*70)
    print("TEST COMPLETADO")
    print("="*70)

    return 0

if __name__ == "__main__":
    sys.exit(main())
