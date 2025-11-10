#!/usr/bin/env python3
"""
Veeder-Root TLS-300/350 Tank Controller
Sistema de Monitoreo de Tanques de Combustible

Basado en ingeniería inversa de TankService.exe (CEM-44)
Implementa protocolo Veeder-Root para comunicación con ATG (Automatic Tank Gauge)

Autor: Claude Code (Anthropic)
Fecha: 2025-11-10
Licencia: MIT
"""

import serial
import time
import logging
import struct
from typing import Optional, Dict, List, Tuple
from dataclasses import dataclass
from enum import Enum
import re


# Configuración de logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)


class VeederRootModel(Enum):
    """Modelos de ATG Veeder-Root soportados"""
    TLS_300 = "TLS-300"
    TLS_350 = "TLS-350"
    TLS_450 = "TLS-450"


class AlarmCategory(Enum):
    """Categorías de alarmas del sistema"""
    NORMAL = 0
    WARNING = 1
    ALARM = 2
    CRITICAL = 3


@dataclass
class TankInventory:
    """Inventario de un tanque"""
    tank_number: int
    gross_volume: float  # Volumen bruto (litros)
    tc_volume: float  # Volumen compensado por temperatura
    ullage: float  # Espacio vacío
    height: float  # Altura del producto (cm)
    water_height: float  # Altura del agua (cm)
    water_volume: float  # Volumen de agua (litros)
    temperature: float  # Temperatura (°C)
    product_code: int
    product_label: str
    timestamp: str

    def __str__(self):
        return (f"Tank [{self.tank_number}]: "
                f"VolumenBruto [{self.gross_volume:.2f}L] - "
                f"VolumenNeto [{self.tc_volume:.2f}L] - "
                f"AlturaProducto [{self.height:.0f}cm] - "
                f"Temperatura [{self.temperature:.1f}°C] - "
                f"AlturaAgua [{self.water_height:.0f}cm] - "
                f"WaterVol [{self.water_volume:.2f}L]")


@dataclass
class TankDelivery:
    """Entrega de combustible a un tanque"""
    tank_number: int
    delivery_number: int
    start_time: str
    end_time: str
    starting_volume: float
    ending_volume: float
    starting_tc_volume: float
    ending_tc_volume: float
    starting_height: float
    ending_height: float
    starting_temperature: float
    ending_temperature: float
    volume_delivered: float

    def __str__(self):
        return (f"Delivery Tank [{self.tank_number}]: "
                f"Delivered [{self.volume_delivered:.2f}L] - "
                f"Start [{self.starting_volume:.2f}L] → "
                f"End [{self.ending_volume:.2f}L]")


@dataclass
class TankAlarm:
    """Alarma de tanque"""
    tank_number: int
    alarm_type: str
    alarm_category: AlarmCategory
    alarm_code: int
    timestamp: str
    is_active: bool

    def __str__(self):
        status = "ACTIVE" if self.is_active else "CLEARED"
        return (f"Alarm Tank [{self.tank_number}]: "
                f"{self.alarm_type} - {self.alarm_category.name} - {status}")


@dataclass
class TankStatus:
    """Estado de un tanque"""
    tank_number: int
    status_code: int
    is_manifolded: bool  # Tanque manifoldeado
    high_level: float
    max_volume: float
    alarms: List[str]
    timestamp: str


@dataclass
class ReconciliationReport:
    """Reporte de reconciliación"""
    report_type: str  # "DAILY" o "SHIFT"
    tank_number: int
    start_time: str
    end_time: str
    starting_inventory: float
    ending_inventory: float
    deliveries: float
    sales: float
    calculated_inventory: float
    actual_inventory: float
    variance: float
    timestamp: str


