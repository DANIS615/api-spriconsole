"""
GILBARCO TWO-WIRE PROTOCOL CONTROLLER
======================================
Control de dispensadores Gilbarco usando protocolo Two-Wire
Basado en especificaciones del protocolo Gilbarco Two-Wire

Autor: Sistema de control personalizado
Fecha: 2025
"""

import serial
import time
import struct
from typing import Optional, List, Tuple
from enum import IntEnum


class GilbarcoCommands(IntEnum):
    """Comandos del protocolo Gilbarco Two-Wire"""
    # Comandos básicos
    VERSION_REQUEST = 0x01
    CONFIG_REQUEST = 0x02
    STATUS_REQUEST = 0x03
    PRESET_COMMAND = 0x04
    AUTHORIZE_PUMP = 0x05
    STOP_PUMP = 0x06
    RESET_PUMP = 0x07
    READ_TOTALIZERS = 0x08
    READ_PRICE = 0x09
    WRITE_PRICE = 0x0A


class PumpStatus(IntEnum):
    """Estados de la bomba"""
    IDLE = 0x00
    AUTHORIZED = 0x01
    DISPENSING = 0x02
    STOPPED = 0x03
    FINISHED = 0x04
    ERROR = 0xFF


class GilbarcoPumpController:
    """Controlador para comunicación con dispensadores Gilbarco"""

    # Constantes del protocolo
    DLE = 0x10  # Data Link Escape
    STX = 0x02  # Start of Text
    ETX = 0x03  # End of Text
    ACK = 0x06  # Acknowledge
    NAK = 0x15  # Negative Acknowledge

    def __init__(self, port: str, baudrate: int = 9600, timeout: float = 2.0):
        """
        Inicializar controlador de bombas Gilbarco

        Args:
            port: Puerto COM (ejemplo: 'COM1', 'COM2', '/dev/ttyS0')
            baudrate: Velocidad de comunicación (por defecto 9600)
            timeout: Timeout de lectura en segundos
        """
        self.port = port
        self.baudrate = baudrate
        self.timeout = timeout
        self.serial_connection: Optional[serial.Serial] = None
        self.debug = True

    def connect(self) -> bool:
        """
        Establecer conexión con el puerto serial

        Returns:
            True si la conexión fue exitosa, False en caso contrario
        """
        try:
            self.serial_connection = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=self.timeout
            )

            if self.debug:
                print(f"✓ Conectado a {self.port} @ {self.baudrate} baud")

            # Limpiar buffers
            self.serial_connection.reset_input_buffer()
            self.serial_connection.reset_output_buffer()

            return True

        except serial.SerialException as e:
            print(f"✗ Error al conectar: {e}")
            return False

    def disconnect(self):
        """Cerrar conexión serial"""
        if self.serial_connection and self.serial_connection.is_open:
            self.serial_connection.close()
            if self.debug:
                print(f"✓ Desconectado de {self.port}")

    def calculate_checksum(self, data: bytes) -> int:
        """
        Calcular checksum del mensaje

        Args:
            data: Datos para calcular checksum

        Returns:
            Checksum calculado (XOR de todos los bytes)
        """
        checksum = 0
        for byte in data:
            checksum ^= byte
        return checksum

    def build_message(self, pump_address: int, command: int, data: bytes = b'') -> bytes:
        """
        Construir mensaje según protocolo Gilbarco Two-Wire

        Formato del mensaje:
        DLE STX [ADDRESS] [COMMAND] [LENGTH] [DATA] [CHECKSUM] DLE ETX

        Args:
            pump_address: Dirección de la bomba (1-16)
            command: Comando a enviar
            data: Datos adicionales del comando

        Returns:
            Mensaje completo formateado
        """
        # Header
        message = bytearray()
        message.append(self.DLE)
        message.append(self.STX)

        # Address (1-16)
        message.append(pump_address & 0xFF)

        # Command
        message.append(command & 0xFF)

        # Length
        data_length = len(data)
        message.append(data_length & 0xFF)

        # Data
        if data:
            message.extend(data)

        # Checksum (XOR de todos los bytes después de DLE STX)
        checksum_data = message[2:]  # Desde ADDRESS hasta el final
        checksum = self.calculate_checksum(checksum_data)
        message.append(checksum)

        # Trailer
        message.append(self.DLE)
        message.append(self.ETX)

        return bytes(message)

    def send_message(self, message: bytes) -> bool:
        """
        Enviar mensaje por el puerto serial

        Args:
            message: Mensaje a enviar

        Returns:
            True si se envió correctamente
        """
        if not self.serial_connection or not self.serial_connection.is_open:
            print("✗ Error: Puerto serial no conectado")
            return False

        try:
            self.serial_connection.write(message)

            if self.debug:
                print(f"→ TX: {message.hex(' ').upper()}")

            return True

        except serial.SerialException as e:
            print(f"✗ Error al enviar: {e}")
            return False

    def receive_message(self, max_length: int = 256) -> Optional[bytes]:
        """
        Recibir mensaje del puerto serial

        Args:
            max_length: Longitud máxima del mensaje

        Returns:
            Mensaje recibido o None si hay error
        """
        if not self.serial_connection or not self.serial_connection.is_open:
            print("✗ Error: Puerto serial no conectado")
            return None

        try:
            # Buscar inicio del mensaje (DLE STX)
            response = bytearray()
            found_start = False

            start_time = time.time()
            while (time.time() - start_time) < self.timeout:
                if self.serial_connection.in_waiting > 0:
                    byte = self.serial_connection.read(1)
                    response.append(byte[0])

                    # Buscar secuencia DLE STX
                    if len(response) >= 2:
                        if response[-2] == self.DLE and response[-1] == self.STX:
                            found_start = True
                            response = bytearray([self.DLE, self.STX])
                            break

                time.sleep(0.01)

            if not found_start:
                if self.debug:
                    print("✗ No se recibió inicio de mensaje")
                return None

            # Leer hasta encontrar DLE ETX
            while len(response) < max_length:
                if self.serial_connection.in_waiting > 0:
                    byte = self.serial_connection.read(1)
                    response.append(byte[0])

                    # Verificar fin del mensaje
                    if len(response) >= 4:
                        if response[-2] == self.DLE and response[-1] == self.ETX:
                            break
                else:
                    time.sleep(0.01)

            if self.debug:
                print(f"← RX: {bytes(response).hex(' ').upper()}")

            return bytes(response)

        except serial.SerialException as e:
            print(f"✗ Error al recibir: {e}")
            return None

    def parse_response(self, response: bytes) -> Optional[dict]:
        """
        Parsear respuesta del dispensador

        Args:
            response: Respuesta recibida

        Returns:
            Diccionario con los datos parseados o None si hay error
        """
        if not response or len(response) < 8:
            return None

        # Verificar estructura básica: DLE STX ... DLE ETX
        if response[0] != self.DLE or response[1] != self.STX:
            return None
        if response[-2] != self.DLE or response[-1] != self.ETX:
            return None

        # Extraer campos
        address = response[2]
        command = response[3]
        length = response[4]
        data = response[5:5+length]
        checksum_received = response[5+length]

        # Verificar checksum
        checksum_data = response[2:5+length]
        checksum_calculated = self.calculate_checksum(checksum_data)

        if checksum_calculated != checksum_received:
            print(f"✗ Error de checksum: esperado {checksum_calculated:02X}, recibido {checksum_received:02X}")
            return None

        return {
            'address': address,
            'command': command,
            'length': length,
            'data': data,
            'checksum_ok': True
        }

    # ========== COMANDOS ESPECÍFICOS ==========

    def request_version(self, pump_address: int = 1) -> Optional[dict]:
        """
        Solicitar versión del firmware de la bomba

        Args:
            pump_address: Dirección de la bomba (1-16)

        Returns:
            Respuesta parseada con información de versión
        """
        message = self.build_message(pump_address, GilbarcoCommands.VERSION_REQUEST)

        if self.send_message(message):
            response = self.receive_message()
            if response:
                return self.parse_response(response)

        return None

    def request_status(self, pump_address: int = 1) -> Optional[dict]:
        """
        Solicitar estado actual de la bomba

        Args:
            pump_address: Dirección de la bomba

        Returns:
            Diccionario con estado de la bomba
        """
        message = self.build_message(pump_address, GilbarcoCommands.STATUS_REQUEST)

        if self.send_message(message):
            response = self.receive_message()
            if response:
                parsed = self.parse_response(response)
                if parsed and len(parsed['data']) > 0:
                    # Primer byte del data contiene el estado
                    parsed['pump_status'] = PumpStatus(parsed['data'][0])
                return parsed

        return None

    def authorize_pump(self, pump_address: int, preset_amount: float = 0,
                      preset_volume: float = 0, price_level: int = 1) -> bool:
        """
        Autorizar bomba para despachar

        Args:
            pump_address: Dirección de la bomba
            preset_amount: Monto preset (0 = sin límite)
            preset_volume: Volumen preset en litros (0 = sin límite)
            price_level: Nivel de precio (1-4)

        Returns:
            True si se autorizó correctamente
        """
        # Construir datos del comando
        # Formato: [PRESET_TYPE] [PRICE_LEVEL] [AMOUNT_HIGH] [AMOUNT_LOW] [VOLUME_HIGH] [VOLUME_LOW]
        data = bytearray()

        # Tipo de preset (0=sin preset, 1=monto, 2=volumen, 3=ambos)
        preset_type = 0
        if preset_amount > 0:
            preset_type |= 1
        if preset_volume > 0:
            preset_type |= 2

        data.append(preset_type)
        data.append(price_level & 0xFF)

        # Monto en centavos (4 bytes)
        amount_cents = int(preset_amount * 100)
        data.extend(struct.pack('>I', amount_cents))

        # Volumen en décimas de litro (4 bytes)
        volume_tenths = int(preset_volume * 10)
        data.extend(struct.pack('>I', volume_tenths))

        message = self.build_message(pump_address, GilbarcoCommands.AUTHORIZE_PUMP, bytes(data))

        if self.send_message(message):
            response = self.receive_message()
            if response:
                parsed = self.parse_response(response)
                return parsed is not None and parsed.get('checksum_ok', False)

        return False

    def stop_pump(self, pump_address: int) -> bool:
        """
        Detener bomba en operación

        Args:
            pump_address: Dirección de la bomba

        Returns:
            True si se detuvo correctamente
        """
        message = self.build_message(pump_address, GilbarcoCommands.STOP_PUMP)

        if self.send_message(message):
            response = self.receive_message()
            if response:
                parsed = self.parse_response(response)
                return parsed is not None

        return False

    def reset_pump(self, pump_address: int) -> bool:
        """
        Resetear bomba después de una transacción

        Args:
            pump_address: Dirección de la bomba

        Returns:
            True si se reseteó correctamente
        """
        message = self.build_message(pump_address, GilbarcoCommands.RESET_PUMP)

        if self.send_message(message):
            response = self.receive_message()
            if response:
                parsed = self.parse_response(response)
                return parsed is not None

        return False

    def read_totalizers(self, pump_address: int) -> Optional[dict]:
        """
        Leer totalizadores de la bomba

        Args:
            pump_address: Dirección de la bomba

        Returns:
            Diccionario con totalizadores
        """
        message = self.build_message(pump_address, GilbarcoCommands.READ_TOTALIZERS)

        if self.send_message(message):
            response = self.receive_message()
            if response:
                parsed = self.parse_response(response)
                if parsed and len(parsed['data']) >= 8:
                    # Parsear totalizadores (formato depende del dispensador)
                    total_volume = struct.unpack('>I', parsed['data'][0:4])[0] / 10.0  # En litros
                    total_amount = struct.unpack('>I', parsed['data'][4:8])[0] / 100.0  # En pesos

                    parsed['total_volume_liters'] = total_volume
                    parsed['total_amount'] = total_amount

                return parsed

        return None


