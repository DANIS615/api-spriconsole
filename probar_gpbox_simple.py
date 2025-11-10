#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Prueba Simple de Protocolo GPBox
Basado en hallazgos del análisis de DLLs

HALLAZGOS CLAVE:
1. Baudrate: 115200 bps
2. ECHO: Cada byte enviado se devuelve como confirmación
3. Slots: Mecanismo de direccionamiento (bomba ID)
4. Respuestas: 4 bytes observados (e0c0e0f8, c0c0e0fe)
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

class GPBoxSimple:
    """Comunicación simple con GPBox"""

    BAUDRATE = 115200

    def __init__(self, port):
        self.port = port
        self.serial = None

    def abrir(self):
        """Abre puerto serial"""
        try:
            self.serial = serial.Serial(
                port=self.port,
                baudrate=self.BAUDRATE,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=2
            )
            print(f"✅ Puerto {self.port} abierto @ {self.BAUDRATE} bps")
            return True
        except Exception as e:
            print(f"❌ Error: {e}")
            return False

    def enviar_byte_con_echo(self, byte_val):
        """
        Envía un byte y espera echo
        Según DLL: "Does every byte sent over the port is received back as echo?"
        """
        print(f"\n📤 Enviando byte: 0x{byte_val:02X}")

        self.serial.reset_input_buffer()
        self.serial.write(bytes([byte_val]))

        time.sleep(0.1)

        if self.serial.in_waiting > 0:
            echo = self.serial.read(self.serial.in_waiting)
            print(f"   Echo recibido: {echo.hex()}")
            return echo
        else:
            print(f"   Sin echo")
            return None

    def cambiar_slot(self, slot_id):
        """
        Cambia a un slot específico (bomba)
        Según DLL: "Actual slot [%ld] - New slot [%ld]"
        """
        print(f"\n🔄 Intentando cambiar a SLOT {slot_id}...")

        # Probemos diferentes patrones para cambio de slot
        patrones_slot = [
            [slot_id],  # Solo el ID
            [0x01, slot_id],  # Comando 0x01 + ID
            [0xFF, slot_id],  # Comando 0xFF + ID
            [slot_id, 0x00],  # ID + padding
        ]

        for patron in patrones_slot:
            print(f"\n   Probando patrón: {' '.join(f'0x{b:02X}' for b in patron)}")

            self.serial.reset_input_buffer()
            self.serial.write(bytes(patron))

            time.sleep(0.2)

            if self.serial.in_waiting > 0:
                respuesta = self.serial.read(self.serial.in_waiting)
                print(f"   ✅ Respuesta: {respuesta.hex()}")

                if len(respuesta) == 4:
                    print(f"   ⭐ Respuesta de 4 bytes (patrón GPBox!)")
                    return respuesta
            else:
                print(f"   ⏳ Sin respuesta")

        return None

    def leer_estado_simple(self):
        """
        Intenta leer estado con comandos simples
        """
        print(f"\n📊 Intentando leer estado...")

        comandos_prueba = [
            [0x16],  # Status (016 en Gilbarco)
            [0x00],  # Reset
            [0x01],  # Posible STATUS
            [0xFF],  # Posible QUERY
            [0x3F],  # ? en ASCII
            [0x53],  # S en ASCII (Status)
        ]

        for cmd in comandos_prueba:
            print(f"\n   Comando: 0x{cmd[0]:02X}")

            self.serial.reset_input_buffer()
            self.serial.write(bytes(cmd))

            time.sleep(0.2)

            if self.serial.in_waiting > 0:
                respuesta = self.serial.read(self.serial.in_waiting)
                print(f"   ✅ Respuesta: {respuesta.hex()}")

                if len(respuesta) == 4:
                    print(f"   ⭐ Respuesta de 4 bytes!")
                    self.analizar_4bytes(respuesta)
            else:
                print(f"   ⏳ Sin respuesta")

    def analizar_4bytes(self, data):
        """Analiza respuesta de 4 bytes"""
        if len(data) != 4:
            return

        b0, b1, b2, b3 = data[0], data[1], data[2], data[3]

        print(f"\n   🔍 ANÁLISIS:")
        print(f"      Byte 0: 0x{b0:02X} ({b0:3d}) [{b0:08b}]")
        print(f"      Byte 1: 0x{b1:02X} ({b1:3d}) [{b1:08b}]")
        print(f"      Byte 2: 0x{b2:02X} ({b2:3d}) [{b2:08b}]")
        print(f"      Byte 3: 0x{b3:02X} ({b3:3d}) [{b3:08b}]")

        # Probar checksums
        xor = b0 ^ b1 ^ b2
        suma = (b0 + b1 + b2) & 0xFF
        lrc = (~(b0 ^ b1 ^ b2) + 1) & 0xFF

        print(f"\n   Posibles checksums:")
        print(f"      XOR:  0x{xor:02X} {'✅' if xor == b3 else '❌'}")
        print(f"      SUMA: 0x{suma:02X} {'✅' if suma == b3 else '❌'}")
        print(f"      LRC:  0x{lrc:02X} {'✅' if lrc == b3 else '❌'}")

    def test_secuencia_completa(self):
        """Prueba una secuencia completa"""
        print("\n" + "="*60)
        print("🧪 TEST SECUENCIA COMPLETA")
        print("="*60)

        # 1. Probar bytes individuales con echo
        print("\n1️⃣ PROBANDO ECHO...")
        for byte_val in [0x00, 0x01, 0xFF, 0x10, 0x16]:
            self.enviar_byte_con_echo(byte_val)
            time.sleep(0.3)

        # 2. Probar cambio de slot
        print("\n2️⃣ PROBANDO CAMBIO DE SLOT...")
        for slot in [1, 2, 0]:
            self.cambiar_slot(slot)
            time.sleep(0.3)

        # 3. Leer estado
        print("\n3️⃣ PROBANDO LECTURA DE ESTADO...")
        self.leer_estado_simple()

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            print("\n✅ Puerto cerrado")


def main():
    """Función principal"""
    print("\n" + "="*60)
    print("🔬 PRUEBA SIMPLE DE PROTOCOLO GPBOX")
    print("="*60)
    print("\nBasado en hallazgos del análisis de DLLs:")
    print("  - Baudrate: 115200 bps")
    print("  - Echo: Bytes enviados se devuelven")
    print("  - Slots: Direccionamiento de bombas")
    print("  - Respuestas: 4 bytes")

    if len(sys.argv) < 2:
        print("\nUso: python probar_gpbox_simple.py COM1")
        return 1

    puerto = sys.argv[1]

    gpbox = GPBoxSimple(puerto)

    if not gpbox.abrir():
        return 1

    try:
        gpbox.test_secuencia_completa()

        print("\n" + "="*60)
        print("✅ PRUEBA COMPLETADA")
        print("="*60)
        print("\n💡 INTERPRETACIÓN:")
        print("   - Si ves echo: El protocolo usa confirmación byte a byte")
        print("   - Si ves 4 bytes: Ese es el formato de respuesta GPBox")
        print("   - Anota qué comandos funcionan para documentar")

    except KeyboardInterrupt:
        print("\n\n⏹️  Prueba interrumpida")
    finally:
        gpbox.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
