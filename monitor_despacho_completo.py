#!/usr/bin/env python3
"""
Monitor Completo de Despacho
Monitorea todos los estados durante el ciclo completo de despacho
Incluye prueba de comando STOP
"""

import serial
import time
import sys
from datetime import datetime

class MonitorDespachoCompleto:
    """Monitor completo del ciclo de despacho"""

    def __init__(self, port, pump_id):
        self.port = port
        self.pump_id = pump_id
        self.serial = None
        self.estados_observados = []
        self.tiempos = {}

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

    def enviar_comando(self, comando_str):
        """Envia comando y retorna respuesta"""
        DLE = 0x10
        STX = 0x02
        ETX = 0x03

        pump_ascii = ord(str(self.pump_id))
        cmd_bytes = comando_str.encode('ascii')

        frame_data = bytes([pump_ascii, STX]) + cmd_bytes
        lrc = self.calcular_lrc(frame_data)
        frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

        self.serial.reset_input_buffer()
        self.serial.write(frame)
        time.sleep(0.3)

        if self.serial.in_waiting > 0:
            return self.serial.read(self.serial.in_waiting)
        return None

    def interpretar_status(self, data):
        """Interpreta respuesta de status"""
        if not data or len(data) < 4:
            return None

        byte0, byte1, byte2, byte3 = data[0], data[1], data[2], data[3]

        # Decodificar
        tiene_preset = (byte1 == 0xE0)
        manguera_levantada = (byte3 == 0xF0)

        # Detectar estado
        if tiene_preset and manguera_levantada:
            estado = "LISTO_DESPACHAR"
        elif tiene_preset and not manguera_levantada:
            estado = "AUTORIZADO_ESPERANDO"
        elif not tiene_preset and manguera_levantada:
            estado = "MANGUERA_LEVANTADA_SIN_PRESET"
        else:
            estado = "IDLE"

        # Detectar posibles estados de despacho
        if byte3 not in [0xF0, 0xF8]:
            estado = f"DESCONOCIDO_0x{byte3:02X}"

        return {
            'tiene_preset': tiene_preset,
            'manguera_levantada': manguera_levantada,
            'estado': estado,
            'hex': f"{byte0:02X} {byte1:02X} {byte2:02X} {byte3:02X}",
            'byte0': byte0,
            'byte1': byte1,
            'byte2': byte2,
            'byte3': byte3,
            'timestamp': datetime.now()
        }

    def registrar_estado(self, info):
        """Registra estado si es diferente al ultimo"""
        if not self.estados_observados or \
           self.estados_observados[-1]['hex'] != info['hex']:
            self.estados_observados.append(info)
            return True
        return False

    def mostrar_estado(self, info, cambio=False):
        """Muestra estado"""
        timestamp = info['timestamp'].strftime("%H:%M:%S.%f")[:-3]

        if cambio:
            print("\n" + "="*70)
            print(f"CAMBIO DETECTADO - {timestamp}")
            print("="*70)

        print(f"[{timestamp}] {info['hex']} - {info['estado']}")

        if cambio:
            print(f"  Byte 1: 0x{info['byte1']:02X} ({'Preset' if info['tiene_preset'] else 'Sin preset'})")
            print(f"  Byte 3: 0x{info['byte3']:02X} ({'Levantada' if info['manguera_levantada'] else 'Colgada'})")
            print("="*70)

    def secuencia_authorize(self, hose, tipo, monto):
        """Ejecuta secuencia completa de autorizacion"""
        print("\n" + "="*70)
        print("SECUENCIA DE AUTORIZACION")
        print("="*70)

        # CLEAR PRESET
        print("\n1. CLEAR PRESET (033)...")
        self.seleccionar_slot()
        self.enviar_comando('033')
        time.sleep(0.3)

        # Verificar limpiado
        self.seleccionar_slot()
        rx = self.enviar_comando('016')
        if rx:
            info = self.interpretar_status(rx)
            print(f"   Status: {info['hex']} - {info['estado']}")

        # AUTHORIZE
        print(f"\n2. AUTHORIZE (030{hose}{tipo}{monto})...")
        comando_auth = f"030{hose}{tipo}{monto}"
        self.seleccionar_slot()
        self.enviar_comando(comando_auth)
        time.sleep(0.5)

        # Verificar autorizacion
        self.seleccionar_slot()
        rx = self.enviar_comando('016')
        if rx:
            info = self.interpretar_status(rx)
            print(f"   Status: {info['hex']} - {info['estado']}")
            if info['tiene_preset']:
                print("   OK: Preset activo")
                return True
            else:
                print("   ERROR: Preset NO activo")
                return False
        return False

    def monitorear_despacho(self, intervalo=0.5):
        """Monitorea despacho en tiempo real"""
        print("\n" + "="*70)
        print("MONITOR DE DESPACHO EN TIEMPO REAL")
        print("="*70)
        print("\nPresiona Ctrl+C para detener")
        print("\nINSTRUCCIONES:")
        print("1. Levanta la manguera")
        print("2. Aprieta el gatillo para despachar")
        print("3. Observa los cambios de estado")
        print("4. Presiona Ctrl+C cuando quieras detener el monitoreo")
        print("="*70 + "\n")

        try:
            while True:
                if not self.seleccionar_slot():
                    print("ERROR: No se pudo seleccionar SLOT")
                    time.sleep(intervalo)
                    continue

                rx = self.enviar_comando('016')
                if rx:
                    info = self.interpretar_status(rx)
                    cambio = self.registrar_estado(info)

                    if cambio:
                        self.mostrar_estado(info, cambio=True)
                    else:
                        print(".", end="", flush=True)

                time.sleep(intervalo)

        except KeyboardInterrupt:
            print("\n\nMonitoreo detenido\n")

    def probar_stop(self):
        """Prueba comando STOP (031) durante despacho"""
        print("\n" + "="*70)
        print("PRUEBA DE COMANDO STOP (031)")
        print("="*70)

        input("\nEspera a que empiece a despachar, luego presiona ENTER para enviar STOP...")

        print("\nEnviando STOP (031)...")
        self.seleccionar_slot()
        rx = self.enviar_comando('031')

        if rx:
            print(f"RX: {rx.hex()}")
        else:
            print("RX: Sin respuesta")

        time.sleep(0.5)

        # Verificar estado despues de STOP
        print("\nVerificando estado despues de STOP...")
        self.seleccionar_slot()
        rx = self.enviar_comando('016')

        if rx:
            info = self.interpretar_status(rx)
            print(f"Status: {info['hex']} - {info['estado']}")

    def generar_reporte(self):
        """Genera reporte de estados observados"""
        print("\n" + "="*70)
        print("REPORTE DE ESTADOS OBSERVADOS")
        print("="*70)

        if not self.estados_observados:
            print("\nNo se observaron estados")
            return

        print(f"\nTotal de estados diferentes: {len(self.estados_observados)}")
        print("\nSecuencia de estados:\n")

        for i, estado in enumerate(self.estados_observados):
            timestamp = estado['timestamp'].strftime("%H:%M:%S.%f")[:-3]
            duracion = ""

            if i > 0:
                delta = (estado['timestamp'] - self.estados_observados[i-1]['timestamp']).total_seconds()
                duracion = f" (+{delta:.2f}s)"

            print(f"{i+1}. [{timestamp}]{duracion}")
            print(f"   {estado['hex']} - {estado['estado']}")
            print(f"   Byte 1: 0x{estado['byte1']:02X}, Byte 3: 0x{estado['byte3']:02X}")

        # Analisis de byte 3
        print("\n" + "="*70)
        print("ANALISIS DE BYTE 3 (Estado Fisico)")
        print("="*70)

        valores_byte3 = {}
        for estado in self.estados_observados:
            val = estado['byte3']
            if val not in valores_byte3:
                valores_byte3[val] = []
            valores_byte3[val].append(estado['estado'])

        print("\nValores unicos de Byte 3 observados:\n")
        for val in sorted(valores_byte3.keys()):
            print(f"0x{val:02X} ({val:3d}) [{val:08b}]")
            print(f"  Estados: {', '.join(set(valores_byte3[val]))}")
            print(f"  Frecuencia: {len(valores_byte3[val])} veces")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()


