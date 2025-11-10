#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Diagnóstico Automático de Comunicación con Bombas Gilbarco
Versión no-interactiva para testing rápido
"""

import serial
import serial.tools.list_ports
import time
import sys
import io

# Configurar salida para Windows
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

class DiagnosticoBombaAuto:
    """Herramienta de diagnóstico automático para bombas Gilbarco"""

    DLE = 0x10
    STX = 0x02
    ETX = 0x03

    def __init__(self):
        self.serial = None

    def listar_puertos_disponibles(self):
        """Lista todos los puertos COM disponibles"""
        print("=" * 60)
        print("[*] PUERTOS COM DISPONIBLES")
        print("=" * 60)

        puertos = serial.tools.list_ports.comports()

        if not puertos:
            print("[!] No se encontraron puertos COM disponibles")
            return []

        for i, puerto in enumerate(puertos, 1):
            print(f"\n{i}. Puerto: {puerto.device}")
            print(f"   Descripcion: {puerto.description}")
            print(f"   Hardware ID: {puerto.hwid}")
            if puerto.manufacturer:
                print(f"   Fabricante: {puerto.manufacturer}")

        return [p.device for p in puertos]

    def probar_baudrates(self, puerto, pump_id=1):
        """Prueba diferentes baudrates comunes"""
        print("\n" + "=" * 60)
        print(f"[*] PROBANDO DIFERENTES BAUDRATES EN {puerto}")
        print("=" * 60)

        baudrates = [9600, 19200, 38400, 57600, 115200]

        for baud in baudrates:
            print(f"\n[*] Probando {baud} bps...")
            try:
                ser = serial.Serial(
                    port=puerto,
                    baudrate=baud,
                    bytesize=serial.EIGHTBITS,
                    parity=serial.PARITY_NONE,
                    stopbits=serial.STOPBITS_ONE,
                    timeout=1
                )

                # Limpiar buffers
                ser.reset_input_buffer()
                ser.reset_output_buffer()

                # Enviar comando simple de status (016)
                pump_byte = ord(str(pump_id))
                comando = b'\x10' + bytes([pump_byte]) + b'\x02016\x10\x03'

                # Calcular LRC
                lrc_data = bytes([pump_byte]) + b'\x02016'
                lrc = 0
                for byte in lrc_data:
                    lrc ^= byte
                lrc = (~lrc + 1) & 0xFF

                frame = comando + bytes([lrc])

                print(f"   TX: {frame.hex()}")
                ser.write(frame)

                time.sleep(0.3)  # Esperar respuesta

                if ser.in_waiting > 0:
                    respuesta = ser.read(ser.in_waiting)
                    print(f"   RX: {respuesta.hex()}")
                    print(f"   [+] RESPUESTA RECIBIDA en {baud} bps!")
                    ser.close()
                    return baud
                else:
                    print(f"   [-] Sin respuesta")

                ser.close()

            except Exception as e:
                print(f"   [!] Error: {str(e)}")

        print(f"\n[!] No se recibio respuesta en ningun baudrate")
        return None

    def enviar_comando_raw(self, pump_id, comando_str, data=""):
        """Envía comando crudo y muestra tráfico"""
        print(f"\n[>] Enviando comando '{comando_str}' a bomba {pump_id}...")

        # Construir frame
        pump_byte = ord(str(pump_id))
        frame_data = bytes([pump_byte, self.STX]) + comando_str.encode('ascii') + data.encode('ascii')

        # Calcular LRC
        lrc = 0
        for byte in frame_data:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF

        # Frame completo
        frame = bytes([self.DLE]) + frame_data + bytes([self.DLE, self.ETX, lrc])

        print(f"   Frame: {frame.hex()}")
        print(f"   Longitud: {len(frame)} bytes")

        # Limpiar buffer de entrada
        self.serial.reset_input_buffer()

        # Enviar
        bytes_escritos = self.serial.write(frame)
        print(f"   [+] {bytes_escritos} bytes enviados")

        # Esperar respuesta
        print(f"   [*] Esperando respuesta...")
        time.sleep(0.3)

        respuesta = b''
        start_time = time.time()

        while time.time() - start_time < 2.0:
            if self.serial.in_waiting > 0:
                respuesta += self.serial.read(self.serial.in_waiting)
                time.sleep(0.05)
            else:
                if respuesta:
                    break
                time.sleep(0.05)

        if respuesta:
            print(f"   [+] RESPUESTA RECIBIDA:")
            print(f"   HEX: {respuesta.hex()}")
            print(f"   Longitud: {len(respuesta)} bytes")
            self.decodificar_respuesta(respuesta)
            return respuesta
        else:
            print(f"   [!] NO SE RECIBIO RESPUESTA")
            print(f"\n   Posibles causas:")
            print(f"   1. Bomba apagada o desconectada")
            print(f"   2. Baudrate incorrecto")
            print(f"   3. Cable defectuoso")
            print(f"   4. Puerto COM incorrecto")
            print(f"   5. Bomba con ID diferente (no es ID {pump_id})")
            return None

    def decodificar_respuesta(self, data):
        """Intenta decodificar la respuesta"""
        print(f"\n   [*] DECODIFICACION:")

        if not data:
            return

        # Verificar DLE inicial
        if data[0] == self.DLE:
            print(f"   [+] DLE inicial presente (0x{data[0]:02X})")
        else:
            print(f"   [!] No comienza con DLE (recibido: 0x{data[0]:02X})")

        # Buscar ETX
        if self.ETX in data:
            etx_pos = data.index(self.ETX)
            print(f"   [+] ETX encontrado en posicion {etx_pos}")

            if etx_pos > 0 and data[etx_pos-1] == self.DLE:
                print(f"   [+] DLE antes de ETX presente")
        else:
            print(f"   [!] ETX no encontrado")

        # Verificar LRC
        if len(data) > 3:
            lrc_recibido = data[-1]
            print(f"   LRC recibido: 0x{lrc_recibido:02X}")

            # Calcular LRC esperado
            lrc_calculado = 0
            for byte in data[1:-3]:
                lrc_calculado ^= byte
            lrc_calculado = (~lrc_calculado + 1) & 0xFF
            print(f"   LRC calculado: 0x{lrc_calculado:02X}")

            if lrc_recibido == lrc_calculado:
                print(f"   [+] LRC CORRECTO")
            else:
                print(f"   [!] LRC INCORRECTO")

        # Intentar extraer datos
        try:
            if len(data) > 4:
                stx_pos = -1
                for i, byte in enumerate(data):
                    if byte == self.STX:
                        stx_pos = i
                        break

                if stx_pos >= 0:
                    datos = data[stx_pos+1:-3]
                    print(f"   Datos: {datos.hex()}")
                    try:
                        print(f"   Datos ASCII: {datos.decode('ascii')}")
                    except:
                        print(f"   (Datos no son ASCII puro)")
        except Exception as e:
            print(f"   Error decodificando: {e}")

    def test_todas_las_bombas(self, puerto, baudrate, max_pump=4):
        """Prueba comandos a múltiples IDs de bomba"""
        print("\n" + "=" * 60)
        print(f"[*] PROBANDO BOMBAS 1-{max_pump}")
        print("=" * 60)

        for pump_id in range(1, max_pump + 1):
            print(f"\n{'='*60}")
            print(f"[*] PROBANDO BOMBA #{pump_id}")
            print(f"{'='*60}")

            self.enviar_comando_raw(pump_id, "016", "")
            time.sleep(0.5)

    def diagnostico_completo(self):
        """Ejecuta diagnóstico completo automático"""
        print("\n" + "=" * 60)
        print("[*] DIAGNOSTICO AUTOMATICO DE BOMBAS GILBARCO")
        print("=" * 60)

        # 1. Listar puertos
        puertos = self.listar_puertos_disponibles()

        if not puertos:
            print("\n[!] No hay puertos COM disponibles")
            return 1

        # 2. Probar cada puerto
        for puerto in puertos:
            print(f"\n{'='*60}")
            print(f"[*] PROBANDO PUERTO: {puerto}")
            print(f"{'='*60}")

            # Probar baudrates
            baudrate = self.probar_baudrates(puerto, pump_id=1)

            if baudrate:
                print(f"\n[+] COMUNICACION ESTABLECIDA!")
                print(f"    Puerto: {puerto}")
                print(f"    Baudrate: {baudrate}")

                # Abrir conexión para tests
                try:
                    self.serial = serial.Serial(
                        port=puerto,
                        baudrate=baudrate,
                        bytesize=serial.EIGHTBITS,
                        parity=serial.PARITY_NONE,
                        stopbits=serial.STOPBITS_ONE,
                        timeout=2
                    )

                    # Probar múltiples bombas
                    self.test_todas_las_bombas(puerto, baudrate, max_pump=4)

                    self.serial.close()

                except Exception as e:
                    print(f"[!] Error: {e}")

        # Resumen final
        print("\n" + "=" * 60)
        print("[*] RESUMEN DEL DIAGNOSTICO")
        print("=" * 60)
        print("\n[i] Si NO hubo respuesta:")
        print("    - Verifica que la bomba este encendida")
        print("    - Confirma el cableado (TX<->RX, GND)")
        print("    - Verifica el ID de la bomba")
        print("    - Prueba otro puerto COM")
        print("\n[i] Para mas informacion:")
        print("    - Consulta PROTOCOLO_GILBARCO_DEFINITIVO_100.md")

        return 0

    def cerrar(self):
        """Cierra el puerto serial"""
        if self.serial and self.serial.is_open:
            self.serial.close()


if __name__ == "__main__":
    try:
        diag = DiagnosticoBombaAuto()
        sys.exit(diag.diagnostico_completo())
    except Exception as e:
        print(f"\n[!] ERROR FATAL: {str(e)}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
