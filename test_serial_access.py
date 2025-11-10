#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Test de acceso al puerto serial
"""

import serial
import sys

def test_serial_port(port='COM1', baudrate=9600):
    """Test rápido de acceso al puerto serial"""

    print(f"\n{'='*60}")
    print(f"TEST DE ACCESO AL PUERTO SERIAL")
    print(f"{'='*60}")
    print(f"\nPuerto: {port}")
    print(f"Baudrate: {baudrate}")
    print(f"\nIntentando abrir puerto...")

    try:
        ser = serial.Serial(
            port=port,
            baudrate=baudrate,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            timeout=1
        )

        print(f"[OK] Puerto {port} abierto exitosamente!")
        print(f"\nInformacion del puerto:")
        print(f"  - Nombre: {ser.name}")
        print(f"  - Baudrate: {ser.baudrate}")
        print(f"  - Timeout: {ser.timeout}s")
        print(f"  - Bytes en buffer RX: {ser.in_waiting}")

        # Limpiar buffers
        ser.reset_input_buffer()
        ser.reset_output_buffer()
        print(f"\n[OK] Buffers limpiados")

        # Cerrar puerto
        ser.close()
        print(f"[OK] Puerto cerrado correctamente")

        return True

    except serial.SerialException as e:
        print(f"\n[ERROR] al abrir puerto:")
        print(f"  {e}")

        if "PermissionError" in str(e) or "Access is denied" in str(e):
            print(f"\n[!] El puerto esta siendo usado por otro programa.")
            print(f"   Posiblemente el servicio PumpService.")
            print(f"\n   SOLUCION:")
            print(f"   1. Detener servicio: net stop PumpService")
            print(f"   2. Ejecutar este script nuevamente")
            print(f"   3. Reiniciar servicio: net start PumpService")

        return False

    except Exception as e:
        print(f"\n[ERROR] inesperado:")
        print(f"  {type(e).__name__}: {e}")
        return False


if __name__ == "__main__":
    port = sys.argv[1] if len(sys.argv) > 1 else 'COM1'

    if test_serial_port(port):
        print(f"\n{'='*60}")
        print(f"[OK] TEST EXITOSO - El puerto esta disponible")
        print(f"{'='*60}\n")
        sys.exit(0)
    else:
        print(f"\n{'='*60}")
        print(f"[ERROR] TEST FALLIDO - Ver errores arriba")
        print(f"{'='*60}\n")
        sys.exit(1)
