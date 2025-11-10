#!/usr/bin/env python3
"""
Buscar Formato del Comando 030 en Binarios
Analiza el DLL de Gilbarco para encontrar el formato exacto
"""

from pathlib import Path
import re

def buscar_patron_030(dll_path):
    """Busca patron 030 en binario"""
    print(f"Analizando: {dll_path.name}")
    print("="*60)

    data = dll_path.read_bytes()

    # Buscar "030" en ASCII
    patron_ascii = b'030'
    # Buscar en formato texto legible alrededor
    patron_formato = rb'030[\x30-\x39]{8,15}'  # 030 seguido de 8-15 digitos

    print("\n1. BUSCANDO '030' CON DIGITOS:")
    matches = re.finditer(patron_formato, data)
    encontrados = []
    for match in matches:
        pos = match.start()
        texto = match.group().decode('ascii', errors='ignore')
        # Extraer contexto
        inicio = max(0, pos - 20)
        fin = min(len(data), pos + 30)
        contexto = data[inicio:fin]
        contexto_ascii = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)

        encontrados.append({
            'pos': pos,
            'texto': texto,
            'contexto': contexto_ascii,
            'hex': contexto.hex()
        })

    if encontrados:
        print(f"Encontrados: {len(encontrados)}")
        for item in encontrados[:5]:
            print(f"\nPosicion: 0x{item['pos']:08x}")
            print(f"Texto: {item['texto']}")
            print(f"ASCII: {item['contexto']}")
            print(f"HEX:   {item['hex']}")
    else:
        print("No encontrado")

    # Buscar strings con preset/authorize
    print("\n\n2. STRINGS CON 'PRESET':")
    strings_preset = []
    for match in re.finditer(rb'[\x20-\x7E]{10,100}', data):
        text = match.group().decode('ascii', errors='ignore')
        if 'preset' in text.lower() and ('030' in text or 'hose' in text.lower()):
            strings_preset.append(text)

    if strings_preset:
        for s in strings_preset[:10]:
            print(f"  {s}")
    else:
        print("  No encontrado")

    # Buscar patron especifico: comando + numero de 1 digito
    print("\n\n3. PATRON '030' + 1 DIGITO:")
    patron_con_digito = rb'030[\x30-\x39]'  # 030 + un digito (0-9)
    matches = re.finditer(patron_con_digito, data)
    for match in list(matches)[:5]:
        pos = match.start()
        texto = match.group().decode('ascii')

        # Contexto extendido
        inicio = max(0, pos - 10)
        fin = min(len(data), pos + 20)
        contexto = data[inicio:fin]
        contexto_ascii = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)

        print(f"\nPos 0x{pos:08x}: {texto}")
        print(f"  ASCII: {contexto_ascii}")
        print(f"  HEX:   {contexto.hex()}")

    # Buscar formato con STX/DLE
    print("\n\n4. PATRON CON STX (0x02):")
    # DLE STX ... 030...
    patron_stx = rb'\x10[\x30-\x39]\x02030'
    matches = re.finditer(patron_stx, data)
    for match in list(matches)[:5]:
        pos = match.start()

        # Contexto extendido
        inicio = max(0, pos)
        fin = min(len(data), pos + 25)
        contexto = data[inicio:fin]
        contexto_ascii = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)

        print(f"\nPos 0x{pos:08x}:")
        print(f"  HEX:   {contexto.hex()}")
        print(f"  ASCII: {contexto_ascii}")

        # Decodificar
        if len(contexto) >= 10:
            print(f"  DLE: 0x{contexto[0]:02x}")
            print(f"  PUMP_ID: 0x{contexto[1]:02x} ('{chr(contexto[1])}')")
            print(f"  STX: 0x{contexto[2]:02x}")
            print(f"  CMD: {contexto[3:6].decode('ascii', errors='ignore')}")
            print(f"  DATA: {contexto[6:].hex()}")


def main():
    """Funcion principal"""
    dll_path = Path("/home/user/api-spriconsole/Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll")

    if not dll_path.exists():
        print(f"ERROR: No existe {dll_path}")
        return 1

    buscar_patron_030(dll_path)

    print("\n\n" + "="*60)
    print("ANALISIS COMPLETADO")
    print("="*60)

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
