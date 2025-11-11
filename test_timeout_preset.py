#!/usr/bin/env python3
"""
Test de Timeout de Preset
Mide cuanto tiempo tarda en expirar un preset si no se levanta la manguera
"""

import serial
import time
import sys
from datetime import datetime, timedelta

def calcular_lrc(data):
    """Calcula LRC"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def interpretar_status(data):
    """Interpreta status"""
    if not data or len(data) < 4:
        return None

    byte0, byte1, byte2, byte3 = data[0], data[1], data[2], data[3]
    tiene_preset = (byte1 == 0xE0)
    manguera_levantada = (byte3 == 0xF0)

    return {
        'tiene_preset': tiene_preset,
        'manguera_levantada': manguera_levantada,
        'hex': f"{byte0:02X} {byte1:02X} {byte2:02X} {byte3:02X}",
        'byte1': byte1,
        'byte3': byte3
    }

def enviar_comando(s, pump_id, comando_str):
    """Envia comando"""
    # SLOT
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.2)
    s.read(s.in_waiting)

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

    return s.read(s.in_waiting) if s.in_waiting > 0 else None

def test_timeout_preset(puerto, pump_id, hose, tipo, monto):
    """Test de timeout de preset"""
    print("="*70)
    print("TEST DE TIMEOUT DE PRESET")
    print("="*70)

    s = serial.Serial(puerto, 115200, timeout=2)
    print(f"\nConectado a {puerto} @ 115200 bps")

    try:
        # CLEAR PRESET
        print("\n1. Limpiando preset...")
        enviar_comando(s, pump_id, '033')
        time.sleep(0.3)

        # AUTHORIZE
        comando_auth = f"030{hose}{tipo}{monto}"
        print(f"\n2. Autorizando: {comando_auth}")
        print(f"   Manguera: {hose}")
        print(f"   Tipo: {tipo}")
        print(f"   Monto: ${int(monto)/100:.2f}")

        enviar_comando(s, pump_id, comando_auth)
        time.sleep(0.5)

        # Verificar preset activo
        rx = enviar_comando(s, pump_id, '016')
        info = interpretar_status(rx)

        if not info or not info['tiene_preset']:
            print("\nERROR: Preset no se activo")
            return

        print(f"\n3. Preset activo: {info['hex']}")
        print("\n" + "="*70)
        print("MONITOREANDO TIMEOUT")
        print("="*70)
        print("\nNO levantes la manguera. Observando cuanto tarda en expirar...\n")

        inicio = datetime.now()
        ultimo_estado = info['tiene_preset']
        contador = 0

        while True:
            time.sleep(2)  # Leer cada 2 segundos

            rx = enviar_comando(s, pump_id, '016')
            info = interpretar_status(rx)

            if not info:
                continue

            ahora = datetime.now()
            transcurrido = (ahora - inicio).total_seconds()

            # Detectar cambio
            if info['tiene_preset'] != ultimo_estado:
                print("\n" + "="*70)
                print(f"CAMBIO DETECTADO EN {transcurrido:.1f} SEGUNDOS")
                print("="*70)
                print(f"Tiempo transcurrido: {int(transcurrido//60)}:{int(transcurrido%60):02d}")
                print(f"Estado anterior: {'CON preset' if ultimo_estado else 'SIN preset'}")
                print(f"Estado actual: {'CON preset' if info['tiene_preset'] else 'SIN preset'}")
                print(f"Bytes: {info['hex']}")

                if not info['tiene_preset']:
                    print("\nPRESET EXPIRADO")
                    print(f"Timeout medido: {transcurrido:.1f} segundos ({int(transcurrido//60)}:{int(transcurrido%60):02d})")
                    break

                ultimo_estado = info['tiene_preset']

            # Mostrar progreso cada 10 segundos
            contador += 1
            if contador % 5 == 0:
                minutos = int(transcurrido // 60)
                segundos = int(transcurrido % 60)
                estado_str = "CON preset" if info['tiene_preset'] else "SIN preset"
                print(f"[{minutos:02d}:{segundos:02d}] {info['hex']} - {estado_str}")

            # Limite de seguridad: 10 minutos
            if transcurrido > 600:
                print("\nTimeout no detectado despues de 10 minutos")
                print("Deteniendo prueba...")
                break

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        s.close()
        print("\nPuerto cerrado")

def test_comandos_adicionales(puerto, pump_id):
    """Prueba comandos adicionales que pueden existir"""
    print("="*70)
    print("TEST DE COMANDOS ADICIONALES")
    print("="*70)

    s = serial.Serial(puerto, 115200, timeout=2)

    comandos_prueba = [
        ('031', 'STOP - Detener despacho'),
        ('034', 'Posible comando relacionado con preset'),
        ('037', 'Posible comando de status extendido'),
        ('038', 'Posible comando de status extendido'),
        ('039', 'Posible comando de status extendido'),
    ]

    print("\nProbando comandos desconocidos...\n")

    for cmd, desc in comandos_prueba:
        print(f"\nComando {cmd}: {desc}")
        print("-" * 70)

        rx = enviar_comando(s, pump_id, cmd)

        if rx:
            print(f"TX: {cmd}")
            print(f"RX: {rx.hex()}")
            print(f"Longitud: {len(rx)} bytes")

            if len(rx) >= 4:
                print(f"Interpretacion: {rx[0]:02X} {rx[1]:02X} {rx[2]:02X} {rx[3]:02X}")
        else:
            print("Sin respuesta")

        input("Presiona ENTER para siguiente...")

    s.close()
    print("\nPrueba completada")

def main():
    """Funcion principal"""
    print("="*70)
    print("TEST DE TIMEOUT Y COMANDOS ADICIONALES")
    print("="*70)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python test_timeout_preset.py COM1 [PUMP_ID]")
        print("\nModos:")
        print("  1. Test de timeout de preset")
        print("  2. Test de comandos adicionales")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    print("\nSelecciona modo:")
    print("1. Test de timeout de preset (mide cuanto tarda en expirar)")
    print("2. Test de comandos adicionales (031, 034, 037, 038, 039)")

    opcion = input("\nOpcion [1]: ").strip() or "1"

    if opcion == "1":
        hose = input("\nManguera (1-9) [1]: ").strip() or "1"
        tipo = input("Tipo (0=Full, 1=Money, 2=Volume) [1]: ").strip() or "1"
        monto = input("Monto (8 digitos) [00000500]: ").strip() or "00000500"

        test_timeout_preset(puerto, pump_id, hose, tipo, monto)

    elif opcion == "2":
        test_comandos_adicionales(puerto, pump_id)

    return 0

if __name__ == "__main__":
    sys.exit(main())
