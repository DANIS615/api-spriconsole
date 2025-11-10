#!/usr/bin/env python3
"""
Buscar Comandos Gilbarco en Codigo VB6
Analiza archivos .bas y .123 para encontrar comandos del protocolo
"""

import re
from pathlib import Path
from collections import defaultdict

class BuscadorComandosVB6:
    """Busca comandos en codigo VB6"""

    def __init__(self, carpeta_codigo):
        self.carpeta = Path(carpeta_codigo)
        self.comandos_encontrados = defaultdict(list)
        self.constantes_encontradas = []
        self.funciones_comunicacion = []

    def analizar_archivos(self):
        """Analiza archivos VB6"""
        print("="*60)
        print("BUSCADOR DE COMANDOS EN CODIGO VB6")
        print("="*60)

        # Archivos prioritarios
        archivos_prioritarios = [
            "Mod_drv.bas",
            "FORECOURT.123",
            "Constantes.bas",
            "ModAplic.bas",
            "modDll.bas",
        ]

        for nombre_archivo in archivos_prioritarios:
            archivo = self.carpeta / nombre_archivo
            if archivo.exists():
                print(f"\nAnalizando: {nombre_archivo}")
                self._analizar_archivo(archivo)
            else:
                print(f"\nNo encontrado: {nombre_archivo}")

    def _analizar_archivo(self, archivo_path):
        """Analiza un archivo VB6 buscando comandos"""
        try:
            # Leer archivo (puede ser ANSI/Latin-1)
            try:
                content = archivo_path.read_text(encoding='latin-1')
            except:
                content = archivo_path.read_text(encoding='utf-8', errors='ignore')

            # 1. Buscar comandos Gilbarco (formato "016", "030", etc)
            self._buscar_comandos_gilbarco(content, archivo_path.name)

            # 2. Buscar constantes relacionadas
            self._buscar_constantes(content, archivo_path.name)

            # 3. Buscar funciones de comunicacion
            self._buscar_funciones_comm(content, archivo_path.name)

            # 4. Buscar strings de protocolo
            self._buscar_strings_protocolo(content, archivo_path.name)

        except Exception as e:
            print(f"  ERROR: {e}")

    def _buscar_comandos_gilbarco(self, content, archivo):
        """Busca comandos Gilbarco formato 0XX"""
        print(f"  1. Comandos Gilbarco:")

        # Patrones para VB6
        patrones = [
            # Constantes VB6: Const CMD_STATUS = "016"
            r'Const\s+(\w+)\s*=\s*["\']0(\d{2})["\']',
            # Asignaciones: cmdStr = "016"
            r'(\w+)\s*=\s*["\']0(\d{2})["\']',
            # En CHR$(): Chr$(16) & Chr$(2) & "016"
            r'["\']0(\d{2})["\']',
            # Comentarios: ' Comando 016 - READ STATUS
            r"'\s*Comando\s+0(\d{2})\s*-\s*(.+?)$",
        ]

        comandos = {}
        for patron in patrones:
            matches = re.finditer(patron, content, re.MULTILINE | re.IGNORECASE)
            for match in matches:
                if len(match.groups()) >= 2 and match.group(2).isdigit():
                    # Caso: Const NOMBRE = "0XX"
                    nombre_var = match.group(1)
                    codigo = f"0{match.group(2)}"
                    comandos[codigo] = nombre_var
                elif len(match.groups()) == 1:
                    # Caso: solo "0XX"
                    codigo = f"0{match.group(1)}"
                    if codigo not in comandos:
                        comandos[codigo] = "?"

        if comandos:
            for codigo in sorted(comandos.keys()):
                nombre = comandos[codigo]
                print(f"    {codigo}: {nombre}")
                self.comandos_encontrados[codigo].append({
                    'archivo': archivo,
                    'nombre': nombre
                })
        else:
            print(f"    Ninguno")

    def _buscar_constantes(self, content, archivo):
        """Busca constantes relacionadas con comunicacion"""
        print(f"  2. Constantes de comunicacion:")

        # Buscar bloques de constantes
        patrones = [
            r'Const\s+(DLE|STX|ETX|ACK|NAK)\s*=\s*(&H[\dA-F]+|\d+)',
            r'Const\s+(CMD_\w+)\s*=\s*["\']([^"\']+)["\']',
            r'Const\s+(BAUD\w*)\s*=\s*(\d+)',
        ]

        encontradas = []
        for patron in patrones:
            matches = re.findall(patron, content, re.IGNORECASE)
            for match in matches:
                nombre, valor = match
                encontradas.append(f"{nombre} = {valor}")

        if encontradas:
            # Mostrar solo primeras 10
            for const in encontradas[:10]:
                print(f"    {const}")
            if len(encontradas) > 10:
                print(f"    ... y {len(encontradas)-10} mas")
        else:
            print(f"    Ninguna")

    def _buscar_funciones_comm(self, content, archivo):
        """Busca funciones de comunicacion"""
        print(f"  3. Funciones de comunicacion:")

        patrones = [
            r'(?:Function|Sub)\s+(Send\w+)\s*\(',
            r'(?:Function|Sub)\s+(Read\w+)\s*\(',
            r'(?:Function|Sub)\s+(Authorize\w*)\s*\(',
            r'(?:Function|Sub)\s+(Preset\w*)\s*\(',
            r'(?:Function|Sub)\s+(\w*Status\w*)\s*\(',
            r'(?:Function|Sub)\s+(\w*Totalizer\w*)\s*\(',
        ]

        funciones = set()
        for patron in patrones:
            matches = re.findall(patron, content, re.IGNORECASE)
            funciones.update(matches)

        if funciones:
            for func in sorted(funciones)[:15]:
                print(f"    {func}()")
            if len(funciones) > 15:
                print(f"    ... y {len(funciones)-15} mas")
        else:
            print(f"    Ninguna")

    def _buscar_strings_protocolo(self, content, archivo):
        """Busca strings relacionados con protocolo"""
        print(f"  4. Strings de protocolo:")

        # Buscar strings que mencionan comandos
        keywords = [
            'slot', 'pump', 'hose', 'authorize', 'preset',
            'totalizer', 'status', 'GPBox', 'Gilbarco'
        ]

        encontrados = []
        for keyword in keywords:
            # Buscar comentarios que mencionen la palabra
            pattern = rf"'\s*.*{keyword}.*$"
            matches = re.findall(pattern, content, re.IGNORECASE | re.MULTILINE)
            if matches:
                encontrados.append(f"{keyword}: {len(matches)} menciones")

        if encontrados:
            for item in encontrados[:10]:
                print(f"    {item}")
        else:
            print(f"    Ninguno")

    def generar_reporte(self, output_file):
        """Genera reporte de comandos encontrados"""
        print(f"\n{'='*60}")
        print("GENERANDO REPORTE")
        print(f"{'='*60}")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write("# COMANDOS GILBARCO ENCONTRADOS EN CODIGO VB6\n\n")
            f.write("Analisis de codigo fuente descompilado\n\n")
            f.write("---\n\n")

            # Comandos encontrados
            f.write("## COMANDOS GILBARCO\n\n")
            if self.comandos_encontrados:
                f.write("| Codigo | Nombre Variable | Archivos |\n")
                f.write("|--------|-----------------|----------|\n")

                for codigo in sorted(self.comandos_encontrados.keys()):
                    items = self.comandos_encontrados[codigo]
                    nombres = set(item['nombre'] for item in items)
                    archivos = set(item['archivo'] for item in items)

                    nombres_str = ', '.join(nombres)
                    archivos_str = ', '.join(archivos)

                    f.write(f"| {codigo} | {nombres_str} | {archivos_str} |\n")
            else:
                f.write("No se encontraron comandos en el codigo\n")

            f.write("\n---\n\n")

            # Mapeo comando -> funcion
            f.write("## FUNCIONES POR COMANDO\n\n")
            f.write("Basado en nombres de constantes y funciones:\n\n")

            mapeo = {
                '016': 'READ STATUS - Leer estado de bomba',
                '030': 'AUTHORIZE - Autorizar bomba con preset',
                '031': 'STOP - Detener bomba',
                '020': 'READ TOTALIZERS - Leer totalizadores',
                '025': 'SET PRICE - Cambiar precio',
                '000': 'RESET - Resetear bomba',
            }

            for cmd, desc in mapeo.items():
                f.write(f"- **{cmd}**: {desc}\n")

            f.write("\n---\n\n")

            # Proximos pasos
            f.write("## PROXIMOS PASOS\n\n")
            f.write("1. Revisar archivo `Mod_drv.bas` linea por linea\n")
            f.write("2. Buscar funcion que construye frames Gilbarco\n")
            f.write("3. Identificar todos los comandos usados\n")
            f.write("4. Probar cada comando con hardware\n")

        print(f"\nReporte generado: {output_file}")


def main():
    """Funcion principal"""
    print("\n" + "="*60)
    print("BUSCAR COMANDOS EN CODIGO VB6")
    print("="*60)

    carpeta_codigo = Path("/home/user/api-spriconsole/codigodev6")

    if not carpeta_codigo.exists():
        print(f"\nERROR: No existe carpeta {carpeta_codigo}")
        return 1

    buscador = BuscadorComandosVB6(carpeta_codigo)
    buscador.analizar_archivos()
    buscador.generar_reporte("COMANDOS_VB6.md")

    print("\n" + "="*60)
    print("ANALISIS COMPLETADO")
    print("="*60)
    print("\nRevisa: COMANDOS_VB6.md")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
