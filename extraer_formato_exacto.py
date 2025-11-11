#!/usr/bin/env python3
"""
Extraer Formato Exacto del Comando AUTHORIZE
Usa tecnicas avanzadas para encontrar el formato del comando 030
"""

from pathlib import Path
import re

def analizar_dll_gilbarco():
    """Analiza el DLL de Gilbarco buscando formato exacto"""
    dll_path = Path("/home/user/api-spriconsole/Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll")

    print("="*70)
    print("EXTRACCION DE FORMATO EXACTO DEL COMANDO 030")
    print("="*70)

    if not dll_path.exists():
        print(f"ERROR: No existe {dll_path}")
        return

    data = dll_path.read_bytes()

    # 1. Buscar "iaSendPumpMoneyPreset" y ver codigo alrededor
    buscar_funcion_preset(data)

    # 2. Buscar formato de especificadores %
    buscar_especificadores_formato(data)

    # 3. Buscar secuencias de construccion de string
    buscar_construccion_string(data)

    # 4. Buscar patrones conocidos de Gilbarco
    buscar_patrones_gilbarco(data)


def buscar_funcion_preset(data):
    """Busca la funcion de preset y su codigo"""
    print("\n1. BUSCANDO FUNCION iaSendPumpMoneyPreset")
    print("-" * 70)

    funciones = [
        b'iaSendPumpMoneyPreset',
        b'iaSendPumpVolumePreset',
        b'SSFPumpGilbarco::iaSendPumpMoneyPreset',
        b'SSFPumpGilbarco::iaSendPumpVolumePreset',
    ]

    for func_name in funciones:
        pos = data.find(func_name)
        if pos != -1:
            print(f"\nEncontrado: {func_name.decode()} en posicion 0x{pos:08x}")

            # Contexto extendido: 200 bytes antes y despues
            inicio = max(0, pos - 200)
            fin = min(len(data), pos + 200)
            contexto = data[inicio:fin]

            # Buscar "030" cerca
            if b'030' in contexto:
                pos_030 = contexto.find(b'030')
                print(f"  '030' encontrado a {pos_030 - (pos - inicio)} bytes de distancia")

                # Mostrar alrededor de 030
                ctx_030_inicio = max(0, pos_030 - 30)
                ctx_030_fin = min(len(contexto), pos_030 + 50)
                ctx_030 = contexto[ctx_030_inicio:ctx_030_fin]

                print(f"  Contexto de '030':")
                print(f"    HEX: {ctx_030.hex()}")
                ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in ctx_030)
                print(f"    ASCII: {ascii_ctx}")


def buscar_especificadores_formato(data):
    """Busca especificadores de formato tipo sprintf"""
    print("\n\n2. BUSCANDO ESPECIFICADORES DE FORMATO")
    print("-" * 70)

    # Buscar "030" + especificadores %
    patrones = [
        rb'030%\w',  # 030%d, 030%s, etc
        rb'%\w.*030',  # %d...030
        rb'030.*%0\dd',  # 030...%02d, %08d
    ]

    for patron in patrones:
        matches = list(re.finditer(patron, data))
        if matches:
            print(f"\nPatron '{patron.decode('ascii', errors='ignore')}': {len(matches)} encontrados")

            for match in matches[:3]:
                pos = match.start()
                # Contexto
                inicio = max(0, pos - 20)
                fin = min(len(data), pos + 40)
                contexto = data[inicio:fin]

                ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
                print(f"  Pos 0x{pos:08x}: {ascii_ctx}")


def buscar_construccion_string(data):
    """Busca construccion de strings tipo sprintf"""
    print("\n\n3. BUSCANDO CONSTRUCCION DE STRINGS")
    print("-" * 70)

    # Buscar patrones de sprintf con "030"
    # sprintf(buffer, "030%d%08d", hose, amount)
    patron_sprintf = rb'sprintf.*030'

    matches = list(re.finditer(patron_sprintf, data, re.DOTALL))
    print(f"Patrones sprintf con 030: {len(matches)}")

    for match in matches[:3]:
        pos = match.start()
        inicio = max(0, pos - 10)
        fin = min(len(data), pos + 60)
        contexto = data[inicio:fin]

        ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
        print(f"\nPos 0x{pos:08x}:")
        print(f"  {ascii_ctx}")


