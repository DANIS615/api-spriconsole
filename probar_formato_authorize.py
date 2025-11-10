#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Probar Diferentes Formatos del Comando 030 AUTHORIZE
Prueba varias combinaciones para encontrar el formato correcto con manguera
"""

import serial
import time
import sys
import io

# Fix Windows console encoding
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

class ProbadorAuthorize:
    """Prueba diferentes formatos de AUTHORIZE"""

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
        comando = bytes([pump_id, 0x00])
        self.serial.reset_input_buffer()
        self.serial.write(comando)
        time.sleep(0.3)

        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            # Respuesta correcta confirmada: 0x00
            return len(respuesta) >= 1 and respuesta[0] == 0x00
        return False

    def enviar_comando(self, pump_id, comando_str, descripcion=""):
        """Envia comando y muestra respuesta"""
        print(f"\n{'='*70}")
        print(f"PROBANDO: {descripcion}")
        print(f"{'='*70}")

        # Construir frame
        DLE = 0x10
        STX = 0x02
        ETX = 0x03

        pump_ascii = ord(str(pump_id))
        cmd_bytes = comando_str.encode('ascii')

        # Frame sin LRC
        frame_data = bytes([pump_ascii, STX]) + cmd_bytes

        # Calcular LRC
        lrc = self.calcular_lrc(frame_data)

        # Frame completo
        frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

        self.mostrar_bytes(frame, "TX")
        print(f"Comando: {comando_str}")

        # Enviar
        self.serial.reset_input_buffer()
        self.serial.write(frame)
        time.sleep(0.5)

        # Recibir
        if self.serial.in_waiting > 0:
            respuesta = self.serial.read(self.serial.in_waiting)
            self.mostrar_bytes(respuesta, "RX")
            return respuesta
        else:
            print("RX: Sin respuesta")
            return None

    def probar_formatos(self, pump_id):
        """Prueba diferentes formatos de comando 030"""
        print("\n" + "="*70)
        print("PROBANDO DIFERENTES FORMATOS DE COMANDO 030 AUTHORIZE")
        print("="*70)
        print("\nBasado en hallazgos en DLL:")
        print("  - 'PRESET POR HOSE'")
        print("  - 'Setting preset filter by Hose'")
        print("  - 'COMPARANDO CALLING HOSE CON HOSE PRESETEADO'")
        print("\nEsto sugiere que el comando incluye especificacion de manguera")

        print("\n[*] Comenzando pruebas automaticamente...")
        time.sleep(2)

        # Formatos a probar
        formatos = [
            # Formato 1: 030 + hose + tipo + monto (10 caracteres)
            ("030100000500", "Formato 1: 030 + H(1) + T(0) + MONTO(00000500) = $5.00"),
            ("030110000500", "Formato 1: 030 + H(1) + T(1) + MONTO(00000500) = $5.00"),
            ("030120000500", "Formato 1: 030 + H(1) + T(2) + MONTO(00000500) = $5.00"),

            # Formato 2: 030 + tipo + hose + monto (10 caracteres)
            ("030010000500", "Formato 2: 030 + T(0) + H(1) + MONTO(00000500) = $5.00"),
            ("030110000500", "Formato 2: 030 + T(1) + H(1) + MONTO(00000500) = $5.00"),
            ("030210000500", "Formato 2: 030 + T(2) + H(1) + MONTO(00000500) = $5.00"),

            # Formato 3: 030 + hose (2 digitos) + tipo + monto (11 caracteres)
            ("0300100000500", "Formato 3: 030 + H(01) + T(0) + MONTO(00000500) = $5.00"),
            ("0300110000500", "Formato 3: 030 + H(01) + T(1) + MONTO(00000500) = $5.00"),

            # Formato 4: 030 + tipo + hose (2 dig) + monto (11 caracteres)
            ("0300100000500", "Formato 4: 030 + T(0) + H(01) + MONTO(00000500) = $5.00"),
            ("0301100000500", "Formato 4: 030 + T(1) + H(01) + MONTO(00000500) = $5.00"),

            # Formato 5: 030 con monto de 10 digitos (13 caracteres)
            ("0300000000500", "Formato 5: 030 + MONTO(0000000500) = $5.00 (sin hose?)"),

            # Formato 6: Solo 030 + tipo + monto (9 caracteres) - sin hose
            ("030100000500", "Formato 6: 030 + T(1) + MONTO(00000500) = $5.00 (sin hose?)"),
            ("030000000500", "Formato 6: 030 + T(0) + MONTO(00000500) = $5.00 (sin hose?)"),

            # Formato 7: Con separador
            ("030:1:00000500", "Formato 7: 030:HOSE:MONTO (con separador ':')"),
            ("030 1 00000500", "Formato 7: 030 HOSE MONTO (con espacio)"),
        ]

        resultados = []

        for formato, descripcion in formatos:
            # Seleccionar slot
            if not self.seleccionar_slot(pump_id):
                print("ERROR: No se pudo seleccionar SLOT")
                continue

            time.sleep(0.3)

            # Enviar comando
            respuesta = self.enviar_comando(pump_id, formato, descripcion)

            if respuesta:
                # Guardar resultado
                resultados.append({
                    'formato': formato,
                    'descripcion': descripcion,
                    'respuesta': respuesta.hex(),
                    'longitud': len(respuesta)
                })

            print("\n[*] Esperando 3 segundos antes de siguiente prueba...")
            time.sleep(3)

        # Resumen
        print("\n\n" + "="*70)
        print("RESUMEN DE PRUEBAS")
        print("="*70)

        for r in resultados:
            print(f"\nFormato: {r['formato']}")
            print(f"Desc:    {r['descripcion']}")
            print(f"RX:      {r['respuesta']} ({r['longitud']} bytes)")

        # Generar reporte
        self._generar_reporte(resultados)

    def _generar_reporte(self, resultados):
        """Genera reporte de pruebas"""
        with open("PRUEBAS_FORMATO_AUTHORIZE.md", 'w') as f:
            f.write("# PRUEBAS DE FORMATO COMANDO 030 AUTHORIZE\n\n")
            f.write("Pruebas para encontrar formato correcto con manguera\n\n")
            f.write("---\n\n")

            f.write("## HALLAZGOS PREVIOS\n\n")
            f.write("En SSF.Gilbarco.D.dll encontramos:\n\n")
            f.write("- `COMPARANDO CALLING HOSE [%ld] CON HOSE PRESETEADO [%ld][%s]`\n")
            f.write("- `PRESET POR HOSE`\n")
            f.write("- `Setting preset filter by Hose [%s]`\n\n")
            f.write("Esto confirma que el comando DEBE incluir especificacion de manguera\n\n")
            f.write("---\n\n")

            f.write("## RESULTADOS DE PRUEBAS\n\n")
            f.write("| Formato | Descripcion | RX | Bytes |\n")
            f.write("|---------|-------------|-----|-------|\n")

            for r in resultados:
                f.write(f"| `{r['formato']}` | {r['descripcion']} | `{r['respuesta']}` | {r['longitud']} |\n")

            f.write("\n---\n\n")
            f.write("## ANALISIS\n\n")
            f.write("Revisar cual respuesta indica exito:\n")
            f.write("- Respuestas de 4 bytes tipo `E0 C0 E0 XX` pueden ser estado\n")
            f.write("- Respuestas diferentes pueden indicar error o comando rechazado\n")
            f.write("- Comparar con respuesta de comando 016 (READ STATUS) conocido\n\n")

        print(f"\nReporte generado: PRUEBAS_FORMATO_AUTHORIZE.md")

    def cerrar(self):
        """Cierra puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()


def main():
    """Funcion principal"""
    print("="*70)
    print("PROBADOR DE FORMATOS COMANDO 030 AUTHORIZE CON MANGUERA")
    print("="*70)

    if len(sys.argv) < 2:
        print("\nUso:")
        print("  python probar_formato_authorize.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    probador = ProbadorAuthorize(puerto)

    if not probador.abrir():
        return 1

    try:
        probador.probar_formatos(pump_id)
    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        probador.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