class VeederRootProtocol:
    """
    Implementación del protocolo Veeder-Root para TLS-300/350

    Características:
    - Baudrate: 9600 bps
    - Delimitador: ETX (0x03)
    - Checksum: Propietario Veeder-Root
    - Comandos: ASCII text
    """

    # Caracteres de control
    CTRL_A = 0x01  # Start of heading (SOH)
    ETX = 0x03     # End of text
    ACK = 0x06     # Acknowledgment
    NAK = 0x15     # Negative acknowledgment

    # Baudrate estándar (confirmado 3 veces en código)
    BAUDRATE = 9600

    # Timeouts (en segundos)
    READ_TIMEOUT = 2.0
    WRITE_TIMEOUT = 1.0

    # Retries
    MAX_RETRIES = 3

    def __init__(self):
        self.last_command = ""
        self.last_response = ""

    @staticmethod
    def calculate_checksum(data: bytes) -> bytes:
        """
        Calcula checksum Veeder-Root (algoritmo propietario)

        NOTA: Este es un algoritmo estimado basado en análisis.
        Puede requerir ajuste basado en captura de tráfico serial real.

        El algoritmo real podría ser:
        - XOR simple
        - Suma con complemento
        - Otro algoritmo propietario

        Args:
            data: Datos para calcular checksum

        Returns:
            Checksum como bytes (2 caracteres ASCII hex)
        """
        # Implementación estimada: XOR de todos los bytes
        checksum = 0
        for byte in data:
            checksum ^= byte

        # Convertir a ASCII hex (2 caracteres)
        return f"{checksum:02X}".encode('ascii')

    @staticmethod
    def build_command(command: str) -> bytes:
        """
        Construye un comando Veeder-Root completo

        Formato estimado:
        ^A + COMMAND + ETX + CHECKSUM

        Args:
            command: Comando ASCII (ej: "I20100")

        Returns:
            Comando completo como bytes
        """
        # Construir frame sin checksum
        frame = bytes([VeederRootProtocol.CTRL_A]) + command.encode('ascii')

        # Calcular checksum del comando (sin ^A)
        checksum = VeederRootProtocol.calculate_checksum(command.encode('ascii'))

        # Frame completo: ^A + COMMAND + CHECKSUM + ETX
        full_frame = frame + checksum + bytes([VeederRootProtocol.ETX])

        return full_frame

    @staticmethod
    def parse_response(response: bytes) -> Tuple[bool, str, str]:
        """
        Parsea respuesta del ATG Veeder-Root

        Args:
            response: Respuesta cruda del dispositivo

        Returns:
            Tupla (válido, datos, error)
        """
        if not response:
            return False, "", "Empty response"

        # Verificar ETX
        if response[-1] != VeederRootProtocol.ETX:
            return False, "", f"Missing ETX in response [{response.hex()}]"

        # Remover ETX
        data = response[:-1]

        # Verificar si es ACK o NAK
        if data == bytes([VeederRootProtocol.ACK]):
            return True, "ACK", ""

        if data == bytes([VeederRootProtocol.NAK]):
            return False, "", "NAK received"

        # Extraer checksum (últimos 2 bytes antes de ETX)
        if len(data) < 2:
            return False, "", "Response too short"

        received_checksum = data[-2:]
        payload = data[:-2]

        # Verificar checksum
        calculated_checksum = VeederRootProtocol.calculate_checksum(payload)

        if received_checksum != calculated_checksum:
            logger.warning(f"Checksum mismatch: received {received_checksum.hex()}, "
                         f"calculated {calculated_checksum.hex()}")
            # NOTA: En producción, esto podría ser un error fatal
            # Por ahora solo advertimos y continuamos

        try:
            # Decodificar payload a ASCII
            data_str = payload.decode('ascii')
            return True, data_str, ""
        except UnicodeDecodeError as e:
            return False, "", f"Unicode decode error: {str(e)}"


