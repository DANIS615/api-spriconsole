#!/usr/bin/env python3
"""
Sniffer de Trafico Serial GPBox
Captura y analiza trafico entre software SSF y GPBox

IMPORTANTE: Requiere configuracion especial
- Opcion 1: Software espía en puerto COM (ej: com0com + com2tcp)
- Opcion 2: Splitter RS232 hardware
- Opcion 3: Logging del puerto con herramienta externa

Este script lee el puerto en modo pasivo y analiza los frames
"""

import serial
import time
import sys
from datetime import datetime
from collections import defaultdict

class SnifferGPBox:
    """Sniffer de trafico GPBox"""

    def __init__(self, port, baudrate=115200):
        self.port = port
        self.baudrate = baudrate
        self.serial = None
        self.frames_capturados = []
        self.comandos_identificados = defaultdict(int)

    def abrir(self):
        """Abre puerto serial"""
        try:
            self.serial = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=0.1  # Timeout corto para modo sniffer
            )
            print(f"[+] Sniffer activo en {self.port} @ {self.baudrate} bps")
            return True
        except Exception as e:
            print(f"[-] ERROR: {e}")
            return False

    def calcular_lrc(self, data):
        """Calcula LRC"""
        lrc = 0
        for byte in data:
            lrc ^= byte
        return (~lrc + 1) & 0xFF

    def analizar_frame(self, data):
        """Analiza frame capturado"""
        if len(data) < 2:
            return None

        # Detectar tipo de frame
        if data[0] != 0x10:
            # Posible SLOT
            if len(data) == 2:
                return {
                    'tipo': 'SLOT',
                    'pump_id': data[0],
                    'data': data,
                    'hex': data.hex(),
                    'descripcion': f"SLOT: Bomba {data[0]}"
                }
            else:
                return {
                    'tipo': 'DESCONOCIDO',
                    'data': data,
                    'hex': data.hex(),
                    'descripcion': f"Frame desconocido ({len(data)} bytes)"
                }

        # Frame DLE-STX-ETX
        if len(data) >= 6 and data[0] == 0x10:
            # Buscar STX
            if data[1] != 0x02:
                # Puede ser respuesta o frame diferente
                return {
                    'tipo': 'RESPUESTA',
                    'data': data,
                    'hex': data.hex(),
                    'descripcion': f"Posible respuesta ({len(data)} bytes)"
                }

            # Buscar DLE ETX
            try:
                etx_pos = None
                for i in range(2, len(data) - 1):
                    if data[i] == 0x10 and data[i + 1] == 0x03:
                        etx_pos = i
                        break

                if etx_pos is None:
                    return {
                        'tipo': 'INCOMPLETO',
                        'data': data,
                        'hex': data.hex(),
                        'descripcion': "Frame incompleto (no se encontro DLE ETX)"
                    }

                # Extraer componentes
                pump_ascii = data[1] if data[1] != 0x02 else data[0]
                stx = data[2] if data[1] != 0x02 else data[1]

                # Comando
                start_cmd = 3 if data[1] != 0x02 else 2
                comando_bytes = data[start_cmd:etx_pos]
                comando_str = comando_bytes.decode('ascii', errors='replace')

                # LRC
                lrc_recibido = data[etx_pos + 2] if etx_pos + 2 < len(data) else None

                # Verificar LRC
                frame_data = data[1:etx_pos]
                lrc_calculado = self.calcular_lrc(frame_data)
                lrc_ok = (lrc_recibido == lrc_calculado) if lrc_recibido else False

                return {
                    'tipo': 'COMANDO',
                    'pump_id': chr(pump_ascii) if 0x30 <= pump_ascii <= 0x39 else '?',
                    'comando': comando_str,
                    'lrc_ok': lrc_ok,
                    'lrc_recibido': f"{lrc_recibido:02X}" if lrc_recibido else "N/A",
                    'lrc_calculado': f"{lrc_calculado:02X}",
                    'data': data,
                    'hex': data.hex(),
                    'descripcion': f"CMD: {comando_str} (Bomba {chr(pump_ascii) if 0x30 <= pump_ascii <= 0x39 else '?'})"
                }

            except Exception as e:
                return {
                    'tipo': 'ERROR',
                    'data': data,
                    'hex': data.hex(),
                    'descripcion': f"Error al parsear: {e}"
                }

        return None

    def capturar(self, duracion_segundos=60):
        """Captura trafico por tiempo especificado"""
        print(f"\n[*] Capturando trafico por {duracion_segundos} segundos...")
        print("[*] Ejecuta operaciones en el software SSF ahora:")
        print("    1. Autoriza un despacho")
        print("    2. Lee status de bomba")
        print("    3. Cancela autorizacion")
        print("    4. Cualquier otra operacion\n")
        print("="*80)

        inicio = time.time()
        buffer = bytearray()
        ultimo_timestamp = time.time()

        try:
            while (time.time() - inicio) < duracion_segundos:
                # Leer datos disponibles
                if self.serial.in_waiting > 0:
                    data = self.serial.read(self.serial.in_waiting)
                    buffer.extend(data)

                    # Si han pasado mas de 100ms sin datos, procesar buffer
                    ahora = time.time()
                    if ahora - ultimo_timestamp > 0.1 and len(buffer) > 0:
                        # Analizar buffer
                        timestamp_str = datetime.now().strftime("%H:%M:%S.%f")[:-3]

                        frame_info = self.analizar_frame(bytes(buffer))

                        if frame_info:
                            print(f"[{timestamp_str}] {frame_info['descripcion']}")
                            print(f"              HEX: {frame_info['hex']}")

                            if frame_info['tipo'] == 'COMANDO':
                                print(f"              LRC: {frame_info['lrc_recibido']} (calc: {frame_info['lrc_calculado']}) {'OK' if frame_info['lrc_ok'] else 'ERROR'}")

                                # Registrar comando
                                self.comandos_identificados[frame_info['comando']] += 1

                                # Resaltar AUTHORIZE si aparece
                                if frame_info['comando'].startswith('030'):
                                    print(f"              *** AUTHORIZE DETECTADO ***")
                                    self.analizar_authorize(frame_info['comando'])

                            print("-" * 80)

                            # Guardar frame
                            self.frames_capturados.append({
                                'timestamp': timestamp_str,
                                'info': frame_info
                            })

                        # Limpiar buffer
                        buffer.clear()
                        ultimo_timestamp = ahora

                time.sleep(0.01)  # 10ms

        except KeyboardInterrupt:
            print("\n[!] Captura detenida por usuario")

        # Resumen
        self.mostrar_resumen()

    def analizar_authorize(self, comando_str):
        """Analiza comando AUTHORIZE capturado"""
        print(f"              ANALISIS AUTHORIZE:")
        print(f"              Comando completo: {comando_str}")
        print(f"              Longitud: {len(comando_str)} caracteres")

        if len(comando_str) >= 3:
            print(f"              Codigo base: {comando_str[:3]}")

            if len(comando_str) > 3:
                params = comando_str[3:]
                print(f"              Parametros: {params}")

                # Intentar decodificar
                if len(params) >= 10:
                    print(f"              Formato probable: 030[H][T][MONTO]")
                    print(f"                H (hose): {params[0]}")
                    print(f"                T (tipo): {params[1]}")
                    print(f"                MONTO: {params[2:]}")

                    try:
                        monto_centavos = int(params[2:])
                        monto_dolares = monto_centavos / 100
                        print(f"                Monto: ${monto_dolares:.2f}")
                    except:
                        print(f"                Monto: No es numero")

    def mostrar_resumen(self):
        """Muestra resumen de captura"""
        print("\n" + "="*80)
        print("RESUMEN DE CAPTURA")
        print("="*80)

        print(f"\nTotal frames capturados: {len(self.frames_capturados)}")

        # Comandos por tipo
        tipos = defaultdict(int)
        for frame in self.frames_capturados:
            tipos[frame['info']['tipo']] += 1

        print("\nFrames por tipo:")
        for tipo, count in tipos.items():
            print(f"  {tipo}: {count}")

        # Comandos identificados
        if self.comandos_identificados:
            print("\nComandos identificados:")
            for comando, count in sorted(self.comandos_identificados.items(), key=lambda x: -x[1]):
                print(f"  {comando}: {count} veces")

        # Guardar a archivo
        timestamp_archivo = datetime.now().strftime("%Y%m%d_%H%M%S")
        nombre_archivo = f"captura_gpbox_{timestamp_archivo}.txt"

        with open(nombre_archivo, 'w') as f:
            f.write("CAPTURA DE TRAFICO GPBOX\n")
            f.write("="*80 + "\n\n")

            for frame in self.frames_capturados:
                f.write(f"[{frame['timestamp']}] {frame['info']['descripcion']}\n")
                f.write(f"HEX: {frame['info']['hex']}\n")
                if frame['info']['tipo'] == 'COMANDO':
                    f.write(f"Comando: {frame['info'].get('comando', 'N/A')}\n")
                    f.write(f"LRC: {frame['info'].get('lrc_recibido', 'N/A')}\n")
                f.write("-" * 80 + "\n")

        print(f"\n[+] Captura guardada en: {nombre_archivo}")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()


def main():
    """Funcion principal"""
    print("="*80)
    print("SNIFFER DE TRAFICO SERIAL GPBOX")
    print("="*80)

    if len(sys.argv) < 2:
        print("\nUso: python sniffer_serial_gpbox.py <PUERTO> [DURACION]")
        print("\nEjemplo:")
        print("  python sniffer_serial_gpbox.py COM1 60")
        print("\nNOTA: Este script requiere acceso al puerto serial")
        print("      Cierra el software SSF antes de ejecutar")
        print("      O usa puerto virtual/splitter")
        return 1

    puerto = sys.argv[1]
    duracion = int(sys.argv[2]) if len(sys.argv) > 2 else 60

    sniffer = SnifferGPBox(puerto)

    if not sniffer.abrir():
        return 1

    try:
        sniffer.capturar(duracion)
    finally:
        sniffer.cerrar()
        print("\n[+] Sniffer cerrado")

    return 0

if __name__ == "__main__":
    sys.exit(main())
