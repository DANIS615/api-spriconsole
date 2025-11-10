"""
SERIAL MONITOR - Monitor de tráfico serial
==========================================
Herramienta para monitorear y analizar comunicación serial
con dispensadores Gilbarco

Útil para:
- Espiar comunicación entre CEM-44 y dispensadores
- Aprender el protocolo real usado
- Debugging y análisis de tráfico
"""

import serial
import time
from datetime import datetime
from typing import Optional
import sys


class SerialMonitor:
    """Monitor de tráfico serial"""

    def __init__(self, port: str, baudrate: int = 9600, log_file: Optional[str] = None):
        """
        Inicializar monitor serial

        Args:
            port: Puerto COM a monitorear
            baudrate: Velocidad de comunicación
            log_file: Archivo para guardar log (opcional)
        """
        self.port = port
        self.baudrate = baudrate
        self.log_file = log_file
        self.serial_connection: Optional[serial.Serial] = None
        self.running = False

        # Estadísticas
        self.bytes_received = 0
        self.messages_count = 0
        self.start_time = None

    def connect(self) -> bool:
        """Conectar al puerto serial"""
        try:
            self.serial_connection = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=0.1
            )

            print(f"✓ Conectado a {self.port} @ {self.baudrate} baud")
            print(f"  - Data bits: 8")
            print(f"  - Parity: None")
            print(f"  - Stop bits: 1")
            print()

            return True

        except serial.SerialException as e:
            print(f"✗ Error al conectar: {e}")
            return False

    def disconnect(self):
        """Desconectar del puerto serial"""
        if self.serial_connection and self.serial_connection.is_open:
            self.serial_connection.close()
            print(f"\n✓ Desconectado de {self.port}")

    def log_message(self, message: str):
        """
        Guardar mensaje en archivo de log

        Args:
            message: Mensaje a guardar
        """
        if self.log_file:
            try:
                with open(self.log_file, 'a', encoding='utf-8') as f:
                    f.write(message + '\n')
            except Exception as e:
                print(f"✗ Error al escribir log: {e}")

    def format_hex(self, data: bytes, bytes_per_line: int = 16) -> str:
        """
        Formatear datos en hexadecimal estilo hexdump

        Args:
            data: Datos a formatear
            bytes_per_line: Bytes por línea

        Returns:
            String formateado
        """
        result = []
        for i in range(0, len(data), bytes_per_line):
            chunk = data[i:i + bytes_per_line]

            # Offset
            offset = f"{i:08X}"

            # Hexadecimal
            hex_part = ' '.join(f"{b:02X}" for b in chunk)
            hex_part = hex_part.ljust(bytes_per_line * 3 - 1)

            # ASCII
            ascii_part = ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk)

            result.append(f"{offset}  {hex_part}  |{ascii_part}|")

        return '\n'.join(result)

    def analyze_byte(self, byte: int) -> str:
        """
        Analizar significado de un byte según protocolo Gilbarco

        Args:
            byte: Byte a analizar

        Returns:
            Descripción del byte
        """
        special_chars = {
            0x10: "DLE (Data Link Escape)",
            0x02: "STX (Start of Text)",
            0x03: "ETX (End of Text)",
            0x06: "ACK (Acknowledge)",
            0x15: "NAK (Negative Acknowledge)",
            0x00: "NULL",
            0x0D: "CR (Carriage Return)",
            0x0A: "LF (Line Feed)"
        }

        if byte in special_chars:
            return special_chars[byte]
        elif 32 <= byte < 127:
            return f"'{chr(byte)}'"
        else:
            return f"0x{byte:02X}"

    def monitor(self, display_mode: str = 'hex'):
        """
        Monitorear tráfico serial

        Args:
            display_mode: Modo de visualización ('hex', 'ascii', 'both', 'raw')
        """
        if not self.serial_connection or not self.serial_connection.is_open:
            print("✗ Error: Puerto serial no conectado")
            return

        self.running = True
        self.start_time = time.time()

        print("=" * 80)
        print(f"MONITOREANDO {self.port} - Presione Ctrl+C para detener")
        print("=" * 80)
        print()

        buffer = bytearray()
        last_byte_time = time.time()
        message_timeout = 0.1  # 100ms sin datos = fin de mensaje

        try:
            while self.running:
                if self.serial_connection.in_waiting > 0:
                    # Leer datos disponibles
                    data = self.serial_connection.read(self.serial_connection.in_waiting)
                    buffer.extend(data)
                    self.bytes_received += len(data)
                    last_byte_time = time.time()

                # Si pasó el timeout y hay datos en buffer, procesar mensaje
                if len(buffer) > 0 and (time.time() - last_byte_time) > message_timeout:
                    self.process_message(bytes(buffer), display_mode)
                    buffer.clear()

                time.sleep(0.01)

        except KeyboardInterrupt:
            print("\n\n✓ Monitoreo detenido por usuario")

        finally:
            self.running = False
            self.show_statistics()

    def process_message(self, data: bytes, display_mode: str):
        """
        Procesar y mostrar mensaje recibido

        Args:
            data: Datos del mensaje
            display_mode: Modo de visualización
        """
        self.messages_count += 1

        timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]
        header = f"[{timestamp}] Mensaje #{self.messages_count} ({len(data)} bytes)"

        print("─" * 80)
        print(header)
        print("─" * 80)

        # Log a archivo
        log_text = f"{header}\n"

        if display_mode in ['hex', 'both']:
            hex_dump = self.format_hex(data)
            print(hex_dump)
            log_text += hex_dump + "\n"

        if display_mode in ['ascii', 'both']:
            ascii_text = ''.join(chr(b) if 32 <= b < 127 else '.' for b in data)
            print(f"\nASCII: {ascii_text}")
            log_text += f"ASCII: {ascii_text}\n"

        if display_mode == 'raw':
            raw_hex = ' '.join(f"{b:02X}" for b in data)
            print(raw_hex)
            log_text += raw_hex + "\n"

            # Análisis de bytes especiales
            print("\nAnálisis:")
            for i, byte in enumerate(data):
                analysis = self.analyze_byte(byte)
                if "(" in analysis:  # Es un carácter especial
                    print(f"  Byte[{i:3d}]: {analysis}")

        # Intentar detectar estructura Gilbarco
        if len(data) >= 4:
            if data[0] == 0x10 and data[1] == 0x02:  # DLE STX
                print("\n✓ Detectado: Inicio de mensaje Gilbarco (DLE STX)")
                if len(data) >= 5:
                    address = data[2]
                    command = data[3]
                    length = data[4]
                    print(f"  - Dirección: {address}")
                    print(f"  - Comando: 0x{command:02X}")
                    print(f"  - Longitud: {length}")

            if len(data) >= 2 and data[-2] == 0x10 and data[-1] == 0x03:  # DLE ETX
                print("✓ Detectado: Fin de mensaje Gilbarco (DLE ETX)")

        print()
        self.log_message(log_text)

    def show_statistics(self):
        """Mostrar estadísticas de monitoreo"""
        if self.start_time:
            elapsed = time.time() - self.start_time
            print("=" * 80)
            print("ESTADÍSTICAS")
            print("=" * 80)
            print(f"Tiempo de monitoreo: {elapsed:.2f} segundos")
            print(f"Bytes recibidos: {self.bytes_received}")
            print(f"Mensajes detectados: {self.messages_count}")
            if elapsed > 0:
                print(f"Velocidad promedio: {self.bytes_received / elapsed:.2f} bytes/seg")
            print()


