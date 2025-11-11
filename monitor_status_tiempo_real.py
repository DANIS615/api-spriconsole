#!/usr/bin/env python3
"""
Monitor de Status en Tiempo Real
Lee el status de la bomba cada segundo y muestra cambios
"""

import serial
import time
import sys
from datetime import datetime

class MonitorStatusTiempoReal:
    """Monitor de status en tiempo real"""

    def __init__(self, port, pump_id):
        self.port = port
        self.pump_id = pump_id
        self.serial = None
        self.ultimo_status = None

    def abrir(self):
        """Abre puerto serial"""
        try:
            self.serial = serial.Serial(
                port=self.port,
                baudrate=115200,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=2
            )
            print(f"Puerto {self.port} abierto @ 115200 bps")
            return True
        except Exception as e:
            print(f"ERROR: {e}")
            return False

    def calcular_lrc(self, data):
        """Calcula LRC"""
        lrc = 0
        for byte in data:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF
        return lrc

    def seleccionar_slot(self):
        """Selecciona bomba"""
        comando = bytes([self.pump_id, 0x00])
        self.serial.reset_input_buffer()
        self.serial.write(comando)
        time.sleep(0.2)
        if self.serial.in_waiting > 0:
            self.serial.read(self.serial.in_waiting)
            return True
        return False

    def leer_status(self):
        """Lee status de la bomba (comando 016)"""
        # Construir comando 016
        DLE = 0x10
        STX = 0x02
        ETX = 0x03

        pump_ascii = ord(str(self.pump_id))
        cmd_bytes = b'016'

        frame_data = bytes([pump_ascii, STX]) + cmd_bytes
        lrc = self.calcular_lrc(frame_data)
        frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

        # Enviar
        self.serial.reset_input_buffer()
        self.serial.write(frame)
        time.sleep(0.3)

        # Recibir
        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            return respuesta
        return None

    def interpretar_status(self, data):
        """Interpreta respuesta de status"""
        if not data or len(data) < 4:
            return "Sin respuesta valida"

        byte0, byte1, byte2, byte3 = data[0], data[1], data[2], data[3]

        # Estados conocidos
        estados = {
            0xF8: "IDLE - Manguera abajo, sin preset",
            0xF0: "PRESET ACTIVO - Manguera arriba, autorizado",
            0xE0: "POSIBLE DESPACHANDO - Manguera en uso",
            0xC0: "POSIBLE FINALIZADO - Despacho terminado",
            0xFE: "RESET/OTRO",
        }

        estado = estados.get(byte3, f"DESCONOCIDO - 0x{byte3:02X}")

        # Analizar bits del byte 3
        bits = f"{byte3:08b}"

        return {
            'estado': estado,
            'byte3': byte3,
            'bits': bits,
            'bytes_completos': f"{byte0:02X} {byte1:02X} {byte2:02X} {byte3:02X}"
        }

    def mostrar_cambio(self, info, cambio=False):
        """Muestra informacion del status"""
        timestamp = datetime.now().strftime("%H:%M:%S")

        if cambio:
            print("\n" + "="*70)
            print(f"🔔 CAMBIO DETECTADO - {timestamp}")
            print("="*70)

        print(f"[{timestamp}] Status: {info['bytes_completos']}")
        print(f"           Estado: {info['estado']}")
        print(f"           Byte 3: 0x{info['byte3']:02X} ({info['byte3']:3d}) [{info['bits']}]")

        if cambio:
            print("="*70)

    def monitorear(self, intervalo=1.0):
        """Monitorea status continuamente"""
        print("\n" + "="*70)
        print(f"MONITOR DE STATUS EN TIEMPO REAL - BOMBA {self.pump_id}")
        print("="*70)
        print("\nPresiona Ctrl+C para detener\n")
        print("INSTRUCCIONES:")
        print("1. Levanta la manguera 1")
        print("2. Observa cuando cambia el status")
        print("3. Aprieta el gatillo para despachar")
        print("4. Observa los cambios durante el despacho")
        print("5. Suelta cuando llegue a $5.00 (o lo que marque)")
        print("\n" + "="*70 + "\n")

        try:
            contador = 0
            while True:
                # Seleccionar slot
                if not self.seleccionar_slot():
                    print(f"[{datetime.now().strftime('%H:%M:%S')}] ERROR: No se pudo seleccionar SLOT")
                    time.sleep(intervalo)
                    continue

                # Leer status
                respuesta = self.leer_status()

                if respuesta:
                    info = self.interpretar_status(respuesta)

                    # Detectar cambio
                    cambio = False
                    if self.ultimo_status is None:
                        cambio = True  # Primer lectura
                    elif self.ultimo_status['byte3'] != info['byte3']:
                        cambio = True  # Cambio de estado

                    # Mostrar
                    if cambio or contador % 10 == 0:  # Mostrar cada 10 lecturas aunque no cambie
                        self.mostrar_cambio(info, cambio)
                    else:
                        # Solo mostrar punto para indicar que esta leyendo
                        print(".", end="", flush=True)

                    self.ultimo_status = info
                    contador += 1
                else:
                    print(f"[{datetime.now().strftime('%H:%M:%S')}] Sin respuesta")

                time.sleep(intervalo)

        except KeyboardInterrupt:
            print("\n\n" + "="*70)
            print("MONITOREO DETENIDO")
            print("="*70)

            if self.ultimo_status:
                print(f"\nUltimo estado: {self.ultimo_status['estado']}")
                print(f"Byte 3 final: 0x{self.ultimo_status['byte3']:02X}")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()


def main():
    """Funcion principal"""
    print("="*70)
    print("MONITOR DE STATUS EN TIEMPO REAL")
    print("="*70)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python monitor_status_tiempo_real.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    monitor = MonitorStatusTiempoReal(puerto, pump_id)

    if not monitor.abrir():
        return 1

    try:
        monitor.monitorear(intervalo=1.0)  # Leer cada 1 segundo
    finally:
        monitor.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
