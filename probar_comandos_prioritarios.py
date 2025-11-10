#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Probar Comandos Prioritarios Gilbarco
Prueba los comandos mas importantes encontrados en el analisis
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

class ProbadorComandosGilbarco:
    """Prueba comandos Gilbarco via GPBox"""

    def __init__(self, port):
        self.port = port
        self.serial = None

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

    def mostrar_bytes(self, datos, label):
        """Muestra bytes en formato claro"""
        hex_str = ' '.join(f'{b:02X}' for b in datos)
        print(f"{label}: {hex_str} ({len(datos)} bytes)")

    def calcular_lrc(self, data):
        """Calcula LRC para frame Gilbarco"""
        lrc = 0
        for byte in data:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF
        return lrc

    def seleccionar_slot(self, pump_id):
        """Selecciona bomba (SLOT)"""
        print(f"\n--- Seleccionando SLOT {pump_id} ---")

        comando = bytes([pump_id, 0x00])
        self.mostrar_bytes(comando, "TX")

        self.serial.reset_input_buffer()
        self.serial.write(comando)
        time.sleep(0.3)

        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            self.mostrar_bytes(respuesta, "RX")

            # Verificar respuesta (protocolo descubierto: 0x00)
            if len(respuesta) >= 1 and respuesta[0] == 0x00:
                print(f"OK: SLOT {pump_id} seleccionado")
                return True
            else:
                print(f"ADVERTENCIA: Respuesta inesperada: {respuesta.hex()}")
                print(f"Continuando de todos modos...")
                return True  # Continuar aunque respuesta sea diferente
        else:
            print("ERROR: Sin respuesta")
            return False

    def enviar_comando_gilbarco(self, pump_id, comando, data=b'', descripcion=""):
        """Envia comando Gilbarco y muestra respuesta"""
        print(f"\n{'='*60}")
        print(f"COMANDO {comando}: {descripcion}")
        print(f"{'='*60}")

        # Construir frame
        DLE = 0x10
        STX = 0x02
        ETX = 0x03

        pump_ascii = ord(str(pump_id))
        cmd_bytes = comando.encode('ascii')

        # Frame sin LRC: PUMP_ID STX COMMAND DATA
        frame_data = bytes([pump_ascii, STX]) + cmd_bytes + data

        # Calcular LRC
        lrc = self.calcular_lrc(frame_data)

        # Frame completo: DLE frame_data DLE ETX LRC
        frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

        self.mostrar_bytes(frame, "TX")

        # Enviar
        self.serial.reset_input_buffer()
        self.serial.write(frame)
        time.sleep(0.5)

        # Recibir
        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            self.mostrar_bytes(respuesta, "RX")

            # Analizar
            if len(respuesta) == 4:
                self._analizar_respuesta_4bytes(respuesta)
            elif len(respuesta) > 4:
                self._analizar_respuesta_gilbarco(respuesta)

            return respuesta
        else:
            print("RX: Sin respuesta")
            return None

    def _analizar_respuesta_4bytes(self, data):
        """Analiza respuesta de 4 bytes GPBox"""
        print(f"\nRespuesta GPBox (4 bytes):")
        for i, byte in enumerate(data):
            print(f"  Byte {i}: 0x{byte:02X} ({byte:3d}) [{byte:08b}]")

        # Interpretar ultimo byte
        ultimo = data[3]
        print(f"\nInterpretacion byte 3 (0x{ultimo:02X}):")

        estados_conocidos = {
            0xF8: "Manguera abajo (idle)",
            0xF0: "Manguera arriba (ready)",
            0xFE: "Estado especial (reset?)",
        }

        if ultimo in estados_conocidos:
            print(f"  {estados_conocidos[ultimo]}")
        else:
            print(f"  Estado desconocido - Documentar!")

        # Analizar bits
        print(f"\n  Bits: ", end="")
        for i in range(7, -1, -1):
            bit = (ultimo >> i) & 1
            print(f"{bit}", end="")
            if i == 4:
                print(" ", end="")
        print()

    def _analizar_respuesta_gilbarco(self, data):
        """Analiza respuesta formato Gilbarco"""
        print(f"\nRespuesta Gilbarco ({len(data)} bytes):")

        # Buscar DLE STX
        if len(data) >= 2 and data[0] == 0x10 and data[1] == 0x02:
            print("  Formato DLE-STX detectado")

            # Buscar DLE ETX
            for i in range(2, len(data)-2):
                if data[i] == 0x10 and data[i+1] == 0x03:
                    # Datos entre STX y DLE-ETX
                    datos = data[2:i]
                    print(f"  Datos: {datos.hex()}")

                    # Intentar decodificar como ASCII
                    try:
                        texto = datos.decode('ascii')
                        print(f"  ASCII: {texto}")
                    except:
                        pass

                    # LRC
                    if i+2 < len(data):
                        lrc = data[i+2]
                        print(f"  LRC: 0x{lrc:02X}")
                    break
        else:
            print("  Formato desconocido")

    def probar_comando_016(self, pump_id):
        """016 - READ STATUS (confirmado funcionando)"""
        return self.enviar_comando_gilbarco(
            pump_id, "016",
            descripcion="READ STATUS - Leer estado de bomba"
        )

    def probar_comando_030(self, pump_id, preset_amount="00050000"):
        """030 - AUTHORIZE (autorizar con preset)"""
        # Formato tipico: preset en BCD
        # Ejemplo: $50.00 = "00050000"
        data = preset_amount.encode('ascii')
        return self.enviar_comando_gilbarco(
            pump_id, "030", data,
            descripcion=f"AUTHORIZE - Autorizar bomba con preset ${preset_amount}"
        )

    def probar_comando_031(self, pump_id):
        """031 - STOP (detener bomba)"""
        return self.enviar_comando_gilbarco(
            pump_id, "031",
            descripcion="STOP - Detener bomba"
        )

    def probar_comando_020(self, pump_id):
        """020 - READ TOTALIZERS (leer totalizadores)"""
        return self.enviar_comando_gilbarco(
            pump_id, "020",
            descripcion="READ TOTALIZERS - Leer totalizadores de bomba"
        )

    def probar_comando_025(self, pump_id, price="00350"):
        """025 - SET PRICE (cambiar precio)"""
        # Formato tipico: precio en centavos BCD
        # Ejemplo: $3.50/gal = "00350"
        data = price.encode('ascii')
        return self.enviar_comando_gilbarco(
            pump_id, "025", data,
            descripcion=f"SET PRICE - Cambiar precio a ${price}"
        )

    def probar_comando_000(self, pump_id):
        """000 - RESET (resetear bomba)"""
        return self.enviar_comando_gilbarco(
            pump_id, "000",
            descripcion="RESET - Resetear bomba"
        )

    def menu_principal(self, pump_id):
        """Menu interactivo de comandos"""
        while True:
            print(f"\n{'='*60}")
            print(f"PROBADOR DE COMANDOS GILBARCO - BOMBA {pump_id}")
            print(f"{'='*60}")
            print("\nComandos disponibles:")
            print("  1. 016 - READ STATUS (confirmado)")
            print("  2. 030 - AUTHORIZE con preset")
            print("  3. 031 - STOP detener bomba")
            print("  4. 020 - READ TOTALIZERS")
            print("  5. 025 - SET PRICE")
            print("  6. 000 - RESET")
            print("  7. Comando personalizado")
            print("  8. Cambiar bomba")
            print("  0. Salir")

            opcion = input("\nSelecciona opcion: ").strip()

            if opcion == '0':
                break
            elif opcion == '8':
                nuevo_pump = input("Numero de bomba (1-9): ").strip()
                try:
                    pump_id = int(nuevo_pump)
                    if not self.seleccionar_slot(pump_id):
                        print("ERROR: No se pudo seleccionar bomba")
                except:
                    print("ERROR: Numero invalido")
                continue

            # Seleccionar slot antes de cada comando
            if not self.seleccionar_slot(pump_id):
                print("ERROR: No se pudo seleccionar SLOT")
                continue

            time.sleep(0.3)

            # Ejecutar comando
            if opcion == '1':
                self.probar_comando_016(pump_id)
            elif opcion == '2':
                preset = input("Preset amount (ej: 00050000 para $50): ").strip()
                self.probar_comando_030(pump_id, preset if preset else "00050000")
            elif opcion == '3':
                self.probar_comando_031(pump_id)
            elif opcion == '4':
                self.probar_comando_020(pump_id)
            elif opcion == '5':
                precio = input("Precio (ej: 00350 para $3.50): ").strip()
                self.probar_comando_025(pump_id, precio if precio else "00350")
            elif opcion == '6':
                confirmacion = input("ATENCION: Esto reseteara la bomba. Continuar? (s/n): ")
                if confirmacion.lower() == 's':
                    self.probar_comando_000(pump_id)
            elif opcion == '7':
                cmd = input("Codigo de comando (3 digitos, ej: 017): ").strip()
                data = input("Datos (opcional, ej: 00050000): ").strip()
                desc = input("Descripcion: ").strip()
                self.enviar_comando_gilbarco(
                    pump_id, cmd,
                    data.encode('ascii') if data else b'',
                    desc if desc else f"Comando {cmd}"
                )
            else:
                print("Opcion invalida")

            input("\nPresiona ENTER para continuar...")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            print("\nPuerto cerrado")


def main():
    """Funcion principal"""
    print("="*60)
    print("PROBADOR DE COMANDOS GILBARCO PRIORITARIOS")
    print("="*60)
    print("\nComandos a probar:")
    print("  016 - READ STATUS (confirmado)")
    print("  030 - AUTHORIZE")
    print("  031 - STOP")
    print("  020 - READ TOTALIZERS")
    print("  025 - SET PRICE")
    print("  000 - RESET")

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python probar_comandos_prioritarios.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    probador = ProbadorComandosGilbarco(puerto)

    if not probador.abrir():
        return 1

    try:
        # Seleccionar bomba inicial
        if probador.seleccionar_slot(pump_id):
            time.sleep(0.5)
            # Menu interactivo
            probador.menu_principal(pump_id)
        else:
            print("ERROR: No se pudo seleccionar bomba inicial")

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        probador.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
