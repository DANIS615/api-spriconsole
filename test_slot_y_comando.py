#!/usr/bin/env python3
"""
Test: SLOT + Comando Gilbarco
Muestra EXACTAMENTE que se envia y que se recibe
"""

import serial
import time
import sys

class TestSlotYComando:
    """Test de slot + comando Gilbarco"""

    def __init__(self, port):
        self.port = port
        self.serial = None

    def abrir(self):
        """Abre puerto COM1 @ 115200 bps"""
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
        dec_str = ' '.join(f'{b:3d}' for b in datos)
        bin_str = ' '.join(f'{b:08b}' for b in datos)

        print(f"\n{label}:")
        print(f"  HEX: {hex_str}")
        print(f"  DEC: {dec_str}")
        print(f"  BIN: {bin_str}")
        print(f"  LEN: {len(datos)} bytes")

    def enviar_y_recibir(self, datos, descripcion):
        """Envia datos y muestra que recibe"""
        print(f"\n{'='*60}")
        print(f"TEST: {descripcion}")
        print(f"{'='*60}")

        # Mostrar que enviamos
        self.mostrar_bytes(datos, ">>> ENVIANDO")

        # Limpiar buffer
        self.serial.reset_input_buffer()

        # Enviar
        self.serial.write(bytes(datos))

        # Esperar respuesta
        time.sleep(0.3)

        # Leer respuesta
        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            self.mostrar_bytes(respuesta, "<<< RECIBIDO")
            return respuesta
        else:
            print("\n<<< SIN RESPUESTA")
            return None

    def seleccionar_slot(self, slot_id):
        """Selecciona slot (bomba)"""
        comando = [slot_id, 0x00]
        return self.enviar_y_recibir(comando, f"SELECCIONAR SLOT {slot_id} (BOMBA {slot_id})")

    def enviar_comando_gilbarco_016(self, pump_id):
        """
        Envia comando Gilbarco 016 (READ STATUS)

        Formato Gilbarco:
        DLE STX PUMP_ID CMD DATA DLE ETX LRC

        Comando 016 sin datos:
        10 02 31 30 31 36 10 03 LRC
        """
        # Construir frame Gilbarco para comando 016
        DLE = 0x10
        STX = 0x02
        ETX = 0x03

        # Pump ID como ASCII
        pump_ascii = ord(str(pump_id))  # '1' = 0x31

        # Comando 016 como ASCII
        cmd = b'016'  # 30 31 36

        # Frame sin LRC
        frame_data = bytes([pump_ascii, STX]) + cmd

        # Calcular LRC
        lrc = 0
        for byte in frame_data:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF

        # Frame completo
        frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

        return self.enviar_y_recibir(list(frame), "COMANDO GILBARCO 016 (READ STATUS)")

    def test_completo(self):
        """Test completo: SLOT + COMANDO"""
        print("\n" + "="*60)
        print("TEST COMPLETO: SLOT + COMANDO GILBARCO")
        print("="*60)
        print("\nVamos a:")
        print("1. Seleccionar SLOT 1 (Bomba 1)")
        print("2. Enviar comando Gilbarco 016 (READ STATUS)")
        print("3. Ver que responde la bomba")

        # PASO 1: Seleccionar SLOT 1
        print("\n" + "="*60)
        print("PASO 1: SELECCIONAR BOMBA")
        print("="*60)

        respuesta_slot = self.seleccionar_slot(1)

        if not respuesta_slot:
            print("\nERROR: No hubo respuesta al seleccionar slot")
            return

        # Verificar respuesta esperada
        if len(respuesta_slot) >= 2:
            if respuesta_slot[0] == 0xFE and respuesta_slot[1] == 0x00:
                print("\nOK: Slot 1 seleccionado correctamente (FE 00)")
            else:
                print(f"\nADVERTENCIA: Respuesta inesperada")

        # Pausa
        time.sleep(0.5)

        # PASO 2: Enviar comando Gilbarco
        print("\n" + "="*60)
        print("PASO 2: ENVIAR COMANDO GILBARCO")
        print("="*60)

        respuesta_cmd = self.enviar_comando_gilbarco_016(1)

        if respuesta_cmd:
            print("\nRESPUESTA DE LA BOMBA:")
            self.analizar_respuesta_gilbarco(respuesta_cmd)
        else:
            print("\nERROR: No hubo respuesta al comando")

    def analizar_respuesta_gilbarco(self, data):
        """Analiza respuesta en formato Gilbarco"""
        print("\nANALISIS DE RESPUESTA:")

        if len(data) < 4:
            print(f"  Respuesta muy corta ({len(data)} bytes)")
            return

        # Buscar DLE STX
        if data[0] == 0x10 and data[1] == 0x02:
            print("  Formato: Gilbarco DLE-STX-ETX detectado")

            # Buscar DLE ETX
            for i in range(len(data)-2):
                if data[i] == 0x10 and data[i+1] == 0x03:
                    print(f"  DLE ETX encontrado en posicion {i}")

                    # Datos entre STX y DLE-ETX
                    datos = data[2:i]
                    print(f"  Datos: {datos.hex()}")

                    try:
                        datos_ascii = datos.decode('ascii')
                        print(f"  Datos ASCII: {datos_ascii}")
                    except:
                        print(f"  (Datos no son ASCII)")

                    # LRC
                    if i+2 < len(data):
                        lrc = data[i+2]
                        print(f"  LRC: 0x{lrc:02X}")

                    break
        else:
            print("  Formato: NO es Gilbarco estandar")
            print("  Posiblemente formato GPBox propietario")

    def test_comparar_mangueras(self):
        """Test para comparar estado con diferentes mangueras"""
        print("\n" + "="*60)
        print("TEST: COMPARAR ESTADOS DE MANGUERAS")
        print("="*60)
        print("\nVamos a leer estado ANTES y DESPUES de mover manguera")

        # Lectura 1
        print("\n--- LECTURA 1 (estado actual) ---")
        self.seleccionar_slot(1)
        time.sleep(0.3)
        resp1 = self.enviar_comando_gilbarco_016(1)

        # Esperar a que usuario mueva manguera
        print("\n" + "="*60)
        print("AHORA: Levanta una manguera y presiona ENTER")
        print("="*60)
        input()

        # Lectura 2
        print("\n--- LECTURA 2 (con manguera levantada) ---")
        self.seleccionar_slot(1)
        time.sleep(0.3)
        resp2 = self.enviar_comando_gilbarco_016(1)

        # Comparar
        if resp1 and resp2:
            print("\n" + "="*60)
            print("COMPARACION:")
            print("="*60)
            print("\nRespuesta 1:")
            self.mostrar_bytes(resp1, "  ")
            print("\nRespuesta 2:")
            self.mostrar_bytes(resp2, "  ")

            # Diferencias
            print("\nDIFERENCIAS:")
            for i in range(min(len(resp1), len(resp2))):
                if resp1[i] != resp2[i]:
                    print(f"  Byte {i}: {resp1[i]:02X} -> {resp2[i]:02X}")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            print("\nPuerto cerrado")


def main():
    """Funcion principal"""
    print("="*60)
    print("TEST: SLOT + COMANDO GILBARCO")
    print("="*60)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python test_slot_y_comando.py COM1")
        print("\nOpciones:")
        print("  python test_slot_y_comando.py COM1 completo")
        print("  python test_slot_y_comando.py COM1 mangueras")
        return 1

    puerto = sys.argv[1]
    modo = sys.argv[2] if len(sys.argv) > 2 else "completo"

    test = TestSlotYComando(puerto)

    if not test.abrir():
        return 1

    try:
        if modo == "mangueras":
            test.test_comparar_mangueras()
        else:
            test.test_completo()

        print("\n" + "="*60)
        print("TEST COMPLETADO")
        print("="*60)

    except KeyboardInterrupt:
        print("\n\nTest interrumpido")
    finally:
        test.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
