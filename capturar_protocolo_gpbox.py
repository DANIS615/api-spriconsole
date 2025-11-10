#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
CAPTURADOR DE PROTOCOLO GPBOX
===============================
Monitorea el puerto serial COM1 y captura TODO el tráfico entre:
- Smart Ship Factory <-> GPBox <-> Bombas

Este script se ejecuta en paralelo mientras usas Smart Ship Factory.
Captura cada comando y respuesta para reverse engineering del protocolo.

Uso:
    1. Ejecutar este script
    2. Abrir Smart Ship Factory
    3. Realizar operaciones (autorizar, leer estado, etc.)
    4. Este script guarda todo en logs con timestamps
"""

import serial
import serial.tools.list_ports
import time
import sys
from datetime import datetime
import os

class GPBoxProtocolCapture:
    """Capturador de protocolo GPBox"""

    def __init__(self, port='COM1', baudrate=115200):
        self.port = port
        self.baudrate = baudrate
        self.serial = None
        self.log_file = None
        self.capture_dir = "capturas_protocolo"

    def crear_directorio_capturas(self):
        """Crear directorio para guardar capturas"""
        if not os.path.exists(self.capture_dir):
            os.makedirs(self.capture_dir)
            print(f"[+] Directorio creado: {self.capture_dir}")

    def iniciar_log(self):
        """Iniciar archivo de log"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        log_filename = os.path.join(
            self.capture_dir,
            f"captura_gpbox_{timestamp}.log"
        )

        self.log_file = open(log_filename, 'w', encoding='utf-8')
        self.log_file.write("=" * 80 + "\n")
        self.log_file.write("CAPTURA DE PROTOCOLO GPBOX\n")
        self.log_file.write(f"Fecha: {datetime.now().isoformat()}\n")
        self.log_file.write(f"Puerto: {self.port}\n")
        self.log_file.write(f"Baudrate: {self.baudrate}\n")
        self.log_file.write("=" * 80 + "\n\n")
        self.log_file.flush()

        print(f"[+] Log iniciado: {log_filename}")
        return log_filename

    def conectar(self):
        """Conectar al puerto serial"""
        print(f"\n[*] Conectando a {self.port} @ {self.baudrate} bps...")

        try:
            self.serial = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=0.1  # Non-blocking
            )

            print(f"[+] Conectado exitosamente")
            return True

        except serial.SerialException as e:
            print(f"[!] Error al conectar: {e}")
            return False

    def formato_hex(self, data):
        """Formatear datos como hexadecimal legible"""
        hex_str = ' '.join(f'{b:02X}' for b in data)
        return hex_str

    def formato_ascii(self, data):
        """Intentar mostrar como ASCII (reemplazar no-imprimibles)"""
        ascii_str = ''
        for b in data:
            if 32 <= b <= 126:  # Caracteres imprimibles
                ascii_str += chr(b)
            else:
                ascii_str += f'<{b:02X}>'
        return ascii_str

    def analizar_frame(self, data):
        """Análisis básico del frame"""
        analisis = []

        # Verificar delimitadores comunes
        if len(data) > 0:
            if data[0] == 0x10:
                analisis.append("DLE inicial (Gilbarco)")
            elif data[0] == 0x02:
                analisis.append("STX")
            elif data[0] == 0x01:
                analisis.append("SOH")

        if len(data) > 1:
            if data[-1] == 0x03:
                analisis.append("ETX final")

        # Buscar patrones
        if 0x10 in data and 0x02 in data:
            analisis.append("Posible frame Gilbarco")

        # Detectar dirección de bomba (típicamente 0x31-0x36 = '1'-'6')
        bombas_detectadas = []
        for i, b in enumerate(data):
            if 0x31 <= b <= 0x36:  # '1' to '6'
                bombas_detectadas.append(f"Bomba {chr(b)} en posición {i}")

        if bombas_detectadas:
            analisis.extend(bombas_detectadas)

        return analisis

    def log_data(self, direccion, data):
        """Registrar datos capturados"""
        timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]

        # Preparar información
        hex_data = self.formato_hex(data)
        ascii_data = self.formato_ascii(data)
        analisis = self.analizar_frame(data)

        # Log a archivo
        self.log_file.write(f"[{timestamp}] {direccion}\n")
        self.log_file.write(f"  HEX:   {hex_data}\n")
        self.log_file.write(f"  ASCII: {ascii_data}\n")
        self.log_file.write(f"  Bytes: {len(data)}\n")

        if analisis:
            self.log_file.write(f"  Análisis:\n")
            for item in analisis:
                self.log_file.write(f"    - {item}\n")

        self.log_file.write("\n")
        self.log_file.flush()

        # Mostrar en consola (más compacto)
        print(f"[{timestamp}] {direccion:4s} ({len(data):3d} bytes): {hex_data[:60]}{'...' if len(hex_data) > 60 else ''}")

        if analisis:
            for item in analisis[:2]:  # Solo primeros 2
                print(f"           └─ {item}")

    def capturar(self, duracion=None):
        """
        Capturar tráfico serial

        Args:
            duracion: Segundos a capturar (None = infinito)
        """
        print("\n" + "=" * 80)
        print("CAPTURA DE PROTOCOLO GPBOX INICIADA")
        print("=" * 80)
        print()
        print("Instrucciones:")
        print("  1. Este script está escuchando en segundo plano")
        print("  2. Abre Smart Ship Factory en otra ventana")
        print("  3. Realiza operaciones (autorizar, leer estado, etc.)")
        print("  4. Todo el tráfico se guardará automáticamente")
        print()
        print("Para detener: Presiona Ctrl+C")
        print()
        print("-" * 80)
        print()

        start_time = time.time()
        bytes_recibidos = 0

        try:
            while True:
                # Verificar duración
                if duracion and (time.time() - start_time) > duracion:
                    break

                # Leer datos disponibles
                if self.serial.in_waiting > 0:
                    data = self.serial.read(self.serial.in_waiting)

                    if data:
                        bytes_recibidos += len(data)
                        self.log_data("RX", data)

                time.sleep(0.01)  # 10ms delay

        except KeyboardInterrupt:
            print("\n")
            print("-" * 80)
            print("[!] Captura detenida por usuario")

        # Resumen
        tiempo_total = time.time() - start_time
        print()
        print("=" * 80)
        print("RESUMEN DE CAPTURA")
        print("=" * 80)
        print(f"Tiempo total:     {tiempo_total:.1f} segundos")
        print(f"Bytes recibidos:  {bytes_recibidos}")
        print(f"Archivo de log:   {self.log_file.name}")
        print("=" * 80)
        print()

    def cerrar(self):
        """Cerrar conexiones"""
        if self.serial and self.serial.is_open:
            self.serial.close()

        if self.log_file:
            self.log_file.close()


