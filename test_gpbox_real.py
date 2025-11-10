#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
TESTING CON HARDWARE REAL
==========================
Probar cada función del controlador contra GPBox y bomba real

IMPORTANTE: Usar con precaución en ambiente de pruebas

Uso:
    python test_gpbox_real.py
"""

from gilbarco_pump_controller import GilbarcoPumpController, PumpStatus
import time
import sys

def print_separator(title=""):
    """Imprimir separador visual"""
    print("\n" + "=" * 70)
    if title:
        print(f"  {title}")
        print("=" * 70)
    print()

def test_connection(controller):
    """Test 1: Verificar conexión"""
    print_separator("TEST 1: CONEXIÓN")

    print("Intentando conectar...")
    if controller.connect():
        print("✓ Conectado exitosamente")
        return True
    else:
        print("✗ Error al conectar")
        print("  Verifica:")
        print("  - Puerto COM correcto")
        print("  - GPBox encendido")
        print("  - Cable conectado")
        return False

def test_status(controller, pump_address):
    """Test 2: Leer estado de bomba"""
    print_separator("TEST 2: LEER ESTADO")

    print(f"Leyendo estado de bomba {pump_address}...")

    try:
        status = controller.request_status(pump_address)

        if status:
            print("✓ Respuesta recibida")
            print(f"  Estado: {status.get('pump_status', 'DESCONOCIDO')}")
            print(f"  Datos raw: {status.get('data', b'').hex()}")
            return True
        else:
            print("✗ No se recibió respuesta")
            return False

    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def test_totalizers(controller, pump_address):
    """Test 3: Leer totalizadores"""
    print_separator("TEST 3: LEER TOTALIZADORES")

    print(f"Leyendo totalizadores de bomba {pump_address}...")

    try:
        result = controller.read_totalizers(pump_address)

        if result:
            print("✓ Totalizadores leídos")
            print(f"  Volumen total: {result.get('total_volume_liters', 0):.2f} L")
            print(f"  Monto total: ${result.get('total_amount', 0):.2f}")
            print(f"  Datos raw: {result.get('data', b'').hex()}")
            return True
        else:
            print("✗ No se pudieron leer totalizadores")
            return False

    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def test_read_price(controller, pump_address):
    """Test 4: Leer precio (si está implementado)"""
    print_separator("TEST 4: LEER PRECIO")

    print(f"Intentando leer precio de manguera 0...")

    try:
        # Verificar si el método existe
        if not hasattr(controller, 'read_price'):
            print("⚠️  Método read_price() no implementado aún")
            print("  → Necesita capturar comando READ_PRICE primero")
            return None

        price = controller.read_price(pump_address, hose_number=0)

        if price:
            print(f"✓ Precio leído: ${price:.2f}/L")
            return True
        else:
            print("⚠️  No se pudo leer precio")
            print("  Posibles causas:")
            print("  - Comando no implementado correctamente")
            print("  - Formato de respuesta incorrecto")
            return False

    except NotImplementedError:
        print("⚠️  read_price() no está implementado")
        return None
    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def test_authorize(controller, pump_address, amount):
    """Test 5: Autorizar bomba"""
    print_separator("TEST 5: AUTORIZAR BOMBA")

    print("⚠️  ¡CUIDADO! Este test autorizará la bomba REAL")
    print(f"   Se autorizará bomba {pump_address} con preset de ${amount:.2f}")
    print()
    confirm = input("¿Continuar? (escribe 'SI' para confirmar): ")

    if confirm != "SI":
        print("✗ Test cancelado por el usuario")
        return False

    print(f"\nAutorizando bomba {pump_address} con ${amount:.2f}...")

    try:
        success = controller.authorize_pump(
            pump_address,
            preset_amount=amount,
            preset_volume=0
        )

        if success:
            print("✓ Bomba autorizada exitosamente")
            print("\n  → Ahora puedes:")
            print("     1. Levantar la manguera")
            print("     2. Verificar que aparece el preset en el display")
            print("     3. Despachar combustible (o no)")
            print()

            input("Presiona ENTER cuando termines de probar...")

            # Intentar reset
            print("\nReseteando bomba...")
            if controller.reset_pump(pump_address):
                print("✓ Bomba reseteada")
            else:
                print("⚠️  No se pudo resetear (puede estar en uso)")

            return True
        else:
            print("✗ Error al autorizar bomba")
            print("  Posibles causas:")
            print("  - Bomba ocupada")
            print("  - Manguera ya levantada")
            print("  - Error en formato de comando")
            return False

    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def test_stop(controller, pump_address):
    """Test 6: Detener bomba"""
    print_separator("TEST 6: DETENER BOMBA")

    print(f"Enviando comando STOP a bomba {pump_address}...")
    print("(Solo funciona si la bomba está despachando)")

    try:
        success = controller.stop_pump(pump_address)

        if success:
            print("✓ Comando STOP enviado")
            return True
        else:
            print("⚠️  No se pudo detener")
            return False

    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def test_reset(controller, pump_address):
    """Test 7: Reset bomba"""
    print_separator("TEST 7: RESET BOMBA")

    print(f"Reseteando bomba {pump_address}...")

    try:
        success = controller.reset_pump(pump_address)

        if success:
            print("✓ Bomba reseteada")
            return True
        else:
            print("⚠️  No se pudo resetear")
            return False

    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def main():
    """Función principal de testing"""

    print()
    print("=" * 70)
    print("  TESTING CON HARDWARE REAL - GPBox + Bombas Gilbarco")
    print("=" * 70)
    print()
    print("Este script probará cada función del controlador contra")
    print("el hardware real. Úsalo con precaución.")
    print()

    # Configuración
    print("CONFIGURACIÓN")
    print("-" * 70)
    port = input("Puerto COM (default: COM1): ").strip() or "COM1"
    pump_address = int(input("Dirección de bomba (default: 1): ").strip() or "1")

    print()
    print(f"Configuración:")
    print(f"  Puerto: {port}")
    print(f"  Bomba: {pump_address}")
    print()

    # Crear controlador
    controller = GilbarcoPumpController(
        port=port,
        baudrate=9600,
        timeout=2.0
    )

    # Resultados
    results = {
        'connection': None,
        'status': None,
        'totalizers': None,
        'read_price': None,
        'authorize': None,
        'stop': None,
        'reset': None
    }

    try:
        # TEST 1: Conexión
        results['connection'] = test_connection(controller)
        if not results['connection']:
            print("\n✗ No se pudo conectar. Tests abortados.")
            return

        time.sleep(1)

        # TEST 2: Estado
        results['status'] = test_status(controller, pump_address)
        time.sleep(1)

        # TEST 3: Totalizadores
        results['totalizers'] = test_totalizers(controller, pump_address)
        time.sleep(1)

        # TEST 4: Leer precio (opcional)
        results['read_price'] = test_read_price(controller, pump_address)
        time.sleep(1)

        # TEST 5: Autorizar (requiere confirmación)
        print()
        do_authorize = input("¿Realizar test de AUTORIZACIÓN? (s/n): ").lower()
        if do_authorize == 's':
            amount = float(input("Monto preset (default: 10.00): ").strip() or "10.0")
            results['authorize'] = test_authorize(controller, pump_address, amount)
            time.sleep(1)

        # TEST 6: Stop (solo si autorizó)
        if results.get('authorize'):
            do_stop = input("\n¿Probar comando STOP? (s/n): ").lower()
            if do_stop == 's':
                results['stop'] = test_stop(controller, pump_address)
                time.sleep(1)

        # TEST 7: Reset
        do_reset = input("\n¿Realizar RESET final? (s/n): ").lower()
        if do_reset == 's':
            results['reset'] = test_reset(controller, pump_address)

    except KeyboardInterrupt:
        print("\n\n✗ Testing cancelado por el usuario")

    finally:
        # Desconectar
        print()
        print("Desconectando...")
        controller.disconnect()

        # Resumen
        print_separator("RESUMEN DE TESTS")

        for test_name, result in results.items():
            if result is True:
                status = "✓ PASS"
            elif result is False:
                status = "✗ FAIL"
            elif result is None:
                status = "⚠️  SKIP"
            else:
                status = "? UNKNOWN"

            print(f"  {test_name:15s} : {status}")

        print()
        print("=" * 70)
        print()

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"\n✗ Error inesperado: {e}")
        import traceback
        traceback.print_exc()