class VeederRootTankController:
    """
    Controlador principal para sistema Veeder-Root TLS-300/350

    Implementa comunicación serial y comandos de alto nivel para:
    - Lectura de inventario
    - Monitoreo de entregas
    - Consulta de alarmas
    - Reportes de reconciliación
    - Configuración de tanques
    """

    def __init__(self,
                 port: str,
                 model: VeederRootModel = VeederRootModel.TLS_350,
                 baudrate: int = VeederRootProtocol.BAUDRATE):
        """
        Inicializa controlador de tanques Veeder-Root

        Args:
            port: Puerto serie (ej: "COM2", "/dev/ttyUSB0")
            model: Modelo de ATG
            baudrate: Velocidad de comunicación (default: 9600)
        """
        self.port = port
        self.model = model
        self.baudrate = baudrate
        self.serial: Optional[serial.Serial] = None
        self.protocol = VeederRootProtocol()

        logger.info(f"START {model.value} AT PORT [{port}] SET [{baudrate}] BAUDS")

    def open(self) -> bool:
        """
        Abre puerto serial y configura comunicación

        Returns:
            True si exitoso
        """
        try:
            self.serial = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=VeederRootProtocol.READ_TIMEOUT,
                write_timeout=VeederRootProtocol.WRITE_TIMEOUT
            )

            # Limpiar buffers
            self.serial.reset_input_buffer()
            self.serial.reset_output_buffer()

            logger.info(f"COM [{self.port}] BAUD RATE [{self.baudrate}] - Serial port opened")
            return True

        except serial.SerialException as e:
            logger.error(f"Error opening serial port [{self.port}]: {str(e)}")
            return False

    def close(self):
        """Cierra puerto serial"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            logger.info(f"COM [{self.port}] - Serial port closed")

    def send_command(self, command: str) -> Tuple[bool, str]:
        """
        Envía comando al ATG y espera respuesta

        Args:
            command: Comando ASCII (ej: "I20100")

        Returns:
            Tupla (éxito, datos/error)
        """
        if not self.serial or not self.serial.is_open:
            return False, "Serial port not open"

        # Construir comando completo
        frame = self.protocol.build_command(command)

        logger.debug(f"TX: {frame.hex()} [{command}]")

        for attempt in range(VeederRootProtocol.MAX_RETRIES):
            try:
                # Limpiar buffer de entrada
                self.serial.reset_input_buffer()

                # Enviar comando
                bytes_written = self.serial.write(frame)

                if bytes_written != len(frame):
                    logger.warning(f"Only {bytes_written}/{len(frame)} bytes written")

                # Esperar respuesta
                response = self._read_until_etx()

                if not response:
                    logger.warning(f"MESSAGE IN PORT [{self.port}] TIMEOUT (attempt {attempt + 1})")
                    continue

                logger.debug(f"RX: {response.hex()}")

                # Parsear respuesta
                valid, data, error = self.protocol.parse_response(response)

                if valid:
                    self.protocol.last_command = command
                    self.protocol.last_response = data
                    return True, data
                else:
                    logger.error(f"Error parsing response: {error}")
                    if attempt < VeederRootProtocol.MAX_RETRIES - 1:
                        time.sleep(0.1)
                        continue
                    return False, error

            except serial.SerialException as e:
                logger.error(f"Serial error: {str(e)}")
                if attempt < VeederRootProtocol.MAX_RETRIES - 1:
                    time.sleep(0.1)
                    continue
                return False, str(e)

        return False, f"Max retries ({VeederRootProtocol.MAX_RETRIES}) exceeded"

    def _read_until_etx(self, max_bytes: int = 4096) -> bytes:
        """
        Lee del puerto serial hasta encontrar ETX

        Args:
            max_bytes: Máximo de bytes a leer

        Returns:
            Datos leídos incluyendo ETX
        """
        buffer = bytearray()

        start_time = time.time()
        timeout = VeederRootProtocol.READ_TIMEOUT

        while len(buffer) < max_bytes:
            if time.time() - start_time > timeout:
                logger.warning("Timeout reading response")
                break

            if self.serial.in_waiting > 0:
                byte = self.serial.read(1)
                if byte:
                    buffer.extend(byte)

                    # Verificar si encontramos ETX
                    if byte[0] == VeederRootProtocol.ETX:
                        return bytes(buffer)
            else:
                time.sleep(0.01)  # Pequeña pausa para no saturar CPU

        return bytes(buffer)

    # ========== COMANDOS DE INVENTARIO ==========

    def read_inventory_all_tanks(self) -> List[TankInventory]:
        """
        Lee inventario de todos los tanques

        Comando: I20100

        Returns:
            Lista de inventarios de tanques
        """
        success, data = self.send_command("I20100")

        if not success:
            logger.error(f"Error reading inventory: {data}")
            return []

        return self._parse_inventory_response(data)

    def read_inventory_tank(self, tank_number: int) -> Optional[TankInventory]:
        """
        Lee inventario de un tanque específico

        Comando: I201{XX} donde XX es el número de tanque (01-99)

        Args:
            tank_number: Número de tanque (1-99)

        Returns:
            Inventario del tanque o None si error
        """
        if not 1 <= tank_number <= 99:
            logger.error(f"Invalid tank number: {tank_number}")
            return None

        command = f"I201{tank_number:02d}"
        success, data = self.send_command(command)

        if not success:
            logger.error(f"Error reading inventory tank [{tank_number}]: {data}")
            return None

        inventories = self._parse_inventory_response(data)

        return inventories[0] if inventories else None

    def _parse_inventory_response(self, data: str) -> List[TankInventory]:
        """
        Parsea respuesta de inventario

        NOTA: El formato exacto depende del modelo TLS y configuración.
        Este es un parser genérico que debe ajustarse según capturas reales.

        Formato estimado (TLS-350):
        Líneas separadas por CR/LF, campos separados por espacios o tabs

        Args:
            data: Respuesta ASCII del ATG

        Returns:
            Lista de inventarios parseados
        """
        inventories = []

        # Split por líneas
        lines = data.strip().split('\n')

        for line in lines:
            line = line.strip()
            if not line:
                continue

            # Parsear línea de inventario
            # Formato estimado: TANK PRODUCT HEIGHT VOLUME TC_VOL TEMP WATER_HEIGHT WATER_VOL
            parts = line.split()

            if len(parts) < 8:
                logger.warning(f"Invalid inventory line: {line}")
                continue

            try:
                inventory = TankInventory(
                    tank_number=int(parts[0]),
                    product_code=int(parts[1]) if parts[1].isdigit() else 0,
                    product_label=parts[1] if not parts[1].isdigit() else "UNKNOWN",
                    height=float(parts[2]),
                    gross_volume=float(parts[3]),
                    tc_volume=float(parts[4]),
                    temperature=float(parts[5]),
                    water_height=float(parts[6]),
                    water_volume=float(parts[7]),
                    ullage=0.0,  # Calcular si se conoce capacidad del tanque
                    timestamp=time.strftime("%Y-%m-%d %H:%M:%S")
                )

                inventories.append(inventory)
                logger.info(str(inventory))

            except (ValueError, IndexError) as e:
                logger.error(f"Error parsing inventory line [{line}]: {str(e)}")
                continue

        return inventories

    # ========== COMANDOS DE ENTREGAS ==========

    def read_deliveries_all_tanks(self) -> List[TankDelivery]:
        """
        Lee entregas de todos los tanques

        Comando: I30100

        Returns:
            Lista de entregas
        """
        success, data = self.send_command("I30100")

        if not success:
            logger.error(f"Error reading deliveries: {data}")
            return []

        return self._parse_deliveries_response(data)

    def read_deliveries_tank(self, tank_number: int) -> List[TankDelivery]:
        """
        Lee entregas de un tanque específico

        Comando: I301{XX}

        Args:
            tank_number: Número de tanque (1-99)

        Returns:
            Lista de entregas del tanque
        """
        if not 1 <= tank_number <= 99:
            logger.error(f"Invalid tank number: {tank_number}")
            return []

        command = f"I301{tank_number:02d}"
        success, data = self.send_command(command)

        if not success:
            logger.error(f"Error reading deliveries tank [{tank_number}]: {data}")
            return []

        return self._parse_deliveries_response(data)

    def _parse_deliveries_response(self, data: str) -> List[TankDelivery]:
        """Parsea respuesta de entregas"""
        deliveries = []

        lines = data.strip().split('\n')

        for line in lines:
            line = line.strip()
            if not line:
                continue

            parts = line.split()

            if len(parts) < 10:
                continue

            try:
                starting_vol = float(parts[3])
                ending_vol = float(parts[4])

                delivery = TankDelivery(
                    tank_number=int(parts[0]),
                    delivery_number=int(parts[1]),
                    start_time=parts[2] if len(parts) > 2 else "",
                    end_time="",
                    starting_volume=starting_vol,
                    ending_volume=ending_vol,
                    starting_tc_volume=float(parts[5]) if len(parts) > 5 else 0.0,
                    ending_tc_volume=float(parts[6]) if len(parts) > 6 else 0.0,
                    starting_height=float(parts[7]) if len(parts) > 7 else 0.0,
                    ending_height=float(parts[8]) if len(parts) > 8 else 0.0,
                    starting_temperature=float(parts[9]) if len(parts) > 9 else 0.0,
                    ending_temperature=float(parts[10]) if len(parts) > 10 else 0.0,
                    volume_delivered=ending_vol - starting_vol
                )

                deliveries.append(delivery)
                logger.info(f"NEW DELIVERY DETECTED IN TANK {delivery.tank_number}. "
                          f"Delivered [{delivery.volume_delivered:.2f}L]")

            except (ValueError, IndexError) as e:
                logger.error(f"Error parsing delivery line: {str(e)}")
                continue

        return deliveries

    # ========== COMANDOS DE ALARMAS ==========

    def read_alarms_active(self) -> List[TankAlarm]:
        """
        Lee alarmas activas de todos los tanques

        Comando: I40100

        Returns:
            Lista de alarmas activas
        """
        success, data = self.send_command("I40100")

        if not success:
            logger.error(f"Error reading alarms: {data}")
            return []

        return self._parse_alarms_response(data)

    def read_alarms_tank(self, tank_number: int) -> List[TankAlarm]:
        """
        Lee alarmas de un tanque específico

        Comando: I401{XX}

        Args:
            tank_number: Número de tanque (1-99)

        Returns:
            Lista de alarmas del tanque
        """
        if not 1 <= tank_number <= 99:
            logger.error(f"Invalid tank number: {tank_number}")
            return []

        command = f"I401{tank_number:02d}"
        success, data = self.send_command(command)

        if not success:
            logger.error(f"Error reading alarms tank [{tank_number}]: {data}")
            return []

        return self._parse_alarms_response(data)

    def _parse_alarms_response(self, data: str) -> List[TankAlarm]:
        """Parsea respuesta de alarmas"""
        alarms = []

        lines = data.strip().split('\n')

        for line in lines:
            line = line.strip()
            if not line:
                continue

            parts = line.split()

            if len(parts) < 4:
                continue

            try:
                alarm = TankAlarm(
                    tank_number=int(parts[0]),
                    alarm_code=int(parts[1]),
                    alarm_type=parts[2],
                    alarm_category=AlarmCategory(int(parts[3])) if parts[3].isdigit() else AlarmCategory.WARNING,
                    timestamp=time.strftime("%Y-%m-%d %H:%M:%S"),
                    is_active=True
                )

                alarms.append(alarm)
                logger.warning(str(alarm))

            except (ValueError, IndexError) as e:
                logger.error(f"Error parsing alarm line: {str(e)}")
                continue

        return alarms

    # ========== COMANDOS DE RECONCILIACIÓN ==========

    def read_reconciliation_daily(self) -> List[ReconciliationReport]:
        """
        Lee reporte de reconciliación diario

        Comando: I50100

        Returns:
            Lista de reportes de reconciliación
        """
        success, data = self.send_command("I50100")

        if not success:
            logger.error(f"Error reading daily reconciliation: {data}")
            return []

        return self._parse_reconciliation_response(data, "DAILY")

    def read_reconciliation_shift(self) -> List[ReconciliationReport]:
        """
        Lee reporte de reconciliación por turno

        Comando: I51100

        Returns:
            Lista de reportes de reconciliación
        """
        success, data = self.send_command("I51100")

        if not success:
            logger.error(f"Error reading shift reconciliation: {data}")
            return []

        return self._parse_reconciliation_response(data, "SHIFT")

    def _parse_reconciliation_response(self, data: str, report_type: str) -> List[ReconciliationReport]:
        """Parsea respuesta de reconciliación"""
        reports = []

        lines = data.strip().split('\n')

        for line in lines:
            line = line.strip()
            if not line:
                continue

            parts = line.split()

            if len(parts) < 8:
                continue

            try:
                starting_inv = float(parts[2])
                deliveries = float(parts[3])
                sales = float(parts[4])
                ending_inv = float(parts[5])

                calculated_inv = starting_inv + deliveries - sales
                variance = ending_inv - calculated_inv

                report = ReconciliationReport(
                    report_type=report_type,
                    tank_number=int(parts[0]),
                    start_time=parts[1] if len(parts) > 1 else "",
                    end_time="",
                    starting_inventory=starting_inv,
                    ending_inventory=ending_inv,
                    deliveries=deliveries,
                    sales=sales,
                    calculated_inventory=calculated_inv,
                    actual_inventory=ending_inv,
                    variance=variance,
                    timestamp=time.strftime("%Y-%m-%d %H:%M:%S")
                )

                reports.append(report)

                logger.info(f"Reconciliation Tank [{report.tank_number}]: "
                          f"Variance [{variance:.2f}L]")

            except (ValueError, IndexError) as e:
                logger.error(f"Error parsing reconciliation line: {str(e)}")
                continue

        return reports

    # ========== COMANDOS DE CONFIGURACIÓN ==========

    def read_system_configuration(self) -> Dict:
        """
        Lee configuración del sistema ATG

        Comando: I10100

        Returns:
            Diccionario con configuración del sistema
        """
        success, data = self.send_command("I10100")

        if not success:
            logger.error(f"Error reading system configuration: {data}")
            return {}

        return self._parse_configuration_response(data)

    def _parse_configuration_response(self, data: str) -> Dict:
        """Parsea respuesta de configuración"""
        config = {}

        lines = data.strip().split('\n')

        for line in lines:
            line = line.strip()
            if ':' in line:
                key, value = line.split(':', 1)
                config[key.strip()] = value.strip()

        return config

    # ========== UTILIDADES ==========

    def test_connection(self) -> bool:
        """
        Prueba conexión con ATG

        Returns:
            True si ATG responde correctamente
        """
        logger.info("Testing connection to ATG...")

        # Intentar leer configuración del sistema
        config = self.read_system_configuration()

        if config:
            logger.info("TEST BOARD OK - ATG responded successfully")
            return True
        else:
            logger.error("PUMP CONTROLLER NOT FOUND - ATG did not respond")
            return False

    def monitor_tanks_continuous(self, interval: int = 5):
        """
        Monitoreo continuo de tanques

        Args:
            interval: Intervalo entre lecturas en segundos
        """
        logger.info(f"Starting continuous tank monitoring (interval: {interval}s)")

        try:
            while True:
                # Leer inventario de todos los tanques
                inventories = self.read_inventory_all_tanks()

                # Verificar alarmas
                alarms = self.read_alarms_active()

                if alarms:
                    logger.warning(f"EW_TANKCONTROLTHREAD - {len(alarms)} active alarms")

                # Verificar nuevas entregas
                deliveries = self.read_deliveries_all_tanks()

                if deliveries:
                    logger.info(f"EW_TANKCONTROLTHREAD - {len(deliveries)} new deliveries")

                # Esperar intervalo
                time.sleep(interval)

        except KeyboardInterrupt:
            logger.info("VR_TANKCONTROLTHREAD - VEEDER-ROOT THREAD SHUTDOWN")


def main():
    """Función principal para testing"""
    import argparse

    parser = argparse.ArgumentParser(description='Veeder-Root Tank Controller')
    parser.add_argument('port', help='Serial port (e.g., COM2, /dev/ttyUSB0)')
    parser.add_argument('--baudrate', type=int, default=9600, help='Baudrate (default: 9600)')
    parser.add_argument('--model', choices=['TLS-300', 'TLS-350', 'TLS-450'],
                       default='TLS-350', help='ATG model')
    parser.add_argument('--tank', type=int, help='Read specific tank number')
    parser.add_argument('--monitor', action='store_true', help='Continuous monitoring mode')
    parser.add_argument('--interval', type=int, default=5, help='Monitoring interval in seconds')
    parser.add_argument('--debug', action='store_true', help='Enable debug logging')

    args = parser.parse_args()

    if args.debug:
        logger.setLevel(logging.DEBUG)

    # Determinar modelo
    model = VeederRootModel.TLS_350
    if args.model == 'TLS-300':
        model = VeederRootModel.TLS_300
    elif args.model == 'TLS-450':
        model = VeederRootModel.TLS_450

    # Crear controlador
    controller = VeederRootTankController(
        port=args.port,
        model=model,
        baudrate=args.baudrate
    )

    # Abrir conexión
    if not controller.open():
        logger.error("Failed to open serial port")
        return 1

    try:
        # Probar conexión
        if not controller.test_connection():
            logger.error("Failed to communicate with ATG")
            return 1

        if args.monitor:
            # Modo monitoreo continuo
            controller.monitor_tanks_continuous(interval=args.interval)
        elif args.tank:
            # Leer tanque específico
            logger.info(f"Reading tank {args.tank}...")

            inventory = controller.read_inventory_tank(args.tank)
            if inventory:
                print(f"\n{inventory}\n")

            deliveries = controller.read_deliveries_tank(args.tank)
            for delivery in deliveries:
                print(f"{delivery}\n")

            alarms = controller.read_alarms_tank(args.tank)
            for alarm in alarms:
                print(f"{alarm}\n")
        else:
            # Leer todos los tanques
            logger.info("Reading all tanks...")

            print("\n=== INVENTORIES ===")
            inventories = controller.read_inventory_all_tanks()
            for inv in inventories:
                print(inv)

            print("\n=== DELIVERIES ===")
            deliveries = controller.read_deliveries_all_tanks()
            for deliv in deliveries:
                print(deliv)

            print("\n=== ALARMS ===")
            alarms = controller.read_alarms_active()
            for alarm in alarms:
                print(alarm)

            print("\n=== RECONCILIATION (Daily) ===")
            recon_daily = controller.read_reconciliation_daily()
            for recon in recon_daily:
                print(f"Tank {recon.tank_number}: Variance {recon.variance:.2f}L")

        return 0

    except Exception as e:
        logger.error(f"Error: {str(e)}", exc_info=True)
        return 1

    finally:
        controller.close()


if __name__ == "__main__":
    import sys
    sys.exit(main())
