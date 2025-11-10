#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
PRUEBA AUTOMATICA DE BOMBAS
Envia comandos a las bombas y captura respuestas
"""

import sys
sys.path.insert(0, 'C:\\Windows\\CEM44')

from mi_sistema_bombas import SistemaBombas, GilbarcoProtocol
import time

def probar_sistema():
    """Prueba automatica del sistema"""

    print("="*80)
    print("PRUEBA AUTOMATICA DE BOMBAS GILBARCO")
    print("="*80)
    print()

    # Inicializar sistema
    sistema = SistemaBombas()

    if not sistema.inicializar(port='COM1', baudrate=9600):
        print("[ERROR] No se pudo inicializar el sistema")
        return

    if not sistema.gestor or not sistema.gestor.connected:
        print("[ERROR] No hay conexion serial - no se pueden probar comandos")
        return

    print("\n" + "="*80)
    print("PRUEBAS DE COMUNICACION")
    print("="*80)

    # Probar cada bomba
    for num_bomba in range(1, 7):  # Bombas 1-6
        print(f"\n--- BOMBA {num_bomba} ---")

        if num_bomba in sistema.config.bombas:
            bomba = sistema.config.bombas[num_bomba]
            address = bomba['numero_fisico']

            # Test 1: Solicitar VERSION
            print(f"\nTest 1: VERSION_REQUEST (bomba {address})")
            mensaje = GilbarcoProtocol.build_message(address, GilbarcoProtocol.CMD_VERSION)
            print(f"  TX: {mensaje.hex(' ').upper()}")

            respuesta = sistema.gestor.enviar_comando(address, GilbarcoProtocol.CMD_VERSION)

            if respuesta:
                print(f"  RX: {respuesta.hex(' ').upper()}")
                parsed = GilbarcoProtocol.parse_message(respuesta)
                if parsed:
                    print(f"  Parseado: {parsed}")
            else:
                print(f"  RX: (sin respuesta)")

            time.sleep(1)

            # Test 2: Solicitar ESTADO
            print(f"\nTest 2: STATUS_REQUEST (bomba {address})")
            mensaje = GilbarcoProtocol.build_message(address, GilbarcoProtocol.CMD_STATUS)
            print(f"  TX: {mensaje.hex(' ').upper()}")

            respuesta = sistema.gestor.enviar_comando(address, GilbarcoProtocol.CMD_STATUS)

            if respuesta:
                print(f"  RX: {respuesta.hex(' ').upper()}")
                parsed = GilbarcoProtocol.parse_message(respuesta)
                if parsed:
                    print(f"  Parseado: {parsed}")
            else:
                print(f"  RX: (sin respuesta)")

            time.sleep(1)

            # Test 3: Leer PRECIO de manguera 0
            print(f"\nTest 3: READ_PRICE manguera 0 (bomba {address})")
            data = bytes([0])  # Manguera 0
            mensaje = GilbarcoProtocol.build_message(address, GilbarcoProtocol.CMD_READ_PRICE, data)
            print(f"  TX: {mensaje.hex(' ').upper()}")

            respuesta = sistema.gestor.enviar_comando(address, GilbarcoProtocol.CMD_READ_PRICE, data)

            if respuesta:
                print(f"  RX: {respuesta.hex(' ').upper()}")
                parsed = GilbarcoProtocol.parse_message(respuesta)
                if parsed:
                    print(f"  Parseado: {parsed}")

                    if len(parsed['data']) >= 4:
                        import struct
                        precio_raw = struct.unpack('>I', parsed['data'][0:4])[0]
                        precio = precio_raw / 100.0
                        print(f"  *** PRECIO CAPTURADO: ${precio:.2f}/litro ***")
            else:
                print(f"  RX: (sin respuesta)")

            time.sleep(1)

        # Solo probar bomba 1 por ahora para no saturar
        print(f"\n[INFO] Probando solo bomba 1 para validar comunicacion...")
        print(f"[INFO] Si funciona, descomenta el resto en el codigo")
        break

    # Cerrar
    print("\n" + "="*80)
    print("PRUEBAS COMPLETADAS")
    print("="*80)

    sistema.cerrar()


if __name__ == "__main__":
    try:
        probar_sistema()
    except KeyboardInterrupt:
        print("\n\n[INFO] Prueba interrumpida")
    except Exception as e:
        print(f"\n[ERROR] Error: {e}")
        import traceback
        traceback.print_exc()
