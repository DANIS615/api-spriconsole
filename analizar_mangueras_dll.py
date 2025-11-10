#!/usr/bin/env python3
"""
Analizar Especificacion de Mangueras en DLLs
Busca como se selecciona la manguera en comandos Gilbarco
"""

import re
from pathlib import Path
from collections import defaultdict

class AnalizadorMangueras:
    """Busca informacion sobre seleccion de mangueras"""

    def __init__(self, carpeta_dll):
        self.carpeta = Path(carpeta_dll)
        self.hallazgos = defaultdict(list)

    def analizar_dlls(self):
        """Analiza todos los DLLs"""
        print("="*60)
        print("BUSCANDO ESPECIFICACION DE MANGUERAS EN DLLs")
        print("="*60)

        dlls = list(self.carpeta.glob("*.dll"))
        print(f"\nDLLs encontrados: {len(dlls)}\n")

        for dll in dlls:
            print(f"\nAnalizando: {dll.name}")
            self._analizar_dll(dll)

    def _analizar_dll(self, dll_path):
        """Analiza un DLL buscando info de mangueras"""
        try:
            # Leer como binario
            data = dll_path.read_bytes()

            # Buscar strings
            strings = self._extraer_strings(data)

            # 1. Buscar referencias a manguera/hose/nozzle
            self._buscar_referencias_manguera(strings, dll_path.name)

            # 2. Buscar formato de comando con manguera
            self._buscar_formato_comando(strings, dll_path.name)

            # 3. Buscar numeros de manguera
            self._buscar_numeros_manguera(strings, dll_path.name)

            # 4. Buscar secuencias sospechosas
            self._buscar_secuencias_authorize(data, dll_path.name)

        except Exception as e:
            print(f"  ERROR: {e}")

    def _extraer_strings(self, data):
        """Extrae strings del binario"""
        # Buscar strings ASCII imprimibles de 4+ caracteres
        pattern = b'[\x20-\x7E]{4,}'
        matches = re.findall(pattern, data)
        return [m.decode('ascii', errors='ignore') for m in matches]

    def _buscar_referencias_manguera(self, strings, dll_name):
        """Busca referencias a manguera"""
        keywords = [
            'hose', 'nozzle', 'manguera', 'side',
            'pump.*hose', 'hose.*id', 'hose.*number',
            'select.*hose', 'hose.*select'
        ]

        encontrados = []
        for s in strings:
            for keyword in keywords:
                if re.search(keyword, s, re.IGNORECASE):
                    encontrados.append(s)
                    break

        if encontrados:
            print(f"  Referencias a manguera: {len(encontrados)}")
            for e in encontrados[:5]:
                print(f"    {e[:80]}")
            if len(encontrados) > 5:
                print(f"    ... y {len(encontrados)-5} mas")

            self.hallazgos['manguera_refs'].append({
                'dll': dll_name,
                'strings': encontrados
            })

    def _buscar_formato_comando(self, strings, dll_name):
        """Busca formato de comandos con parametros"""
        # Buscar strings tipo: "030", "authorize", formato, etc
        patrones = [
            r'030.*',  # Comando 030
            r'authorize.*preset',
            r'preset.*hose',
            r'hose.*preset',
            r'\d{8}',  # 8 digitos (formato preset)
            r'\d{10}',  # 10 digitos (formato completo?)
        ]

        encontrados = []
        for s in strings:
            for patron in patrones:
                if re.search(patron, s, re.IGNORECASE):
                    if len(s) < 100:  # Solo strings cortos
                        encontrados.append(s)
                    break

        if encontrados:
            print(f"  Formato comando: {len(encontrados)}")
            for e in encontrados[:5]:
                print(f"    {e}")
            if len(encontrados) > 5:
                print(f"    ... y {len(encontrados)-5} mas")

            self.hallazgos['formato_comando'].append({
                'dll': dll_name,
                'strings': encontrados
            })

    def _buscar_numeros_manguera(self, strings, dll_name):
        """Busca patrones de numeracion de mangueras"""
        # Buscar: "hose 1", "hose:1", "side 1", etc
        patron = r'(hose|nozzle|side|manguera)[\s:=]+(\d)'

        encontrados = []
        for s in strings:
            matches = re.findall(patron, s, re.IGNORECASE)
            if matches:
                encontrados.append(s)

        if encontrados:
            print(f"  Numeros de manguera: {len(encontrados)}")
            for e in encontrados[:5]:
                print(f"    {e[:80]}")

            self.hallazgos['numeros_manguera'].append({
                'dll': dll_name,
                'strings': encontrados
            })

    def _buscar_secuencias_authorize(self, data, dll_name):
        """Busca secuencias binarias que parezcan comandos AUTHORIZE"""
        # Buscar patron: "030" + algo mas
        # En ASCII: 30 33 30 = "030"
        patron = b'030'

        posiciones = []
        offset = 0
        while True:
            pos = data.find(patron, offset)
            if pos == -1:
                break

            # Extraer contexto: 10 bytes antes y 20 despues
            inicio = max(0, pos - 10)
            fin = min(len(data), pos + 20)
            contexto = data[inicio:fin]

            posiciones.append({
                'pos': pos,
                'contexto_hex': contexto.hex(),
                'contexto_ascii': ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
            })

            offset = pos + 1

        if posiciones:
            print(f"  Secuencias '030' encontradas: {len(posiciones)}")
            # Mostrar primeras 3
            for p in posiciones[:3]:
                print(f"    Pos {p['pos']:08x}: {p['contexto_ascii']}")
                print(f"             HEX: {p['contexto_hex']}")

            self.hallazgos['secuencias_030'].append({
                'dll': dll_name,
                'cantidad': len(posiciones),
                'ejemplos': posiciones[:5]
            })

    def generar_reporte(self, output_file):
        """Genera reporte de hallazgos"""
        print(f"\n{'='*60}")
        print("GENERANDO REPORTE")
        print(f"{'='*60}")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write("# ANALISIS DE MANGUERAS EN DLLs GILBARCO\n\n")
            f.write("Busqueda de como especificar manguera en comandos\n\n")
            f.write("---\n\n")

            # Referencias a manguera
            f.write("## REFERENCIAS A MANGUERA/HOSE\n\n")
            if self.hallazgos['manguera_refs']:
                for item in self.hallazgos['manguera_refs']:
                    f.write(f"### {item['dll']}\n\n")
                    for s in item['strings'][:10]:
                        f.write(f"- `{s}`\n")
                    f.write("\n")
            else:
                f.write("No se encontraron referencias directas\n\n")

            # Formato de comando
            f.write("## FORMATO DE COMANDO\n\n")
            if self.hallazgos['formato_comando']:
                for item in self.hallazgos['formato_comando']:
                    f.write(f"### {item['dll']}\n\n")
                    for s in item['strings'][:10]:
                        f.write(f"- `{s}`\n")
                    f.write("\n")
            else:
                f.write("No se encontraron formatos especificos\n\n")

            # Numeros de manguera
            f.write("## NUMERACION DE MANGUERAS\n\n")
            if self.hallazgos['numeros_manguera']:
                for item in self.hallazgos['numeros_manguera']:
                    f.write(f"### {item['dll']}\n\n")
                    for s in item['strings'][:10]:
                        f.write(f"- `{s}`\n")
                    f.write("\n")
            else:
                f.write("No se encontraron numeraciones\n\n")

            # Secuencias 030
            f.write("## SECUENCIAS DE COMANDO 030\n\n")
            if self.hallazgos['secuencias_030']:
                for item in self.hallazgos['secuencias_030']:
                    f.write(f"### {item['dll']} - {item['cantidad']} apariciones\n\n")
                    for ej in item['ejemplos']:
                        f.write(f"Posicion: 0x{ej['pos']:08x}\n")
                        f.write(f"```\n")
                        f.write(f"ASCII: {ej['contexto_ascii']}\n")
                        f.write(f"HEX:   {ej['contexto_hex']}\n")
                        f.write(f"```\n\n")
            else:
                f.write("No se encontraron secuencias 030\n\n")

            # Hipotesis
            f.write("---\n\n")
            f.write("## HIPOTESIS DE FORMATO\n\n")
            f.write("Basado en protocolos Gilbarco estandar:\n\n")
            f.write("### Opcion 1: Manguera en comando\n")
            f.write("```\n")
            f.write("030[HOSE][TIPO][MONTO]\n")
            f.write("   1      1     8 digitos\n\n")
            f.write("Ejemplo: 030 1 1 00000500\n")
            f.write("         └── manguera 1\n")
            f.write("           └── tipo 1 (monto)\n")
            f.write("             └── $5.00\n")
            f.write("```\n\n")

            f.write("### Opcion 2: Manguera despues de tipo\n")
            f.write("```\n")
            f.write("030[TIPO][HOSE][MONTO]\n")
            f.write("   1      1     8 digitos\n\n")
            f.write("Ejemplo: 030 1 1 00000500\n")
            f.write("         └── tipo 1 (monto)\n")
            f.write("           └── manguera 1\n")
            f.write("             └── $5.00\n")
            f.write("```\n\n")

            f.write("### Opcion 3: Manguera en PUMP_ID\n")
            f.write("```\n")
            f.write("DLE [PUMP_ID][HOSE] STX 030...\n\n")
            f.write("Ejemplo: 10 31 31 02 030...\n")
            f.write("         └─────┴─ pump=1, hose=1\n")
            f.write("```\n\n")

            f.write("### Opcion 4: Comando separado\n")
            f.write("```\n")
            f.write("Primero seleccionar manguera: 0XX[HOSE]\n")
            f.write("Luego enviar AUTHORIZE: 030...\n")
            f.write("```\n\n")

        print(f"\nReporte generado: {output_file}")


def main():
    """Funcion principal"""
    # Buscar en multiples ubicaciones
    carpetas = [
        Path("/home/user/api-spriconsole/Smart Ship Factory/Spirit/bin/pumps"),
        Path("/home/user/api-spriconsole/Smart Ship Factory/Spirit/bin/communications"),
    ]

    # Analizar cada carpeta
    for carpeta_dll in carpetas:
        if not carpeta_dll.exists():
            print(f"Saltando {carpeta_dll} (no existe)")
            continue

        analizador = AnalizadorMangueras(carpeta_dll)
        analizador.analizar_dlls()

    # Generar reporte final
    analizador.generar_reporte("ANALISIS_MANGUERAS_DLL.md")

    print("\n" + "="*60)
    print("ANALISIS COMPLETADO")
    print("="*60)
    print("\nRevisa: ANALISIS_MANGUERAS_DLL.md")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
