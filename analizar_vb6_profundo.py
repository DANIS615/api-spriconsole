#!/usr/bin/env python3
"""
Analisis Profundo de Codigo VB6 - Comando AUTHORIZE
Busca la construccion exacta del comando 030 en el codigo descompilado
"""

import re
from pathlib import Path
from collections import defaultdict

class AnalizadorProfundoVB6:
    """Analiza codigo VB6 en profundidad"""

    def __init__(self, carpeta_codigo):
        self.carpeta = Path(carpeta_codigo)
        self.hallazgos = defaultdict(list)

    def analizar_forecourt(self):
        """Analiza archivo FORECOURT.123 en profundidad"""
        archivo = self.carpeta / "FORECOURT.123"

        if not archivo.exists():
            print(f"ERROR: No existe {archivo}")
            return

        print("="*70)
        print(f"ANALISIS PROFUNDO: {archivo.name}")
        print("="*70)

        # Leer como binario
        data = archivo.read_bytes()

        # 1. Buscar secuencias "030" y su contexto
        self._buscar_secuencias_030(data)

        # 2. Buscar construccion de comandos
        self._buscar_construccion_comandos(data)

        # 3. Buscar referencias a authorize/preset
        self._buscar_referencias_authorize(data)

        # 4. Buscar patrones numericos (mangueras)
        self._buscar_patrones_manguera(data)

        # 5. Buscar concatenacion de strings
        self._buscar_concatenacion(data)

    def _buscar_secuencias_030(self, data):
        """Busca todas las apariciones de 030 con contexto extendido"""
        print("\n1. SECUENCIAS '030' CON CONTEXTO EXTENDIDO")
        print("-" * 70)

        patron = b'030'
        offset = 0
        encontrados = []

        while True:
            pos = data.find(patron, offset)
            if pos == -1:
                break

            # Contexto: 40 bytes antes y 40 despues
            inicio = max(0, pos - 40)
            fin = min(len(data), pos + 40)
            contexto = data[inicio:fin]

            # Convertir a ASCII/hex
            ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
            hex_ctx = contexto.hex()

            # Buscar patrones de digitos alrededor
            # Buscar si hay numeros antes/despues (posibles parametros)
            antes = data[max(0, pos-10):pos]
            despues = data[pos+3:min(len(data), pos+20)]

            # Contar digitos ASCII alrededor
            digitos_antes = sum(1 for b in antes if 0x30 <= b <= 0x39)
            digitos_despues = sum(1 for b in despues if 0x30 <= b <= 0x39)

            encontrados.append({
                'pos': pos,
                'contexto_ascii': ascii_ctx,
                'contexto_hex': hex_ctx,
                'digitos_antes': digitos_antes,
                'digitos_despues': digitos_despues
            })

            offset = pos + 1

        print(f"Total encontradas: {len(encontrados)}")

        # Mostrar las mas interesantes (con muchos digitos alrededor)
        interesantes = sorted(encontrados, key=lambda x: x['digitos_despues'], reverse=True)

        print(f"\nMAS INTERESANTES (con mas digitos despues):")
        for item in interesantes[:10]:
            print(f"\nPosicion: 0x{item['pos']:08x}")
            print(f"Digitos antes: {item['digitos_antes']}, despues: {item['digitos_despues']}")
            print(f"ASCII: {item['contexto_ascii']}")
            print(f"HEX:   {item['contexto_hex']}")

        self.hallazgos['secuencias_030'] = encontrados

    def _buscar_construccion_comandos(self, data):
        """Busca patrones de construccion de comandos"""
        print("\n\n2. PATRONES DE CONSTRUCCION DE COMANDOS")
        print("-" * 70)

        # Buscar secuencias que parecen construccion de frames
        # DLE (10) + pump_id + STX (02) + comando
        patron_frame = rb'\x10[\x30-\x39]\x02'  # DLE + digit + STX

        matches = list(re.finditer(patron_frame, data))
        print(f"Patrones DLE+PUMP+STX encontrados: {len(matches)}")

        for match in matches[:10]:
            pos = match.start()

            # Contexto extendido
            inicio = max(0, pos - 5)
            fin = min(len(data), pos + 30)
            contexto = data[inicio:fin]

            print(f"\nPosicion: 0x{pos:08x}")
            print(f"HEX: {contexto.hex()}")

            # Decodificar
            if len(contexto) >= 10:
                rel_pos = pos - inicio
                print(f"  DLE: 0x{contexto[rel_pos]:02x}")
                print(f"  PUMP_ID: 0x{contexto[rel_pos+1]:02x} ('{chr(contexto[rel_pos+1])}')")
                print(f"  STX: 0x{contexto[rel_pos+2]:02x}")

                # Siguiente 3 bytes (posible comando)
                if rel_pos + 5 < len(contexto):
                    posible_cmd = contexto[rel_pos+3:rel_pos+6]
                    try:
                        cmd_str = posible_cmd.decode('ascii')
                        print(f"  Posible CMD: {cmd_str}")
                        if cmd_str == '030':
                            print(f"  *** ENCONTRADO COMANDO 030 ***")
                            # Mostrar siguiente 15 bytes
                            siguiente = contexto[rel_pos+6:rel_pos+21]
                            print(f"  Siguiente: {siguiente.hex()}")
                            print(f"  ASCII: {''.join(chr(b) if 32 <= b <= 126 else '.' for b in siguiente)}")
                    except:
                        pass

    def _buscar_referencias_authorize(self, data):
        """Busca referencias a authorize, preset, hose cerca de 030"""
        print("\n\n3. REFERENCIAS A AUTHORIZE/PRESET CERCA DE '030'")
        print("-" * 70)

        keywords = [
            b'authorize', b'Authorize', b'AUTHORIZE',
            b'preset', b'Preset', b'PRESET',
            b'hose', b'Hose', b'HOSE',
            b'manguera', b'Manguera'
        ]

        # Buscar posiciones de '030'
        posiciones_030 = []
        offset = 0
        while True:
            pos = data.find(b'030', offset)
            if pos == -1:
                break
            posiciones_030.append(pos)
            offset = pos + 1

        # Para cada keyword, buscar si esta cerca de alguna posicion 030
        for keyword in keywords:
            matches = list(re.finditer(keyword, data))
            if not matches:
                continue

            print(f"\n'{keyword.decode()}' encontrado {len(matches)} veces")

            # Ver si alguno esta cerca de '030'
            for match in matches:
                pos_keyword = match.start()

                # Buscar 030 mas cercano
                distancias = [abs(pos_keyword - pos_030) for pos_030 in posiciones_030]
                if distancias:
                    min_dist = min(distancias)
                    if min_dist < 200:  # Menos de 200 bytes de distancia
                        idx_cercano = distancias.index(min_dist)
                        pos_030_cercano = posiciones_030[idx_cercano]

                        print(f"  Posicion: 0x{pos_keyword:08x}, distancia a 030: {min_dist} bytes")

                        # Mostrar contexto
                        inicio = min(pos_keyword, pos_030_cercano)
                        fin = max(pos_keyword, pos_030_cercano) + 10
                        contexto = data[inicio:fin]
                        print(f"  Contexto: {''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto[:80])}")

    def _buscar_patrones_manguera(self, data):
        """Busca patrones que indiquen especificacion de manguera"""
        print("\n\n4. PATRONES DE ESPECIFICACION DE MANGUERA")
        print("-" * 70)

        # Buscar "030" seguido de digitos
        # Patron: 030 + 1-2 digitos consecutivos
        patrones = [
            rb'030[\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39]',  # 030 + 10 digitos
            rb'030[\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39]',  # 030 + 9 digitos
            rb'030[\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39][\x30-\x39]',  # 030 + 8 digitos
        ]

        for i, patron in enumerate(patrones):
            matches = list(re.finditer(patron, data))
            if matches:
                print(f"\nPatron '030' + {10-i} digitos: {len(matches)} encontrados")

                for match in matches[:5]:
                    pos = match.start()
                    texto = match.group().decode('ascii', errors='ignore')

                    print(f"  Pos 0x{pos:08x}: {texto}")

                    # Analizar los digitos
                    if len(texto) >= 4:
                        digitos = texto[3:]  # Despues de '030'
                        print(f"    Digitos: {digitos}")

                        # Intentar parsear como: hose + tipo + monto
                        if len(digitos) >= 9:
                            posible_hose = digitos[0]
                            posible_tipo = digitos[1]
                            posible_monto = digitos[2:10]
                            print(f"    Posible: H={posible_hose}, T={posible_tipo}, Monto={posible_monto}")

    def _buscar_concatenacion(self, data):
        """Busca patrones de concatenacion de strings"""
        print("\n\n5. PATRONES DE CONCATENACION")
        print("-" * 70)

        # Buscar operador & en VB6 (concatenacion)
        # Buscar "030" + " & " + algo
        patrones_concat = [
            rb'030.{0,5}&',  # 030 seguido de & (concatenacion VB6)
            rb'Chr\$\(.{1,5}\).{0,5}030',  # Chr$() antes de 030
            rb'030.{0,5}Chr\$',  # 030 seguido de Chr$()
        ]

        for patron in patrones_concat:
            matches = list(re.finditer(patron, data, re.DOTALL))
            if matches:
                patron_str = patron.decode('ascii', errors='ignore')
                print(f"\nPatron '{patron_str}': {len(matches)} encontrados")

                for match in matches[:3]:
                    pos = match.start()
                    # Contexto extendido
                    inicio = max(0, pos - 20)
                    fin = min(len(data), pos + 40)
                    contexto = data[inicio:fin]

                    ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
                    print(f"  Pos 0x{pos:08x}: {ascii_ctx}")

    def generar_reporte(self):
        """Genera reporte detallado"""
        print("\n\n" + "="*70)
        print("GENERANDO REPORTE")
        print("="*70)

        with open("ANALISIS_VB6_PROFUNDO.md", 'w') as f:
            f.write("# ANALISIS PROFUNDO DE CODIGO VB6 - COMANDO AUTHORIZE\n\n")
            f.write("Busqueda exhaustiva del formato exacto del comando 030\n\n")
            f.write("---\n\n")

            # Resumen de secuencias 030
            f.write("## SECUENCIAS '030' ENCONTRADAS\n\n")
            if 'secuencias_030' in self.hallazgos:
                total = len(self.hallazgos['secuencias_030'])
                f.write(f"Total: {total} apariciones\n\n")

                # Las 20 mas interesantes
                interesantes = sorted(
                    self.hallazgos['secuencias_030'],
                    key=lambda x: x['digitos_despues'],
                    reverse=True
                )

                f.write("### Top 20 con mas digitos despues (posibles parametros)\n\n")
                for item in interesantes[:20]:
                    f.write(f"#### Posicion: 0x{item['pos']:08x}\n\n")
                    f.write(f"- Digitos antes: {item['digitos_antes']}\n")
                    f.write(f"- Digitos despues: {item['digitos_despues']}\n\n")
                    f.write(f"```\n")
                    f.write(f"ASCII: {item['contexto_ascii']}\n")
                    f.write(f"HEX:   {item['contexto_hex']}\n")
                    f.write(f"```\n\n")

            f.write("---\n\n")
            f.write("## ANALISIS Y CONCLUSIONES\n\n")
            f.write("Revisar las secuencias con mas digitos despues de '030'.\n")
            f.write("Esos digitos probablemente son los parametros del comando.\n\n")

        print("\nReporte generado: ANALISIS_VB6_PROFUNDO.md")


def main():
    """Funcion principal"""
    carpeta = Path("/home/user/api-spriconsole/codigodev6")

    if not carpeta.exists():
        print(f"ERROR: No existe {carpeta}")
        return 1

    analizador = AnalizadorProfundoVB6(carpeta)
    analizador.analizar_forecourt()
    analizador.generar_reporte()

    print("\n" + "="*70)
    print("ANALISIS COMPLETADO")
    print("="*70)
    print("\nRevisar: ANALISIS_VB6_PROFUNDO.md")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
