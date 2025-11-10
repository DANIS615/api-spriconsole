#!/usr/bin/env python3
"""
Extractor de Protocolo GPBox desde DLLs
Busca patrones de comunicación serial en DLLs de Smart Ship Factory
"""

import os
import re
import struct
from pathlib import Path
from collections import Counter

class ProtocoloGPBoxExtractor:
    """Extrae protocolo de comunicación de DLLs"""

    def __init__(self):
        self.patrones_encontrados = []
        self.baudrates = []
        self.comandos = []
        self.strings_serial = []

    def analizar_dll(self, dll_path):
        """Analiza un DLL en busca de protocolo"""
        print(f"\n{'='*60}")
        print(f"📦 Analizando: {os.path.basename(dll_path)}")
        print(f"{'='*60}")

        try:
            with open(dll_path, 'rb') as f:
                data = f.read()

            # 1. Buscar baudrates
            self._buscar_baudrates(data, dll_path)

            # 2. Buscar strings de comunicación serial
            self._buscar_strings_serial(data, dll_path)

            # 3. Buscar secuencias de bytes sospechosas (comandos)
            self._buscar_comandos(data, dll_path)

            # 4. Buscar patrones de 4 bytes (como e0c0e0f8)
            self._buscar_patron_4bytes(data, dll_path)

            # 5. Buscar funciones de checksum
            self._buscar_funciones_checksum(data, dll_path)

        except Exception as e:
            print(f"❌ Error analizando {dll_path}: {e}")

    def _buscar_baudrates(self, data, dll_path):
        """Busca baudrates comunes en los datos"""
        baudrates_comunes = {
            9600: b'\x80\x25\x00\x00',    # 9600 en little endian
            19200: b'\x00\x4b\x00\x00',   # 19200 en little endian
            38400: b'\x00\x96\x00\x00',   # 38400 en little endian
            57600: b'\x00\xe1\x00\x00',   # 57600 en little endian
            115200: b'\x00\xc2\x01\x00',  # 115200 en little endian
        }

        print("\n🔍 Buscando Baudrates:")
        encontrados = []

        for baud, pattern in baudrates_comunes.items():
            count = data.count(pattern)
            if count > 0:
                print(f"   ✅ {baud} bps: {count} apariciones")
                encontrados.append(baud)
                self.baudrates.append((baud, count, dll_path))

        # También buscar como string ASCII
        for baud in [9600, 19200, 38400, 57600, 115200]:
            baud_str = str(baud).encode('ascii')
            count = data.count(baud_str)
            if count > 0 and baud not in encontrados:
                print(f"   ✅ {baud} bps (ASCII): {count} apariciones")
                self.baudrates.append((baud, count, dll_path))

    def _buscar_strings_serial(self, data, dll_path):
        """Busca strings relacionadas con comunicación serial"""
        print("\n🔍 Buscando Strings de Comunicación:")

        keywords = [
            b'COM', b'Serial', b'Port', b'Baud', b'GPBox', b'GPBOX',
            b'Write', b'Read', b'Send', b'Receive',
            b'Command', b'Response', b'Frame', b'Packet',
            b'Checksum', b'CRC', b'LRC', b'XOR',
            b'STX', b'ETX', b'DLE', b'ACK', b'NAK'
        ]

        for keyword in keywords:
            # Buscar en mayúsculas y minúsculas
            for kw in [keyword, keyword.lower(), keyword.upper()]:
                pos = data.find(kw)
                if pos != -1:
                    # Extraer contexto (50 bytes antes y después)
                    start = max(0, pos - 50)
                    end = min(len(data), pos + len(kw) + 50)
                    contexto = data[start:end]

                    # Intentar decodificar
                    try:
                        contexto_str = contexto.decode('ascii', errors='replace')
                        # Limpiar caracteres no imprimibles
                        contexto_limpio = ''.join(c if c.isprintable() else '.' for c in contexto_str)

                        print(f"\n   📍 '{kw.decode('ascii')}' encontrado en offset 0x{pos:X}:")
                        print(f"      {contexto_limpio}")

                        self.strings_serial.append({
                            'keyword': kw.decode('ascii'),
                            'offset': pos,
                            'contexto': contexto_limpio,
                            'dll': dll_path
                        })
                    except:
                        pass

    def _buscar_comandos(self, data, dll_path):
        """Busca secuencias que parecen comandos"""
        print("\n🔍 Buscando Secuencias de Comandos:")

        # Buscar patrones como: [byte][byte][byte][byte] donde los valores son típicos
        # de protocolos (0x00-0xFF pero con patrones)

        # Patrón 1: Secuencias que empiezan con bytes comunes en protocolos
        delimitadores = [0x10, 0x02, 0x03, 0x01, 0xFF, 0x7E]

        for delim in delimitadores:
            pattern = bytes([delim])
            positions = []

            # Buscar todas las apariciones
            pos = 0
            while True:
                pos = data.find(pattern, pos)
                if pos == -1:
                    break
                positions.append(pos)
                pos += 1

            if len(positions) > 10:  # Si aparece más de 10 veces
                print(f"\n   📌 Delimitador 0x{delim:02X}: {len(positions)} apariciones")

                # Analizar contexto de las primeras 5
                for i, pos in enumerate(positions[:5]):
                    if pos + 20 < len(data):
                        secuencia = data[pos:pos+20]
                        hex_str = ' '.join(f'{b:02X}' for b in secuencia)
                        print(f"      [{i+1}] Offset 0x{pos:X}: {hex_str}")

    def _buscar_patron_4bytes(self, data, dll_path):
        """Busca patrones de 4 bytes como e0c0e0f8"""
        print("\n🔍 Buscando Patrones de 4 Bytes:")

        # Patrones conocidos
        patrones_conocidos = [
            b'\xe0\xc0\xe0\xf8',
            b'\xc0\xc0\xe0\xfe',
        ]

        for patron in patrones_conocidos:
            count = data.count(patron)
            if count > 0:
                pos = data.find(patron)
                print(f"\n   ✅ Patrón {patron.hex()} encontrado:")
                print(f"      Apariciones: {count}")
                print(f"      Primera en offset: 0x{pos:X}")

                # Mostrar contexto
                if pos != -1 and pos + 20 < len(data):
                    contexto = data[pos-10:pos+20]
                    hex_str = ' '.join(f'{b:02X}' for b in contexto)
                    print(f"      Contexto: {hex_str}")

        # Buscar patrones de 4 bytes repetitivos
        print("\n   🔎 Analizando todos los patrones de 4 bytes frecuentes:")
        patrones_4bytes = Counter()

        for i in range(0, len(data) - 4, 4):  # Saltar de 4 en 4
            patron = data[i:i+4]
            # Solo si tiene variación (no todos iguales)
            if len(set(patron)) > 1:
                patrones_4bytes[patron] += 1

        # Mostrar los 10 más frecuentes
        for patron, count in patrones_4bytes.most_common(10):
            if count > 5:  # Solo si aparece más de 5 veces
                print(f"      {patron.hex()}: {count} veces")

    def _buscar_funciones_checksum(self, data, dll_path):
        """Busca implementaciones de funciones de checksum"""
        print("\n🔍 Buscando Funciones de Checksum:")

        # Buscar patrones de código que calculan checksums
        # Estos son patrones de bytecode x86/x64 comunes

        # XOR en bucle: xor eax, [ebx]; inc ebx; loop
        patrones_xor = [
            b'\x33\x03',  # xor eax, [ebx]
            b'\x31\x03',  # xor [ebx], eax
        ]

        # Suma en bucle
        patrones_suma = [
            b'\x03\x03',  # add eax, [ebx]
            b'\x01\x03',  # add [ebx], eax
        ]

        for patron in patrones_xor:
            count = data.count(patron)
            if count > 0:
                print(f"   ⚡ Operación XOR detectada: {count} veces")

        for patron in patrones_suma:
            count = data.count(patron)
            if count > 0:
                print(f"   ➕ Operación ADD detectada: {count} veces")

        # Buscar strings de funciones conocidas
        funciones = [
            b'CalculateChecksum', b'CalcChecksum', b'GetChecksum',
            b'CalculateLRC', b'CalcLRC', b'GetLRC',
            b'CalculateCRC', b'CalcCRC', b'GetCRC',
        ]

        for func in funciones:
            if func in data:
                pos = data.find(func)
                print(f"   📝 Función encontrada: {func.decode('ascii')} en 0x{pos:X}")

    def generar_reporte(self, output_file="PROTOCOLO_GPBOX_EXTRAIDO.md"):
        """Genera reporte completo con hallazgos"""
        print(f"\n{'='*60}")
        print("📊 GENERANDO REPORTE")
        print(f"{'='*60}")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write("# 🔬 PROTOCOLO GPBOX EXTRAÍDO DE DLLs\n\n")
            f.write("Análisis automático de DLLs de Smart Ship Factory\n\n")
            f.write("---\n\n")

            # Baudrates
            f.write("## 📡 BAUDRATES DETECTADOS\n\n")
            if self.baudrates:
                f.write("| Baudrate | Apariciones | DLL |\n")
                f.write("|----------|-------------|-----|\n")
                for baud, count, dll in sorted(self.baudrates, key=lambda x: -x[1]):
                    dll_name = os.path.basename(dll)
                    f.write(f"| {baud} bps | {count} | {dll_name} |\n")
            else:
                f.write("❌ No se detectaron baudrates\n")

            f.write("\n---\n\n")

            # Strings de comunicación
            f.write("## 💬 STRINGS DE COMUNICACIÓN SERIAL\n\n")
            if self.strings_serial:
                strings_unicos = {}
                for s in self.strings_serial:
                    key = s['keyword']
                    if key not in strings_unicos:
                        strings_unicos[key] = []
                    strings_unicos[key].append(s)

                for keyword, items in sorted(strings_unicos.items()):
                    f.write(f"### Keyword: `{keyword}`\n\n")
                    f.write(f"Apariciones: {len(items)}\n\n")

                    for i, item in enumerate(items[:3], 1):  # Mostrar primeras 3
                        f.write(f"**[{i}] Offset 0x{item['offset']:X}** en `{os.path.basename(item['dll'])}`\n")
                        f.write(f"```\n{item['contexto']}\n```\n\n")
            else:
                f.write("❌ No se encontraron strings relevantes\n")

            f.write("\n---\n\n")

            # Conclusiones
            f.write("## 🎯 CONCLUSIONES\n\n")

            if self.baudrates:
                baudrate_mas_comun = max(self.baudrates, key=lambda x: x[1])
                f.write(f"### Baudrate más probable: **{baudrate_mas_comun[0]} bps**\n\n")
                f.write(f"- Apariciones: {baudrate_mas_comun[1]}\n")
                f.write(f"- DLL: `{os.path.basename(baudrate_mas_comun[2])}`\n\n")

            f.write("### Recomendaciones:\n\n")
            f.write("1. Usar baudrate detectado para comunicación\n")
            f.write("2. Buscar implementación de comandos en DLL principal\n")
            f.write("3. Decodificar secuencias de bytes encontradas\n")
            f.write("4. Comparar con capturas reales del hardware\n\n")

        print(f"✅ Reporte generado: {output_file}")