def list_available_ports():
    """Listar puertos COM disponibles"""
    import serial.tools.list_ports

    print("Puertos COM disponibles:")
    print("-" * 60)

    ports = serial.tools.list_ports.comports()

    if not ports:
        print("  No se encontraron puertos COM")
        return []

    for i, port in enumerate(ports, 1):
        print(f"{i}. {port.device}")
        print(f"   Descripción: {port.description}")
        if port.manufacturer:
            print(f"   Fabricante: {port.manufacturer}")
        print()

    return [port.device for port in ports]


def main():
    """Función principal"""
    print("=" * 80)
    print("SERIAL MONITOR - Monitor de Tráfico Serial Gilbarco")
    print("=" * 80)
    print()

    # Listar puertos disponibles
    available_ports = list_available_ports()

    # Solicitar configuración
    if available_ports:
        port = input(f"Ingrese puerto COM [{available_ports[0]}]: ").strip()
        if not port:
            port = available_ports[0]
    else:
        port = input("Ingrese puerto COM (ej: COM1): ").strip()
        if not port:
            port = "COM1"

    baudrate = input("Velocidad en baudios [9600]: ").strip()
    baudrate = int(baudrate) if baudrate else 9600

    log_file = input("Archivo de log (Enter para no guardar): ").strip()
    if not log_file:
        log_file = None

    print("\nModo de visualización:")
    print("  1. Hexadecimal")
    print("  2. ASCII")
    print("  3. Ambos (Hex + ASCII)")
    print("  4. Raw con análisis")

    mode_option = input("Seleccione [4]: ").strip()
    mode_map = {
        '1': 'hex',
        '2': 'ascii',
        '3': 'both',
        '4': 'raw'
    }
    display_mode = mode_map.get(mode_option, 'raw')

    print()

    # Crear monitor
    monitor = SerialMonitor(port=port, baudrate=baudrate, log_file=log_file)

    # Conectar y monitorear
    if monitor.connect():
        monitor.monitor(display_mode=display_mode)
        monitor.disconnect()
    else:
        print("\n✗ No se pudo iniciar el monitoreo")
        print("  Verifique:")
        print("  - Que el puerto COM existe y está disponible")
        print("  - Que no esté siendo usado por otro programa")
        print("  - Permisos de acceso al puerto")


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"\n✗ Error fatal: {e}")
        import traceback
        traceback.print_exc()
