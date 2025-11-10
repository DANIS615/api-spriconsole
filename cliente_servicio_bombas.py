#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
CLIENTE PYTHON PARA SERVICIO DE BOMBAS
========================================
Cliente para consumir el servicio REST de control de bombas

Requisitos:
    pip install requests

Uso:
    python cliente_servicio_bombas.py
"""

import requests
import json
import time
from typing import Optional, Dict
from datetime import datetime


class PumpServiceClient:
    """Cliente para el servicio de control de bombas"""

    def __init__(self, base_url: str = "http://localhost:5000"):
        """
        Inicializar cliente

        Args:
            base_url: URL base del servicio
        """
        self.base_url = base_url.rstrip('/')
        self.timeout = 5.0  # Timeout en segundos

    def _make_request(self, method: str, endpoint: str, **kwargs) -> Optional[Dict]:
        """
        Hacer request al servicio

        Args:
            method: Método HTTP (GET, POST)
            endpoint: Endpoint del API
            **kwargs: Argumentos adicionales para requests

        Returns:
            Respuesta JSON o None si hay error
        """
        url = f"{self.base_url}{endpoint}"

        try:
            response = requests.request(
                method,
                url,
                timeout=self.timeout,
                **kwargs
            )
            response.raise_for_status()
            return response.json()

        except requests.exceptions.ConnectionError:
            print(f"✗ Error: No se pudo conectar al servicio en {self.base_url}")
            print("  Verifica que el servicio esté ejecutándose")
            return None

        except requests.exceptions.Timeout:
            print(f"✗ Error: Timeout al conectar con el servicio")
            return None

        except requests.exceptions.HTTPError as e:
            print(f"✗ Error HTTP: {e}")
            try:
                error_data = response.json()
                print(f"  Detalle: {error_data.get('error', 'Sin detalles')}")
            except:
                pass
            return None

        except Exception as e:
            print(f"✗ Error inesperado: {e}")
            return None

    def health_check(self) -> bool:
        """
        Verificar que el servicio esté disponible

        Returns:
            True si el servicio responde, False en caso contrario
        """
        result = self._make_request("GET", "/api/pump/health")
        return result is not None and result.get('status') == 'OK'

    def authorize_pump(self, pump_address: int, amount: float = 0, volume: float = 0) -> Optional[Dict]:
        """
        Autorizar bomba para despachar

        Args:
            pump_address: Dirección de la bomba (1-16)
            amount: Monto preset en pesos (0 = sin límite)
            volume: Volumen preset en litros (0 = sin límite)

        Returns:
            Respuesta del servicio con resultado de autorización
        """
        data = {
            "pumpAddress": pump_address,
            "amount": amount,
            "volume": volume
        }

        return self._make_request("POST", "/api/pump/authorize", json=data)

    def get_status(self, pump_address: int) -> Optional[Dict]:
        """
        Obtener estado actual de una bomba

        Args:
            pump_address: Dirección de la bomba (1-16)

        Returns:
            Diccionario con estado de la bomba
        """
        return self._make_request("GET", f"/api/pump/status/{pump_address}")

    def stop_pump(self, pump_address: int) -> Optional[Dict]:
        """
        Detener bomba en operación

        Args:
            pump_address: Dirección de la bomba (1-16)

        Returns:
            Respuesta del servicio con resultado
        """
        return self._make_request("POST", f"/api/pump/stop/{pump_address}")

    def reset_pump(self, pump_address: int) -> Optional[Dict]:
        """
        Resetear bomba después de una transacción

        Args:
            pump_address: Dirección de la bomba (1-16)

        Returns:
            Respuesta del servicio con resultado
        """
        return self._make_request("POST", f"/api/pump/reset/{pump_address}")

    def get_totalizers(self, pump_address: int) -> Optional[Dict]:
        """
        Obtener totalizadores de una bomba

        Args:
            pump_address: Dirección de la bomba (1-16)

        Returns:
            Diccionario con totalizadores
        """
        return self._make_request("GET", f"/api/pump/totalizers/{pump_address}")

    def monitor_pump(self, pump_address: int, interval: float = 2.0):
        """
        Monitorear estado de bomba en tiempo real

        Args:
            pump_address: Dirección de la bomba
            interval: Intervalo entre consultas en segundos
        """
        print(f"\n{'=' * 60}")
        print(f"MONITOREO DE BOMBA {pump_address}")
        print(f"{'=' * 60}")
        print("Presiona Ctrl+C para detener\n")

        try:
            while True:
                status = self.get_status(pump_address)

                if status:
                    timestamp = datetime.now().strftime("%H:%M:%S")
                    print(f"[{timestamp}] Bomba {pump_address}: {status.get('status', 'DESCONOCIDO')}")
                    print(f"            Volumen: {status.get('volume', 0):.2f} L")
                    print(f"            Monto: ${status.get('amount', 0):.2f}")
                    print(f"            Precio: ${status.get('price', 0):.2f}/L")
                    print()

                time.sleep(interval)

        except KeyboardInterrupt:
            print("\n✓ Monitoreo detenido")


def ejemplo_uso_basico():
    """Ejemplo de uso básico del cliente"""
    print()
    print("=" * 60)
    print("EJEMPLO DE USO BÁSICO")
    print("=" * 60)
    print()

    # Crear cliente
    client = PumpServiceClient()

    # 1. Verificar que el servicio esté disponible
    print("1. Verificando servicio...")
    if not client.health_check():
        print("\n✗ El servicio no está disponible")
        print("  Inicia el servicio con: dotnet run")
        return

    print("✓ Servicio disponible")

    # 2. Obtener estado de bomba
    print("\n2. Consultando estado de bomba 1...")
    status = client.get_status(1)
    if status:
        print(f"✓ Estado: {status.get('status')}")
        print(f"  Volumen: {status.get('volume')} L")
        print(f"  Monto: ${status.get('amount')}")
    else:
        print("✗ No se pudo obtener el estado")

    # 3. Autorizar bomba con preset de $50
    print("\n3. Autorizando bomba 1 con $50.00...")
    result = client.authorize_pump(1, amount=50.0)
    if result and result.get('success'):
        print("✓ Bomba autorizada exitosamente")
    else:
        print("✗ Error al autorizar bomba")

    # 4. Esperar a que termine (simulado)
    print("\n4. Esperando fin de transacción (simulado)...")
    time.sleep(3)

    # 5. Resetear bomba
    print("\n5. Reseteando bomba 1...")
    result = client.reset_pump(1)
    if result and result.get('success'):
        print("✓ Bomba reseteada")
    else:
        print("✗ Error al resetear bomba")

    # 6. Obtener totalizadores
    print("\n6. Consultando totalizadores...")
    totalizers = client.get_totalizers(1)
    if totalizers and totalizers.get('success'):
        print(f"✓ Totalizadores:")
        print(f"  Volumen total: {totalizers.get('totalVolume', 0):.2f} L")
        print(f"  Monto total: ${totalizers.get('totalAmount', 0):.2f}")
        print(f"  Transacciones: {totalizers.get('transactionCount', 0)}")
    else:
        print("✗ No se pudieron obtener totalizadores")

    print()


def menu_interactivo():
    """Menú interactivo para probar el cliente"""
    print()
    print("=" * 60)
    print("CLIENTE DE SERVICIO DE BOMBAS - MENÚ INTERACTIVO")
    print("=" * 60)
    print()

    # Configurar URL del servicio
    url = input("URL del servicio (Enter para http://localhost:5000): ").strip()
    if not url:
        url = "http://localhost:5000"

    client = PumpServiceClient(url)

    # Verificar conexión
    print("\n→ Verificando conexión con el servicio...")
    if not client.health_check():
        print("\n✗ No se pudo conectar al servicio")
        return

    print("✓ Conectado al servicio")

    # Menú principal
    while True:
        print("\n" + "=" * 60)
        print("MENÚ PRINCIPAL")
        print("=" * 60)
        print()
        print("1. Consultar estado de bomba")
        print("2. Autorizar bomba")
        print("3. Detener bomba")
        print("4. Resetear bomba")
        print("5. Ver totalizadores")
        print("6. Monitoreo continuo")
        print("7. Ejemplo de uso completo")
        print("0. Salir")
        print()

        opcion = input("Seleccione opción: ").strip()

        if opcion == "0":
            print("\n✓ Saliendo...")
            break

        if opcion in ["1", "2", "3", "4", "5", "6"]:
            pump_address = int(input("\nDirección de bomba (1-16): ") or "1")

            if opcion == "1":
                # Consultar estado
                print("\n→ Consultando estado...")
                status = client.get_status(pump_address)
                if status:
                    print(f"\n✓ Estado de bomba {pump_address}:")
                    print(f"  Estado: {status.get('status')}")
                    print(f"  Volumen: {status.get('volume')} L")
                    print(f"  Monto: ${status.get('amount')}")
                    print(f"  Precio: ${status.get('price')}/L")
                    print(f"  Mensaje: {status.get('message')}")

            elif opcion == "2":
                # Autorizar bomba
                amount = float(input("Monto preset (0=sin límite): ") or "0")
                volume = float(input("Volumen preset en litros (0=sin límite): ") or "0")

                print(f"\n→ Autorizando bomba {pump_address}...")
                result = client.authorize_pump(pump_address, amount, volume)
                if result and result.get('success'):
                    print(f"✓ Bomba {pump_address} autorizada")
                else:
                    print(f"✗ Error al autorizar bomba {pump_address}")

            elif opcion == "3":
                # Detener bomba
                print(f"\n→ Deteniendo bomba {pump_address}...")
                result = client.stop_pump(pump_address)
                if result and result.get('success'):
                    print(f"✓ Bomba {pump_address} detenida")
                else:
                    print(f"✗ Error al detener bomba {pump_address}")

            elif opcion == "4":
                # Resetear bomba
                print(f"\n→ Reseteando bomba {pump_address}...")
                result = client.reset_pump(pump_address)
                if result and result.get('success'):
                    print(f"✓ Bomba {pump_address} reseteada")
                else:
                    print(f"✗ Error al resetear bomba {pump_address}")

            elif opcion == "5":
                # Ver totalizadores
                print(f"\n→ Consultando totalizadores...")
                totalizers = client.get_totalizers(pump_address)
                if totalizers and totalizers.get('success'):
                    print(f"\n✓ Totalizadores de bomba {pump_address}:")
                    print(f"  Volumen total: {totalizers.get('totalVolume', 0):.2f} L")
                    print(f"  Monto total: ${totalizers.get('totalAmount', 0):.2f}")
                    print(f"  Número de transacciones: {totalizers.get('transactionCount', 0)}")
                else:
                    print(f"✗ Error al obtener totalizadores")

            elif opcion == "6":
                # Monitoreo continuo
                interval = float(input("Intervalo en segundos (default: 2): ") or "2")
                client.monitor_pump(pump_address, interval)

        elif opcion == "7":
            ejemplo_uso_basico()

        else:
            print("\n✗ Opción inválida")

        input("\nPresiona ENTER para continuar...")


def main():
    """Función principal"""
    print()
    print("=" * 60)
    print("CLIENTE PYTHON PARA SERVICIO DE CONTROL DE BOMBAS")
    print("=" * 60)
    print()
    print("Este cliente consume el servicio REST de control de bombas")
    print()

    print("Opciones:")
    print("1. Menú interactivo")
    print("2. Ejemplo de uso básico")
    print()

    opcion = input("Seleccione opción (1/2): ").strip()

    if opcion == "1":
        menu_interactivo()
    elif opcion == "2":
        ejemplo_uso_basico()
    else:
        print("\n✗ Opción inválida")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n✗ Cancelado por el usuario")
    except Exception as e:
        print(f"\n\n✗ Error inesperado: {e}")
        import traceback
        traceback.print_exc()
