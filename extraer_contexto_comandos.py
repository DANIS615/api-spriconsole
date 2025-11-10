#!/usr/bin/env python3
"""
Extraer Contexto de Comandos Gilbarco
Busca cada comando y muestra las lineas alrededor para entender su funcion
"""

import re
from pathlib import Path

class ExtractorContexto:
    """Extrae contexto de comandos en codigo"""

    def __init__(self, archivo_path):
        self.archivo = Path(archivo_path)
        self.comandos_con_contexto = {}

    def analizar(self):
        """Analiza archivo y extrae contexto"""
        print("="*60)
        print(f"EXTRAYENDO CONTEXTO: {self.archivo.name}")
        print("="*60)

        try:
            content = self.archivo.read_text(encoding='latin-1', errors='ignore')
        except:
            content = self.archivo.read_text(encoding='utf-8', errors='ignore')

        lineas = content.split('\n')

        # Buscar cada comando y su contexto
        for i, linea in enumerate(lineas):
            # Buscar patron "0XX" entre comillas
            matches = re.finditer(r'["\']0(\d{2})["\']', linea)

            for match in matches:
                codigo = f"0{match.group(1)}"

                # Extraer contexto: 3 lineas antes y 2 despues
                inicio = max(0, i-3)
                fin = min(len(lineas), i+3)

                contexto = []
                for j in range(inicio, fin):
                    # Marcar la linea actual
                    prefijo = ">>> " if j == i else "    "
                    contexto.append(f"{prefijo}{lineas[j]}")

                # Limpiar y guardar
                contexto_limpio = self._limpiar_contexto(contexto)

                if codigo not in self.comandos_con_contexto:
                    self.comandos_con_contexto[codigo] = []

                self.comandos_con_contexto[codigo].append({
                    'linea': i+1,
                    'contexto': contexto_limpio
                })

    def _limpiar_contexto(self, contexto):
        """Limpia caracteres no imprimibles"""
        limpio = []
        for linea in contexto:
            # Mantener solo caracteres imprimibles
            linea_limpia = ''.join(c if c.isprintable() or c in '\t\n' else '.' for c in linea)
            # Truncar lineas muy largas
            if len(linea_limpia) > 120:
                linea_limpia = linea_limpia[:117] + "..."
            limpio.append(linea_limpia)
        return limpio

    def mostrar_resultados(self):
        """Muestra resultados en consola"""
        print(f"\nEncontrados {len(self.comandos_con_contexto)} comandos unicos\n")

        # Mostrar solo primeros 10 con contexto detallado
        comandos_mostrar = sorted(self.comandos_con_contexto.keys())[:10]

        for codigo in comandos_mostrar:
            contextos = self.comandos_con_contexto[codigo]
            print(f"\n{'='*60}")
            print(f"COMANDO {codigo} - {len(contextos)} apariciones")
            print(f"{'='*60}")

            # Mostrar solo primera aparicion
            ctx = contextos[0]
            print(f"Linea {ctx['linea']}:")
            for linea in ctx['contexto']:
                print(linea)

    def generar_reporte(self, output_file):
        """Genera reporte completo"""
        print(f"\n{'='*60}")
        print("GENERANDO REPORTE COMPLETO")
        print(f"{'='*60}")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write("# COMANDOS GILBARCO CON CONTEXTO\n\n")
            f.write(f"Extraido de: {self.archivo.name}\n\n")
            f.write(f"Total comandos encontrados: {len(self.comandos_con_contexto)}\n\n")
            f.write("---\n\n")

            # Listar todos los comandos primero
            f.write("## LISTA DE COMANDOS ENCONTRADOS\n\n")
            for codigo in sorted(self.comandos_con_contexto.keys()):
                apariciones = len(self.comandos_con_contexto[codigo])
                f.write(f"- **{codigo}** ({apariciones} apariciones)\n")

            f.write("\n---\n\n")

            # Detalle de cada comando
            f.write("## CONTEXTO DETALLADO\n\n")

            for codigo in sorted(self.comandos_con_contexto.keys()):
                contextos = self.comandos_con_contexto[codigo]
                f.write(f"### Comando {codigo}\n\n")
                f.write(f"Apariciones: {len(contextos)}\n\n")

                # Mostrar primera aparicion con contexto
                ctx = contextos[0]
                f.write(f"```vb\n")
                f.write(f"' Linea {ctx['linea']}\n")
                for linea in ctx['contexto']:
                    f.write(f"{linea}\n")
                f.write(f"```\n\n")

                # Si hay multiples apariciones, listar lineas
                if len(contextos) > 1:
                    otras_lineas = [str(c['linea']) for c in contextos[1:]]
                    f.write(f"Otras apariciones en lineas: {', '.join(otras_lineas[:10])}\n\n")

            f.write("\n---\n\n")

            # Comandos prioritarios basado en lo que ya sabemos
            f.write("## COMANDOS PRIORITARIOS PARA PROBAR\n\n")
            f.write("Basado en hallazgos previos:\n\n")

            prioritarios = [
                ('016', 'READ STATUS - Confirmado funcionando'),
                ('030', 'AUTHORIZE - Autorizar bomba con preset'),
                ('031', 'STOP - Detener bomba'),
                ('020', 'READ TOTALIZERS - Leer totalizadores'),
                ('025', 'SET PRICE - Cambiar precio'),
                ('000', 'RESET - Resetear bomba'),
            ]

            for cmd, desc in prioritarios:
                if cmd in self.comandos_con_contexto:
                    f.write(f"- **{cmd}**: {desc} - ENCONTRADO\n")
                else:
                    f.write(f"- **{cmd}**: {desc} - NO ENCONTRADO\n")

        print(f"\nReporte generado: {output_file}")


def main():
    """Funcion principal"""
    archivo = Path("/home/user/api-spriconsole/codigodev6/FORECOURT.123")

    if not archivo.exists():
        print(f"ERROR: No existe {archivo}")
        return 1

    extractor = ExtractorContexto(archivo)
    extractor.analizar()
    extractor.mostrar_resultados()
    extractor.generar_reporte("COMANDOS_GILBARCO_CONTEXTO.md")

    print("\n" + "="*60)
    print("ANALISIS COMPLETADO")
    print("="*60)
    print("\nRevisar:")
    print("  - COMANDOS_GILBARCO_CONTEXTO.md (contexto completo)")
    print("  - COMANDOS_VB6.md (resumen)")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
