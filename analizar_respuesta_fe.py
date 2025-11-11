#!/usr/bin/env python3
"""
Analizar Respuesta FE
Investiga el significado de la respuesta e0e0e0fe
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

def enviar_comando(s, pump_id, comando_str):
    """Envia comando y retorna respuesta completa"""
    # SLOT
    s.reset_input_buffer()
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.2)
    rx_slot = s.read(s.in_waiting)

    # Comando
    DLE, STX, ETX = 0x10, 0x02, 0x03
    pump_ascii = ord(str(pump_id))
    cmd_bytes = comando_str.encode('ascii')

    frame_data = bytes([pump_ascii, STX]) + cmd_bytes
    lrc = calcular_lrc(frame_data)
    frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

    s.reset_input_buffer()
    s.write(frame)
    time.sleep(0.3)

    rx = s.read(s.in_waiting)
    return rx

def analizar_bits(byte_val):
    """Analiza bits de un byte"""
    bits = f"{byte_val:08b}"
    info = {
        'hex': f"0x{byte_val:02X}",
        'dec': byte_val,
        'bin': bits,
        'bits_set': [i for i in range(8) if (byte_val >> i) & 1]
    }
    return info

def main():
    """Funcion principal"""
    print("="*80)
    print("ANALISIS DE RESPUESTA FE")
    print("="*80)

    if len(sys.argv) < 2:
        print("\nUso: python analizar_respuesta_fe.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    s = serial.Serial(puerto, 115200, timeout=2)
    print(f"\nConectado a {puerto} @ 115200 bps\n")

    try:
        # Probar multiples comandos y analizar respuestas
        comandos_test = [
            ('016', 'READ STATUS'),
            ('033', 'CLEAR PRESET'),
            ('030110000500', 'AUTHORIZE H1 T1 $5.00'),
            ('031', 'Posible STOP'),
            ('032', 'Posible CLEAR SALE'),
            ('034', 'Comando desconocido'),
            ('035', 'Comando desconocido'),
        ]

        respuestas = {}

        print("="*80)
        print("PROBANDO COMANDOS Y ANALIZANDO RESPUESTAS")
        print("="*80)

        for comando, desc in comandos_test:
            print(f"\n{desc} ({comando})")
            print("-" * 80)

            rx = enviar_comando(s, pump_id, comando)

            if rx:
                hex_str = rx.hex()
                print(f"RX ({len(rx)} bytes): {hex_str}")

                if len(rx) >= 4:
                    # Analizar cada byte
                    print("\nAnalisis por byte:")
                    for i, byte_val in enumerate(rx[:4]):
                        info = analizar_bits(byte_val)
                        print(f"  Byte {i}: {info['hex']} ({info['dec']:3d}) [{info['bin']}]")
                        print(f"           Bits activos: {info['bits_set']}")

                    # Guardar para comparacion
                    respuestas[comando] = {
                        'desc': desc,
                        'rx': list(rx[:4]) if len(rx) >= 4 else list(rx),
                        'hex': hex_str
                    }

                    # Analisis especial para byte 3
                    if len(rx) >= 4:
                        byte3 = rx[3]
                        print(f"\nAnalisis Byte 3 (0x{byte3:02X}):")

                        # Comparar con valores conocidos
                        if byte3 == 0xF8:
                            print("  = F8 (11111000) - Manguera COLGADA (conocido)")
                        elif byte3 == 0xF0:
                            print("  = F0 (11110000) - Manguera LEVANTADA (conocido)")
                        elif byte3 == 0xFE:
                            print("  = FE (11111110) - VALOR NUEVO")
                            print("    Diferencia vs F8: bit 1 y 2")
                            print("    Diferencia vs F0: bit 1, 2 y 3")
                            print("    Posibles significados:")
                            print("      - Estado de error")
                            print("      - ACK/confirmacion")
                            print("      - Estado transitorio")
                            print("      - Manguera en estado especial")
                        else:
                            print(f"  = Valor desconocido: 0x{byte3:02X}")

            else:
                print("RX: Sin respuesta")

            time.sleep(0.5)

        # Comparacion de respuestas
        print("\n" + "="*80)
        print("COMPARACION DE RESPUESTAS")
        print("="*80)

        if len(respuestas) > 1:
            print("\nPatron de bytes por comando:\n")
            print(f"{'Comando':<20} {'Descripcion':<25} {'Byte0':<6} {'Byte1':<6} {'Byte2':<6} {'Byte3':<6}")
            print("-" * 80)

            for cmd, data in respuestas.items():
                if len(data['rx']) >= 4:
                    print(f"{cmd:<20} {data['desc']:<25} {data['rx'][0]:02X}     {data['rx'][1]:02X}     {data['rx'][2]:02X}     {data['rx'][3]:02X}")

        # Analisis de byte 3 especifico
        print("\n" + "="*80)
        print("ANALISIS DETALLADO: BYTE 3 = FE")
        print("="*80)

        byte3_fe = analizar_bits(0xFE)
        byte3_f8 = analizar_bits(0xF8)
        byte3_f0 = analizar_bits(0xF0)

        print("\nComparacion de valores de Byte 3:")
        print(f"\nFE (nuevo):     {byte3_fe['bin']} - Bits: {byte3_fe['bits_set']}")
        print(f"F8 (colgada):   {byte3_f8['bin']} - Bits: {byte3_f8['bits_set']}")
        print(f"F0 (levantada): {byte3_f0['bin']} - Bits: {byte3_f0['bits_set']}")

        print("\nDiferencias:")
        print("  FE vs F8:")
        diff_fe_f8 = 0xFE ^ 0xF8
        print(f"    XOR: {diff_fe_f8:02X} ({diff_fe_f8:08b})")
        print(f"    Bits diferentes: {[i for i in range(8) if (diff_fe_f8 >> i) & 1]}")

        print("  FE vs F0:")
        diff_fe_f0 = 0xFE ^ 0xF0
        print(f"    XOR: {diff_fe_f0:02X} ({diff_fe_f0:08b})")
        print(f"    Bits diferentes: {[i for i in range(8) if (diff_fe_f0 >> i) & 1]}")

        print("\n" + "="*80)
        print("HIPOTESIS SOBRE FE")
        print("="*80)

        print("""
FE = 11111110

Posibles significados:

1. ACK/CONFIRMACION
   - Respuesta de confirmacion a comando recibido
   - No es un status de bomba, sino un ACK del GPBox

2. ESTADO DE ERROR
   - Bomba en estado de error o no disponible
   - Comando rechazado

3. ESTADO TRANSITORIO
   - Bomba procesando comando
   - Estado intermedio antes de confirmar

4. MANGUERA EN MOVIMIENTO
   - Bit 1 (0->1): Detecta movimiento de manguera
   - Transicion entre F8 (colgada) y F0 (levantada)

5. MULTIPLES MANGUERAS
   - FE indica multiples mangueras detectadas
   - Conflicto de estado

6. RESPUESTA DIFERENTE
   - No es un status (016) sino respuesta a otro comando
   - Formato de respuesta diferente para AUTHORIZE

Recomendaciones:
- Verificar longitud completa de respuesta (mas de 4 bytes?)
- Probar leer status inmediatamente despues de comando
- Capturar trafico del software original SSF
- Verificar manual tecnico de GPBox si esta disponible
        """)

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        s.close()
        print("\nPuerto cerrado")

    return 0

if __name__ == "__main__":
    sys.exit(main())