def main():
    """Función principal"""
    print("\n" + "="*60)
    print("🔬 EXTRACTOR DE PROTOCOLO GPBOX DESDE DLLs")
    print("="*60)

    extractor = ProtocoloGPBoxExtractor()

    # Buscar todos los DLLs de Smart Ship Factory
    dlls_path = Path("./Smart Ship Factory")

    if not dlls_path.exists():
        print("\n❌ No se encontró carpeta 'Smart Ship Factory'")
        print("   Buscando en ubicaciones alternativas...")

        # Buscar en todo el directorio actual
        dlls = list(Path(".").rglob("*.dll"))
        if dlls:
            print(f"\n✅ Encontrados {len(dlls)} DLLs en total")
        else:
            print("\n❌ No se encontraron DLLs")
            return 1
    else:
        dlls = list(dlls_path.rglob("*.dll"))
        print(f"\n✅ Encontrados {len(dlls)} DLLs en Smart Ship Factory")

    # Filtrar DLLs relevantes (los que probablemente tienen protocolo)
    dlls_relevantes = [
        dll for dll in dlls
        if any(keyword in dll.name.lower() for keyword in
               ['gilbarco', 'pump', 'serial', 'comm', 'ssf', 'wayne'])
    ]

    if not dlls_relevantes:
        print("\n⚠️  No se encontraron DLLs relevantes, analizando todos...")
        dlls_relevantes = dlls[:10]  # Analizar primeros 10

    print(f"\n📦 DLLs a analizar: {len(dlls_relevantes)}")
    for dll in dlls_relevantes:
        print(f"   - {dll.name}")

    # Analizar cada DLL
    for dll in dlls_relevantes:
        extractor.analizar_dll(str(dll))

    # Generar reporte
    extractor.generar_reporte()

    print("\n" + "="*60)
    print("✅ ANÁLISIS COMPLETADO")
    print("="*60)
    print("\n📄 Revisa el archivo: PROTOCOLO_GPBOX_EXTRAIDO.md")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