def main():
    """Funcion principal"""
    print("="*70)
    print("MONITOR COMPLETO DE DESPACHO")
    print("="*70)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python monitor_despacho_completo.py COM1 [PUMP_ID]")
        print("\nOpciones:")
        print("  1. Monitoreo completo (authorize + despacho + reporte)")
        print("  2. Solo monitoreo de estados")
        print("  3. Prueba de STOP durante despacho")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    monitor = MonitorDespachoCompleto(puerto, pump_id)

    if not monitor.abrir():
        return 1

    try:
        # Menu
        print("\nSelecciona modo:")
        print("1. Monitoreo completo (authorize + despacho + reporte)")
        print("2. Solo monitoreo de estados")
        print("3. Prueba de STOP durante despacho")

        opcion = input("\nOpcion [1]: ").strip() or "1"

        if opcion == "1":
            # Secuencia completa
            print("\n" + "="*70)
            print("MODO: MONITOREO COMPLETO")
            print("="*70)

            # Parametros
            hose = input("\nManguera (1-9) [1]: ").strip() or "1"
            tipo = input("Tipo (0=Full, 1=Money, 2=Volume) [1]: ").strip() or "1"
            monto = input("Monto (8 digitos) [00000500]: ").strip() or "00000500"

            # Authorize
            if monitor.secuencia_authorize(hose, tipo, monto):
                # Monitorear
                monitor.monitorear_despacho(intervalo=0.5)

                # Reporte
                monitor.generar_reporte()

        elif opcion == "2":
            # Solo monitoreo
            monitor.monitorear_despacho(intervalo=0.5)
            monitor.generar_reporte()

        elif opcion == "3":
            # Prueba STOP
            print("\nPrimero autoriza y empieza a despachar manualmente")
            input("Presiona ENTER cuando estes listo...")
            monitor.probar_stop()

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        monitor.cerrar()
        print("\nPuerto cerrado")

    return 0


if __name__ == "__main__":
    sys.exit(main())