def buscar_patrones_gilbarco(data):
    """Busca patrones conocidos de Gilbarco"""
    print("\n\n4. PATRONES CONOCIDOS DE GILBARCO")
    print("-" * 70)

    # Basado en documentacion de Gilbarco, formatos comunes:
    formatos_comunes = [
        # Formato 1: CMD + HOSE + TYPE + DATA
        (b'030[1-9][0-9]{8}', "030 + HOSE(1) + DATA(8)"),
        # Formato 2: CMD + TYPE + HOSE + DATA
        (b'030[0-2][1-9][0-9]{7}', "030 + TYPE(1) + HOSE(1) + DATA(7)"),
    ]

    print("\nBuscando patrones basados en protocolos Gilbarco estandar:")

    for patron_bytes, desc in formatos_comunes:
        # Convertir patron regex a string para buscar
        print(f"\n{desc}")

        # Buscar manualmente 030 + digitos
        offset = 0
        encontrados = 0
        while True:
            pos = data.find(b'030', offset)
            if pos == -1:
                break

            # Ver si seguido de 9-10 digitos
            siguiente = data[pos+3:pos+13]
            if len(siguiente) >= 8:
                # Contar digitos ASCII
                digitos = sum(1 for b in siguiente if 0x30 <= b <= 0x39)

                if digitos >= 8:
                    encontrados += 1
                    if encontrados <= 3:  # Mostrar solo primeros 3
                        try:
                            texto = siguiente[:10].decode('ascii', errors='ignore')
                            print(f"  Pos 0x{pos:08x}: 030{texto}")

                            # Analizar formato
                            if len(texto) >= 9:
                                print(f"    Posible: H={texto[0]}, T={texto[1]}, Monto={texto[2:10]}")
                        except:
                            pass

            offset = pos + 1

        print(f"  Total encontrados: {encontrados}")


def generar_hipotesis():
    """Genera hipotesis del formato"""
    print("\n\n" + "="*70)
    print("HIPOTESIS BASADA EN ANALISIS")
    print("="*70)

    print("""
Basado en:
1. Strings encontrados en DLL: "PRESET POR HOSE"
2. Funciones: iaSendPumpMoneyPreset, iaSendPumpVolumePreset
3. Protocolos Gilbarco estandar

FORMATOS MAS PROBABLES (ordenados por probabilidad):

1. 030[H][T][MONTO____] (10 caracteres)
   Ejemplo: 030110000500
   - H = Hose ID (1 digito: 1-9)
   - T = Tipo (1 digito: 0=full, 1=money, 2=volume)
   - MONTO = 8 digitos (00000500 = $5.00 o 5.00 litros)

2. 030[T][H][MONTO____] (10 caracteres)
   Ejemplo: 030110000500
   - T = Tipo (1 digito)
   - H = Hose ID (1 digito)
   - MONTO = 8 digitos

3. 030[HH][T][MONTO___] (11 caracteres)
   Ejemplo: 0300110000500
   - HH = Hose ID (2 digitos: 01-12)
   - T = Tipo (1 digito)
   - MONTO = 8 digitos

RECOMENDACION:
Probar formato 1 primero, ya que es el mas comun en Gilbarco Encore/Legacy.
    """)


def main():
    """Funcion principal"""
    analizar_dll_gilbarco()
    generar_hipotesis()

    print("\n" + "="*70)
    print("ANALISIS COMPLETADO")
    print("="*70)
    print("\nProximos pasos:")
    print("1. Ejecutar: python probar_formato_authorize.py COM1 1")
    print("2. Probar formatos en orden de probabilidad")
    print("3. Reportar cual funciona")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