def main():
    """Función principal de ejemplo"""
    print("=" * 60)
    print("GILBARCO PUMP CONTROLLER - Sistema de Control")
    print("=" * 60)
    print()

    # Configurar puerto COM
    port = input("Ingrese puerto COM (ej: COM1, COM2): ").strip()
    if not port:
        port = "COM1"  # Puerto por defecto

    print(f"\nIntentando conectar a {port}...")

    # Crear controlador
    controller = GilbarcoPumpController(port=port, baudrate=9600, timeout=2.0)

    # Conectar
    if not controller.connect():
        print("\n✗ No se pudo conectar al puerto serial")
        print("  Verifique:")
        print("  - Que el puerto COM existe")
        print("  - Que no esté siendo usado por otro programa")
        print("  - Que el cable esté conectado correctamente")
        return

    try:
        print("\n" + "=" * 60)
        print("MENÚ DE COMANDOS")
        print("=" * 60)

        while True:
            print("\n1. Solicitar versión de bomba")
            print("2. Solicitar estado de bomba")
            print("3. Autorizar bomba")
            print("4. Detener bomba")
            print("5. Reset bomba")
            print("6. Leer totalizadores")
            print("7. Monitoreo continuo de estado")
            print("0. Salir")

            opcion = input("\nSeleccione opción: ").strip()

            if opcion == "0":
                break

            if opcion in ["1", "2", "3", "4", "5", "6", "7"]:
                pump_address = int(input("Dirección de bomba (1-16): ") or "1")

                if opcion == "1":
                    print("\n→ Solicitando versión...")
                    result = controller.request_version(pump_address)
                    if result:
                        print(f"✓ Respuesta recibida: {result}")
                    else:
                        print("✗ No se recibió respuesta")

                elif opcion == "2":
                    print("\n→ Solicitando estado...")
                    result = controller.request_status(pump_address)
                    if result:
                        print(f"✓ Estado: {result}")
                    else:
                        print("✗ No se recibió respuesta")

                elif opcion == "3":
                    preset_amount = float(input("Monto preset (0=sin límite): ") or "0")
                    preset_volume = float(input("Volumen preset en litros (0=sin límite): ") or "0")

                    print("\n→ Autorizando bomba...")
                    if controller.authorize_pump(pump_address, preset_amount, preset_volume):
                        print("✓ Bomba autorizada")
                    else:
                        print("✗ Error al autorizar")

                elif opcion == "4":
                    print("\n→ Deteniendo bomba...")
                    if controller.stop_pump(pump_address):
                        print("✓ Bomba detenida")
                    else:
                        print("✗ Error al detener")

                elif opcion == "5":
                    print("\n→ Reseteando bomba...")
                    if controller.reset_pump(pump_address):
                        print("✓ Bomba reseteada")
                    else:
                        print("✗ Error al resetear")

                elif opcion == "6":
                    print("\n→ Leyendo totalizadores...")
                    result = controller.read_totalizers(pump_address)
                    if result:
                        print(f"✓ Totalizadores:")
                        print(f"  - Volumen total: {result.get('total_volume_liters', 0):.2f} L")
                        print(f"  - Monto total: ${result.get('total_amount', 0):.2f}")
                    else:
                        print("✗ No se recibió respuesta")

                elif opcion == "7":
                    print("\n→ Monitoreo continuo (Ctrl+C para detener)...")
                    try:
                        while True:
                            result = controller.request_status(pump_address)
                            if result:
                                status = result.get('pump_status', 'DESCONOCIDO')
                                print(f"  [{time.strftime('%H:%M:%S')}] Bomba {pump_address}: {status}")
                            time.sleep(2)
                    except KeyboardInterrupt:
                        print("\n✓ Monitoreo detenido")

    finally:
        # Desconectar
        controller.disconnect()
        print("\n✓ Programa finalizado")


if __name__ == "__main__":
    main()
