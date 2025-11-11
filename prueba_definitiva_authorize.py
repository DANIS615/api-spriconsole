#!/usr/bin/env python3
"""
Prueba Definitiva AUTHORIZE
Secuencia completa: CLEAR -> VERIFY -> AUTHORIZE -> VERIFY -> MONITOR
"""

import serial
import time
import sys

def calcular_lrc(data):
    """Calcula LRC"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def interpretar_status(data):
    """Interpreta status de 4 bytes"""
    if not data or len(data) < 4:
        return "Sin respuesta"

    byte0, byte1, byte2, byte3 = data[0], data[1], data[2], data[3]

    # Interpretacion basada en hallazgos
    autorizacion = "CON PRESET" if byte1 == 0xE0 else "SIN PRESET"
    manguera = "LEVANTADA" if byte3 == 0xF0 else "COLGADA"

    return f"{byte0:02X} {byte1:02X} {byte2:02X} {byte3:02X} - {autorizacion}, Manguera {manguera}"

def enviar_comando(s, pump_id, comando_str, descripcion):
    """Envia comando y muestra resultado"""
    print(f"\n{'='*70}")
    print(f"{descripcion}")
    print(f"{'='*70}")

    # SLOT
    print("1. Seleccionando SLOT...")
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.3)
    rx_slot = s.read(s.in_waiting)
    print(f"   SLOT RX: {rx_slot.hex()}")

    # Comando
    DLE, STX, ETX = 0x10, 0x02, 0x03
    pump_ascii = ord(str(pump_id))
    cmd_bytes = comando_str.encode('ascii')

    frame_data = bytes([pump_ascii, STX]) + cmd_bytes
    lrc = calcular_lrc(frame_data)
    frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

    print(f"2. Enviando comando {comando_str}...")
    print(f"   TX: {frame.hex()}")
    s.write(frame)
    time.sleep(0.5)

    rx = s.read(s.in_waiting)
    if rx:
        print(f"   RX: {rx.hex()}")
        print(f"   Interpretacion: {interpretar_status(rx)}")
    else:
        print(f"   RX: Sin respuesta")

    return rx

def main():
    """Prueba definitiva"""
    print("="*70)
    print("PRUEBA DEFINITIVA: AUTHORIZE CON MANGUERA")
    print("="*70)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python prueba_definitiva_authorize.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    # Conectar
    s = serial.Serial(puerto, 115200, timeout=2)
    print(f"\nConectado a {puerto} @ 115200 bps")

    try:
        # PASO 1: Verificar estado inicial
        print("\n" + "="*70)
        print("PASO 1: VERIFICAR ESTADO INICIAL")
        print("="*70)
        input("\nAsegurate que TODAS las mangueras esten COLGADAS. Presiona ENTER...")

        enviar_comando(s, pump_id, '016', "READ STATUS - Estado inicial")

        # PASO 2: Clear preset (comando 033)
        print("\n" + "="*70)
        print("PASO 2: CLEAR PRESET")
        print("="*70)
        print("\nEnviando CLEAR PRESET (033)...")

        enviar_comando(s, pump_id, '033', "CLEAR PRESET - Comando 033")

        time.sleep(0.5)

        # PASO 3: Verificar limpiado
        enviar_comando(s, pump_id, '016', "READ STATUS - Verificar limpiado")
        print("\n   ✓ Esperado: E0 C0 E0 F8 (sin preset, manguera colgada)")

        # PASO 4: Authorize
        print("\n" + "="*70)
        print("PASO 3: AUTHORIZE CON MANGUERA")
        print("="*70)

        # Pedir datos
        hose = input("\nManguera a autorizar (1-9) [1]: ").strip() or "1"
        tipo = input("Tipo (0=Full, 1=Money, 2=Volume) [1]: ").strip() or "1"
        monto = input("Monto (8 digitos, ej: 00000500 para $5.00) [00000500]: ").strip() or "00000500"

        comando_auth = f"030{hose}{tipo}{monto}"
        print(f"\nComando AUTHORIZE: {comando_auth}")
        print(f"  Manguera: {hose}")
        print(f"  Tipo: {tipo} ({'Money' if tipo=='1' else 'Volume' if tipo=='2' else 'Full'})")
        print(f"  Monto: ${int(monto)/100:.2f}")

        enviar_comando(s, pump_id, comando_auth, f"AUTHORIZE - Manguera {hose}, ${int(monto)/100:.2f}")

        # PASO 5: Verificar autorizacion
        print("\n" + "="*70)
        print("PASO 4: VERIFICAR AUTORIZACION")
        print("="*70)

        enviar_comando(s, pump_id, '016', "READ STATUS - Verificar autorizacion")
        print("\n   ✓ Esperado: E0 E0 E0 F8 (CON preset, manguera colgada)")

        # PASO 6: Levantar manguera
        print("\n" + "="*70)
        print("PASO 5: PRUEBA FISICA")
        print("="*70)

        input(f"\nAhora LEVANTA la manguera {hose} y presiona ENTER...")

        enviar_comando(s, pump_id, '016', "READ STATUS - Con manguera levantada")
        print("\n   ✓ Esperado: E0 E0 E0 F0 (CON preset, manguera LEVANTADA)")

        # PASO 7: Instrucciones finales
        print("\n" + "="*70)
        print("PASO 6: DESPACHAR")
        print("="*70)

        print("\nAhora intenta:")
        print("1. Apretar el gatillo de la manguera")
        print("2. Observar si empieza a despachar")
        print("3. Observar si se detiene al llegar al monto autorizado")

        input("\nPresiona ENTER cuando termines de probar...")

        # PASO 8: Status final
        print("\n" + "="*70)
        print("PASO 7: ESTADO FINAL")
        print("="*70)

        enviar_comando(s, pump_id, '016', "READ STATUS - Estado final")

        # Resumen
        print("\n\n" + "="*70)
        print("RESUMEN DE LA PRUEBA")
        print("="*70)

        print("\nSI FUNCIONO CORRECTAMENTE:")
        print("  ✓ Byte 1 cambio de C0 a E0 (preset activo)")
        print("  ✓ Byte 3 cambio de F8 a F0 (manguera levantada)")
        print("  ✓ Bomba permitio despachar")
        print("  ✓ Se detuvo automaticamente al llegar al monto")

        print("\nCOMBINACIONES DE BYTES:")
        print("  E0 C0 E0 F8 = Sin preset, manguera colgada")
        print("  E0 C0 E0 F0 = Sin preset, manguera levantada")
        print("  E0 E0 E0 F8 = Con preset, manguera colgada")
        print("  E0 E0 E0 F0 = Con preset, manguera levantada ← DESPACHO LISTO")

        respuesta = input("\n¿Funciono correctamente? (s/n): ")

        if respuesta.lower() == 's':
            print("\n" + "="*70)
            print("¡EXITO! PROTOCOLO COMPLETADO AL 100%")
            print("="*70)
            print("\nCOMMANDOS CONFIRMADOS:")
            print(f"  - CLEAR PRESET: 033")
            print(f"  - AUTHORIZE: 030[H][T][MONTO]")
            print(f"  - READ STATUS: 016")
            print("\nFORMATO AUTHORIZE:")
            print(f"  030{hose}{tipo}{monto}")
            print(f"  └── Hose: {hose}")
            print(f"      └── Tipo: {tipo}")
            print(f"          └── Monto: {monto}")
        else:
            print("\nReporta lo que observaste para ajustar el protocolo.")

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        s.close()
        print("\nPuerto cerrado")

    return 0

if __name__ == "__main__":
    sys.exit(main())
