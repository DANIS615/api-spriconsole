#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Monitor Serial Simple - Captura automatica
"""

import serial
import time
from datetime import datetime
import sys

PORT = 'COM1'
BAUDRATE = 9600
TIMEOUT = 30  # segundos

def monitor_trafico():
    """Monitorea trafico serial en COM1"""

    print("="*80)
    print("MONITOR SERIAL SIMPLE - Captura Automatica")
    print("="*80)
    print(f"\nPuerto: {PORT}")
    print(f"Baudrate: {BAUDRATE}")
    print(f"Timeout: {TIMEOUT}s")
    print(f"\nPresiona Ctrl+C para detener")
    print("="*80)
    print()

    try:
        # Abrir puerto
        ser = serial.Serial(
            port=PORT,
            baudrate=BAUDRATE,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            timeout=0.1
        )

        print(f"[OK] Puerto {PORT} abierto")
        print(f"[INFO] Esperando datos...")
        print()

        buffer = bytearray()
        last_byte_time = time.time()
        message_timeout = 0.1  # 100ms sin datos = fin de mensaje
        message_count = 0
        start_time = time.time()

        while True:
            # Verificar timeout global
            if time.time() - start_time > TIMEOUT:
                print(f"\n[INFO] Timeout de {TIMEOUT}s alcanzado")
                print(f"[INFO] No se detectó tráfico en el puerto")
                break

            # Leer datos disponibles
            if ser.in_waiting > 0:
                data = ser.read(ser.in_waiting)
                buffer.extend(data)
                last_byte_time = time.time()

                # Resetear timer de inicio
                if message_count == 0:
                    start_time = time.time()

            # Si pasó el timeout y hay datos, procesar mensaje
            if len(buffer) > 0 and (time.time() - last_byte_time) > message_timeout:
                message_count += 1
                procesar_mensaje(bytes(buffer), message_count)
                buffer.clear()

            time.sleep(0.01)

    except KeyboardInterrupt:
        print("\n\n[INFO] Monitoreo detenido por usuario")

    except serial.SerialException as e:
        print(f"\n[ERROR] Error de puerto serial: {e}")
        return False

    except Exception as e:
        print(f"\n[ERROR] Error inesperado: {type(e).__name__}: {e}")
        return False

    finally:
        if 'ser' in locals() and ser.is_open:
            ser.close()
            print(f"\n[OK] Puerto cerrado")

        print(f"\n[INFO] Total de mensajes capturados: {message_count}")

    return True


def procesar_mensaje(data, num_mensaje):
    """Procesa y muestra mensaje capturado"""

    timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]

    print("-" * 80)
    print(f"[{timestamp}] Mensaje #{num_mensaje} ({len(data)} bytes)")
    print("-" * 80)

    # Mostrar hexadecimal
    hex_lines = []
    for i in range(0, len(data), 16):
        chunk = data[i:i+16]

        # Offset
        offset = f"{i:08X}"

        # Hex
        hex_part = ' '.join(f"{b:02X}" for b in chunk)
        hex_part = hex_part.ljust(47)

        # ASCII
        ascii_part = ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk)

        hex_lines.append(f"{offset}  {hex_part}  |{ascii_part}|")

    print('\n'.join(hex_lines))

    # Análisis especial
    if len(data) >= 2:
        if data[0] == 0x10 and data[1] == 0x02:
            print("\n[!] INICIO DE MENSAJE GILBARCO DETECTADO (DLE STX)")
            if len(data) >= 5:
                print(f"    Direccion: {data[2]:02X}")
                print(f"    Comando: {data[3]:02X}")
                print(f"    Longitud: {data[4]:02X}")

        if len(data) >= 2 and data[-2] == 0x10 and data[-1] == 0x03:
            print("[!] FIN DE MENSAJE GILBARCO DETECTADO (DLE ETX)")

    print()

    # Guardar en archivo
    try:
        with open("C:\\Windows\\CEM44\\captura_serial.txt", "a", encoding="utf-8") as f:
            f.write(f"\n{'='*80}\n")
            f.write(f"[{timestamp}] Mensaje #{num_mensaje} ({len(data)} bytes)\n")
            f.write(f"{'='*80}\n")
            f.write('\n'.join(hex_lines))
            f.write("\n\n")
    except:
        pass


if __name__ == "__main__":
    print("\n[INFO] Iniciando monitor serial...")
    print("[INFO] Los datos se guardaran en: C:\\Windows\\CEM44\\captura_serial.txt")
    print()

    if monitor_trafico():
        print("\n[OK] Monitoreo completado")
    else:
        print("\n[ERROR] Monitoreo finalizado con errores")
