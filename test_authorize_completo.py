#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Test COMPLETO de AUTHORIZE - Proceso guiado paso a paso
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

def select_slot(ser, pump_id):
    """Selecciona SLOT"""
    ser.reset_input_buffer()
    ser.write(bytes([pump_id, 0x00]))
    time.sleep(0.2)
    resp = ser.read(ser.in_waiting)
    return len(resp) > 0 and resp[0] == 0x00

def read_status(ser, pump_id):
    """Lee STATUS"""
    cmd = b'016'
    frame_data = bytes([ord(str(pump_id)), 0x02]) + cmd
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    ser.reset_input_buffer()
    ser.write(frame)
    time.sleep(0.3)

    return ser.read(ser.in_waiting)

def send_command(ser, pump_id, cmd_str):
    """Envia comando"""
    cmd_bytes = cmd_str.encode('ascii')
    frame_data = bytes([ord(str(pump_id)), 0x02]) + cmd_bytes
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    ser.reset_input_buffer()
    ser.write(frame)
    time.sleep(0.5)

    return ser.read(ser.in_waiting)

def mostrar_status(status, label=""):
    """Muestra status con interpretacion"""
    if not status or len(status) < 4:
        print(f"{label}SIN RESPUESTA")
        return

    hex_str = status.hex()
    byte1 = status[1]
    byte3 = status[3]

    preset_str = "CON PRESET" if byte1 == 0xE0 else "SIN PRESET"
    manguera_str = "LEVANTADA" if byte3 == 0xF0 else "COLGADA" if byte3 == 0xF8 else f"DESCONOCIDO({byte3:02X})"

    print(f"{label}{hex_str}")
    print(f"       Byte 1 = {byte1:02X} -> {preset_str}")
    print(f"       Byte 3 = {byte3:02X} -> Manguera {manguera_str}")

