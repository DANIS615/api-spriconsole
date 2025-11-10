#!/usr/bin/env python3
"""
Analizador de Protocolo Desconocido
Captura y analiza tráfico serial para identificar el protocolo real
"""

import serial
import time
import sys
from collections import Counter

class AnalizadorProtocolo:
    """Analiza protocolo desconocido mediante captura y análisis de patrones"""

    def __init__(self, puerto, baudrate=115200):
        self.puerto = puerto
        self.baudrate = baudrate
        self.serial = None
        self.capturas = []

    def abrir(self):
        """Abre el puerto serial"""
        try:
            self.serial = serial.Serial(
                port=self.puerto,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=2
            )
            print(f"✅ Puerto {self.puerto} abierto a {self.baudrate} bps")
            return True
        except Exception as e:
            print(f"❌ Error: {e}")
            return False

    def enviar_secuencia_prueba(self):
        """Envía múltiples comandos y captura respuestas"""
        print("\n" + "=" * 60)
        print("🔍 ENVIANDO SECUENCIA DE PRUEBA")
        print("=" * 60)

        # Comandos comunes en diferentes protocolos
        comandos_prueba = [
            # Gilbarco estándar
            (b'\x10\x02\x31\x30\x31\x36\x10\x03\xd9', "Gilbarco 016 (status)"),
            (b'\x10\x02\x31\x30\x30\x30\x10\x03\xee', "Gilbarco 000 (reset)"),

            # Wayne (otro fabricante común)
            (b'\x01S\x03', "Wayne Status"),
            (b'\x01R\x03', "Wayne Reset"),

            # Comandos simples ASCII
            (b'S\r\n', "ASCII Status (S)"),
            (b'I\r\n', "ASCII Info (I)"),
            (b'?\r\n', "ASCII Query (?)"),

            # Bytes simples
            (b'\x00', "Byte 0x00"),
            (b'\x01', "Byte 0x01"),
            (b'\xFF', "Byte 0xFF"),

            # Secuencias de descubrimiento
            (b'\x02STATUS\x03', "STX+STATUS+ETX"),
        ]

        for cmd, descripcion in comandos_prueba:
            print(f"\n📤 Enviando: {descripcion}")
            print(f"   TX: {cmd.hex()}")

            self.serial.reset_input_buffer()
            self.serial.write(cmd)

            time.sleep(0.3)

            if self.serial.in_waiting > 0:
                respuesta = self.serial.read(self.serial.in_waiting)
                print(f"   RX: {respuesta.hex()}")
                self.capturas.append({
                    'comando': cmd,
                    'descripcion': descripcion,
                    'respuesta': respuesta
                })
            else:
                print(f"   RX: (sin respuesta)")

    def analizar_patrones(self):
        """Analiza patrones en las respuestas"""
        print("\n" + "=" * 60)
        print("🔬 ANÁLISIS DE PATRONES")
        print("=" * 60)

        if not self.capturas:
            print("❌ No hay capturas para analizar")
            return

        print(f"\n📊 Total de respuestas capturadas: {len(self.capturas)}")

        # 1. Análisis de longitud
        print("\n1️⃣ LONGITUDES DE RESPUESTA:")
        longitudes = Counter([len(c['respuesta']) for c in self.capturas if c['respuesta']])
        for long, count in longitudes.most_common():
            print(f"   {long} bytes: {count} veces")

        # 2. Bytes más comunes
        print("\n2️⃣ BYTES MÁS FRECUENTES:")
        todos_bytes = []
        for captura in self.capturas:
            if captura['respuesta']:
                todos_bytes.extend(captura['respuesta'])

        if todos_bytes:
            byte_freq = Counter(todos_bytes)
            print("   Top 10 bytes:")
            for byte, freq in byte_freq.most_common(10):
                print(f"   0x{byte:02X} ({byte:3d}): {freq} veces")

        # 3. Análisis de delimitadores
        print("\n3️⃣ POSIBLES DELIMITADORES:")
        delimitadores_comunes = [0x00, 0x01, 0x02, 0x03, 0x0A, 0x0D, 0x10, 0x7E, 0xFF]
        for delim in delimitadores_comunes:
            count = sum(1 for b in todos_bytes if b == delim)
            if count > 0:
                print(f"   0x{delim:02X}: {count} apariciones")

        # 4. Análisis detallado de cada respuesta
        print("\n4️⃣ RESPUESTAS DETALLADAS:")
        for i, captura in enumerate(self.capturas, 1):
            if captura['respuesta']:
                resp = captura['respuesta']
                print(f"\n   [{i}] {captura['descripcion']}")
                print(f"       TX: {captura['comando'].hex()}")
                print(f"       RX: {resp.hex()}")
                print(f"       Longitud: {len(resp)} bytes")
                print(f"       Binary: {' '.join(f'{b:08b}' for b in resp)}")
                print(f"       Decimal: {' '.join(f'{b:3d}' for b in resp)}")

                # Intentar ASCII
                try:
                    ascii_str = resp.decode('ascii', errors='replace')
                    if ascii_str.isprintable():
                        print(f"       ASCII: {ascii_str}")
                except:
                    pass

    def monitor_bus(self, duracion=30):
        """Monitorea el bus sin enviar nada (modo sniffer)"""
        print("\n" + "=" * 60)
        print(f"📡 MONITOR PASIVO DEL BUS ({duracion}s)")
        print("=" * 60)
        print("Escuchando tráfico espontáneo...")
        print("(Si hay polling automático, lo capturaremos)")
        print("\nPresiona Ctrl+C para detener\n")

        self.serial.reset_input_buffer()
        capturas_bus = []
        start_time = time.time()

        try:
            while time.time() - start_time < duracion:
                if self.serial.in_waiting > 0:
                    timestamp = time.time() - start_time
                    data = self.serial.read(self.serial.in_waiting)
                    capturas_bus.append((timestamp, data))
                    print(f"[{timestamp:6.2f}s] {len(data):3d} bytes: {data.hex()}")
                time.sleep(0.1)
        except KeyboardInterrupt:
            print("\n⏹️  Monitor detenido")

        if capturas_bus:
            print(f"\n✅ Capturadas {len(capturas_bus)} transmisiones espontáneas")
            self.analizar_capturas_bus(capturas_bus)
        else:
            print("\n⚠️  No se detectó tráfico espontáneo")
            print("   Esto sugiere que el dispositivo NO hace polling automático")

    def analizar_capturas_bus(self, capturas):
        """Analiza capturas del bus"""
        print("\n" + "=" * 60)
        print("📊 ANÁLISIS DE TRÁFICO ESPONTÁNEO")
        print("=" * 60)

        # Intervalos entre mensajes
        if len(capturas) > 1:
            intervalos = []
            for i in range(1, len(capturas)):
                intervalo = capturas[i][0] - capturas[i-1][0]
                intervalos.append(intervalo)

            if intervalos:
                print(f"\n⏱️  INTERVALOS ENTRE MENSAJES:")
                print(f"   Promedio: {sum(intervalos)/len(intervalos):.3f}s")
                print(f"   Mínimo: {min(intervalos):.3f}s")
                print(f"   Máximo: {max(intervalos):.3f}s")

        # Patrones repetitivos
        print(f"\n🔁 PATRONES REPETITIVOS:")
        mensajes = [c[1] for c in capturas]
        mensaje_freq = Counter([m.hex() for m in mensajes])

        for msg_hex, freq in mensaje_freq.most_common(5):
            if freq > 1:
                print(f"   {msg_hex}: {freq} veces")

    def identificar_protocolo(self):
        """Intenta identificar el protocolo basándose en patrones"""
        print("\n" + "=" * 60)
        print("🎯 IDENTIFICACIÓN DE PROTOCOLO")
        print("=" * 60)

        if not self.capturas:
            print("❌ No hay datos para analizar")
            return

        # Recopilar todas las respuestas
        respuestas = [c['respuesta'] for c in self.capturas if c['respuesta']]

        if not respuestas:
            print("❌ No hubo respuestas")
            return

        # Análisis de características
        print("\n🔍 CARACTERÍSTICAS DETECTADAS:")

        # 1. Verificar si usa DLE-STX-ETX (Gilbarco estándar)
        tiene_dle = any(0x10 in r for r in respuestas)
        tiene_stx = any(0x02 in r for r in respuestas)
        tiene_etx = any(0x03 in r for r in respuestas)

        print(f"\n   Protocolo Gilbarco DLE-STX-ETX:")
        print(f"   - DLE (0x10): {'✅' if tiene_dle else '❌'}")
        print(f"   - STX (0x02): {'✅' if tiene_stx else '❌'}")
        print(f"   - ETX (0x03): {'✅' if tiene_etx else '❌'}")

        if tiene_dle and tiene_stx and tiene_etx:
            print(f"   ✅ POSIBLEMENTE Gilbarco estándar")
        else:
            print(f"   ❌ NO es Gilbarco estándar")

        # 2. Verificar protocolo binario
        es_binario = True
        for resp in respuestas:
            for byte in resp:
                if 0x20 <= byte <= 0x7E:  # Caracteres ASCII imprimibles
                    es_binario = False
                    break

        print(f"\n   Protocolo binario (no ASCII): {'✅' if es_binario else '❌'}")

        # 3. Analizar estructura de 4 bytes (e0c0e0f8, c0c0e0fe)
        respuestas_4bytes = [r for r in respuestas if len(r) == 4]
        if respuestas_4bytes:
            print(f"\n   ⚠️  PATRÓN DETECTADO: Respuestas de 4 bytes")
            print(f"   Total: {len(respuestas_4bytes)} respuestas")
            print(f"\n   Ejemplos:")
            for resp in respuestas_4bytes[:5]:
                b0, b1, b2, b3 = resp[0], resp[1], resp[2], resp[3]
                print(f"   {resp.hex()}: [{b0:3d}] [{b1:3d}] [{b2:3d}] [{b3:3d}]")
                print(f"                [{b0:08b}] [{b1:08b}] [{b2:08b}] [{b3:08b}]")

            # Análisis de último byte (posible checksum)
            print(f"\n   📊 ANÁLISIS DE ÚLTIMO BYTE (posible checksum):")
            for resp in respuestas_4bytes[:3]:
                ultimo = resp[-1]
                # Probar XOR
                xor = resp[0] ^ resp[1] ^ resp[2]
                # Probar suma
                suma = (resp[0] + resp[1] + resp[2]) & 0xFF
                # Probar LRC
                lrc = (~(resp[0] ^ resp[1] ^ resp[2]) + 1) & 0xFF

                print(f"   {resp.hex()}:")
                print(f"      Último byte: 0x{ultimo:02X}")
                print(f"      XOR simple: 0x{xor:02X} {'✅' if xor == ultimo else '❌'}")
                print(f"      SUMA: 0x{suma:02X} {'✅' if suma == ultimo else '❌'}")
                print(f"      LRC: 0x{lrc:02X} {'✅' if lrc == ultimo else '❌'}")

        # 4. Sugerencias de protocolo
        print(f"\n💡 POSIBLES PROTOCOLOS:")

        if len(respuestas_4bytes) > 0:
            print(f"   1. Protocolo propietario de 4 bytes")
            print(f"   2. Sistema de polling simplificado")
            print(f"   3. GPBox (sistema de control de bombas)")
            print(f"   4. Protocolo Tokheim o Wayne simplificado")

        # 5. Recomendaciones
        print(f"\n📋 RECOMENDACIONES:")
        print(f"   1. Verificar documentación del fabricante")
        print(f"   2. Consultar manual del controlador GPBox/sistema instalado")
        print(f"   3. Usar osciloscopio/analizador lógico para captura más detallada")
        print(f"   4. Verificar si hay software original funcionando")
        print(f"   5. Intentar sniffear comunicación de software funcional")

    def cerrar(self):
        """Cierra el puerto"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            print("\n✅ Puerto cerrado")


def main():
    """Función principal"""
    print("\n" + "=" * 60)
    print("🔬 ANALIZADOR DE PROTOCOLO DESCONOCIDO")
    print("=" * 60)

    if len(sys.argv) < 2:
        print("\nUso: python analizar_protocolo.py COM1 [baudrate]")
        print("\nEjemplo:")
        print("  python analizar_protocolo.py COM1 115200")
        return 1

    puerto = sys.argv[1]
    baudrate = int(sys.argv[2]) if len(sys.argv) > 2 else 115200

    print(f"\nPuerto: {puerto}")
    print(f"Baudrate: {baudrate} bps")

    analizador = AnalizadorProtocolo(puerto, baudrate)

    if not analizador.abrir():
        return 1

    try:
        # 1. Enviar secuencia de prueba
        analizador.enviar_secuencia_prueba()

        # 2. Analizar patrones
        analizador.analizar_patrones()

        # 3. Identificar protocolo
        analizador.identificar_protocolo()

        # 4. Ofrecer monitor de bus
        print("\n" + "=" * 60)
        print("¿Quieres monitorear el bus por 30 segundos? (s/n)")
        if input().lower() == 's':
            analizador.monitor_bus(30)

        # Resumen final
        print("\n" + "=" * 60)
        print("📋 RESUMEN")
        print("=" * 60)
        print(f"✅ Análisis completado")
        print(f"📊 Respuestas capturadas: {len(analizador.capturas)}")
        print(f"\n💾 Datos guardados internamente para análisis posterior")

    except KeyboardInterrupt:
        print("\n\n⏹️  Análisis interrumpido")
    finally:
        analizador.cerrar()

    return 0


if __name__ == "__main__":
    sys.exit(main())
