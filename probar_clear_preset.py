#!/usr/bin/env python3
'''
Probar Comandos CLEAR PRESET
Prueba comandos 032, 035, 036 para limpiar preset
'''

import serial
import time

def calcular_lrc(data):
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def enviar_comando(s, pump_id, comando):
    print(f"\nProbando comando {comando}...")

    # SLOT
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.3)
    rx_slot = s.read(s.in_waiting)
    print(f"  SLOT RX: {rx_slot.hex()}")

    # Comando
    frame_data = bytes([ord(str(pump_id)), 0x02]) + comando.encode('ascii')
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    print(f"  TX: {frame.hex()}")
    s.write(frame)
    time.sleep(0.5)

    rx = s.read(s.in_waiting)
    print(f"  RX: {rx.hex() if rx else 'Sin respuesta'}")

    return rx

# Abrir puerto
s = serial.Serial('COM1', 115200, timeout=2)

# Probar comandos
comandos = ['032', '035', '036']

for cmd in comandos:
    enviar_comando(s, 1, cmd)
    input("  Presiona ENTER para siguiente...")

# Verificar estado con 016
print("\nVerificando estado final...")
enviar_comando(s, 1, '016')

s.close()
print("\nPrueba completada!")