def main():
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("="*80)
    print("TEST COMPLETO DE AUTHORIZE - PROCESO GUIADO")
    print("="*80)
    print(f"\nBomba: {pump_id}")
    print(f"Preset a probar: $5.00")
    print()

    # Abrir puerto
    try:
        ser = serial.Serial(port, 115200, timeout=2)
        print("[+] Puerto abierto\n")
    except Exception as e:
        print(f"[!] Error: {e}")
        return 1

    try:
        # PASO 0: Verificar estado inicial
        print("="*80)
        print("PASO 0: VERIFICACION INICIAL")
        print("="*80)
        print("\n>> ACCION: Asegurate que TODAS las mangueras esten COLGADAS")
        input("   Presiona ENTER cuando esten colgadas...")

        select_slot(ser, pump_id)
        time.sleep(0.3)
        status = read_status(ser, pump_id)
        print("\nEstado inicial:")
        mostrar_status(status, "  ")

        # PASO 1: CLEAR PRESET
        print("\n" + "="*80)
        print("PASO 1: LIMPIAR PRESET ANTERIOR")
        print("="*80)
        print("\nEnviando comando 033 (CLEAR PRESET)...")

        select_slot(ser, pump_id)
        time.sleep(0.3)
        resp = send_command(ser, pump_id, "033")
        print(f"Respuesta CLEAR: {resp.hex()}")

        time.sleep(1)

        # Verificar limpieza
        select_slot(ser, pump_id)
        time.sleep(0.3)
        status = read_status(ser, pump_id)
        print("\nEstado despues de CLEAR:")
        mostrar_status(status, "  ")

        if status and len(status) >= 2 and status[1] == 0xC0:
            print("  OK - Preset limpiado (Byte 1 = C0)")
        else:
            print("  ADVERTENCIA - Preset puede no estar limpio")

        # PASO 2: AUTHORIZE
        print("\n" + "="*80)
        print("PASO 2: ENVIAR AUTHORIZE")
        print("="*80)
        print("\nFormato: 030110000500")
        print("  030 = Comando AUTHORIZE")
        print("  1   = Tipo 1 (preset por MONTO)")
        print("  1   = Manguera 1")
        print("  00000500 = $5.00 (500 centavos)")

        input("\nPresiona ENTER para enviar AUTHORIZE...")

        select_slot(ser, pump_id)
        time.sleep(0.3)
        resp = send_command(ser, pump_id, "030110000500")
        print(f"\nRespuesta AUTHORIZE: {resp.hex()}")

        # PASO 3: Verificar preset activo
        print("\n" + "="*80)
        print("PASO 3: VERIFICAR PRESET ACTIVO")
        print("="*80)
        print("\nLeyendo status cada segundo durante 5 segundos...")
        print("(Observa si Byte 1 cambia a E0 = CON PRESET)\n")

        for i in range(5):
            select_slot(ser, pump_id)
            time.sleep(0.3)
            status = read_status(ser, pump_id)
            print(f"[{i+1}/5] ", end="")
            mostrar_status(status, "")
            time.sleep(1)

        # PASO 4: Levantar manguera
        print("\n" + "="*80)
        print("PASO 4: PRUEBA FISICA - LEVANTAR MANGUERA")
        print("="*80)
        print("\n>> ACCION: LEVANTA LA MANGUERA 1 AHORA")
        input("   Presiona ENTER cuando la manguera este LEVANTADA...")

        # Leer status con manguera levantada
        select_slot(ser, pump_id)
        time.sleep(0.3)
        status = read_status(ser, pump_id)
        print("\nEstado con manguera LEVANTADA:")
        mostrar_status(status, "  ")

        if status and len(status) >= 4:
            byte1 = status[1]
            byte3 = status[3]

            print("\nANALISIS:")
            if byte1 == 0xE0 and byte3 == 0xF0:
                print("  [OK] Byte 1 = E0 (CON PRESET) + Byte 3 = F0 (MANGUERA LEVANTADA)")
                print("  ESTADO: Bomba AUTORIZADA y lista para despachar")
            elif byte1 == 0xC0 and byte3 == 0xF0:
                print("  [?] Byte 1 = C0 (SIN PRESET) + Byte 3 = F0 (MANGUERA LEVANTADA)")
                print("  ESTADO: Manguera levantada pero preset no activo")
            elif byte1 == 0xE0 and byte3 == 0xF8:
                print("  [!] Byte 1 = E0 (CON PRESET) + Byte 3 = F8 (MANGUERA COLGADA)")
                print("  ESTADO: Preset activo pero manguera detectada como colgada")
            else:
                print(f"  [?] Estado inesperado: Byte1={byte1:02X}, Byte3={byte3:02X}")

        # PASO 5: Intentar despachar
        print("\n" + "="*80)
        print("PASO 5: VERIFICACION DE DESPACHO")
        print("="*80)
        print("\n>> ACCION: Intenta DESPACHAR combustible ahora")
        print("   - Observa el display de la bomba")
        print("   - Verifica si muestra el limite de $5.00")
        print("   - Intenta presionar el gatillo/trigger")
        print("   - Observa si empieza a despachar")

        input("\nPresiona ENTER cuando hayas terminado la prueba...")

        # PASO 6: Leer estado durante despacho
        print("\n" + "="*80)
        print("PASO 6: MONITOREO DURANTE DESPACHO")
        print("="*80)
        print("\nSi esta despachando, este script leera el status cada 2 segundos.")
        print("Presiona Ctrl+C cuando termine el despacho.\n")

        try:
            contador = 0
            while contador < 30:  # Max 60 segundos
                contador += 1

                select_slot(ser, pump_id)
                time.sleep(0.3)
                status = read_status(ser, pump_id)

                print(f"[{contador}] ", end="")
                mostrar_status(status, "")

                time.sleep(2)

        except KeyboardInterrupt:
            print("\n\n[*] Monitoreo detenido por usuario")

        # PASO 7: Estado final
        print("\n" + "="*80)
        print("PASO 7: ESTADO FINAL")
        print("="*80)
        print("\n>> ACCION: CUELGA la manguera si aun esta levantada")
        input("   Presiona ENTER cuando este colgada...")

        select_slot(ser, pump_id)
        time.sleep(0.3)
        status = read_status(ser, pump_id)
        print("\nEstado final:")
        mostrar_status(status, "  ")

        # RESUMEN
        print("\n" + "="*80)
        print("RESUMEN DE PRUEBA")
        print("="*80)
        print("\nPor favor responde estas preguntas:")
        print("\n1. El display de la bomba mostro algo? (si/no/que mostro)")
        print("2. Pudiste despachar combustible? (si/no)")
        print("3. Se detuvo automaticamente en $5.00? (si/no/no despacho)")
        print("4. Escuchaste algun beep o sonido? (si/no)")
        print("5. Se encendio alguna luz? (si/no)")

    except KeyboardInterrupt:
        print("\n\n[!] Interrumpido por usuario")
    finally:
        ser.close()
        print("\n[+] Puerto cerrado")

    print("\n" + "="*80)
    print("TEST COMPLETADO")
    print("="*80)

    return 0

if __name__ == "__main__":
    sys.exit(main())