def main():
    """Función principal"""

    print()
    print("=" * 80)
    print("  CAPTURADOR DE PROTOCOLO GPBOX")
    print("=" * 80)
    print()

    # Listar puertos disponibles
    print("[*] Puertos COM disponibles:")
    puertos = serial.tools.list_ports.comports()
    for i, puerto in enumerate(puertos, 1):
        print(f"    {i}. {puerto.device} - {puerto.description}")

    print()

    # Configuración
    port = input("Puerto COM (default: COM1): ").strip() or "COM1"
    baudrate = input("Baudrate (default: 115200): ").strip()
    baudrate = int(baudrate) if baudrate else 115200

    print()

    # Crear capturador
    capturador = GPBoxProtocolCapture(port=port, baudrate=baudrate)

    # Crear directorio y log
    capturador.crear_directorio_capturas()
    log_file = capturador.iniciar_log()

    # Conectar
    if not capturador.conectar():
        return 1

    print()
    print("[+] LISTO PARA CAPTURAR")
    print()
    print("=" * 80)
    print()

    input("Presiona ENTER para iniciar la captura...")

    try:
        # Capturar indefinidamente
        capturador.capturar(duracion=None)

    finally:
        capturador.cerrar()
        print()
        print(f"[+] Captura guardada en: {log_file}")
        print()

    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\n\n[!] Programa terminado")
        sys.exit(0)
    except Exception as e:
        print(f"\n[!] ERROR: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
