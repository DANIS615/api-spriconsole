#!/usr/bin/env python3
"""
Buscar Codigo AUTHORIZE en Formularios VB6
Analiza archivos .frm que suelen tener codigo mas legible
"""

import re
from pathlib import Path

class BuscadorAuthorizeFormularios:
    """Busca codigo de authorize en formularios"""

    def __init__(self, carpeta):
        self.carpeta = Path(carpeta)
        self.hallazgos = []

    def buscar_en_formularios(self):
        """Busca en todos los archivos .frm"""
        print("="*70)
        print("BUSCANDO CODIGO AUTHORIZE EN FORMULARIOS")
        print("="*70)

        archivos_frm = list(self.carpeta.glob("*.frm"))
        archivos_bas = list(self.carpeta.glob("*.bas"))

        print(f"\nArchivos .frm: {len(archivos_frm)}")
        print(f"Archivos .bas: {len(archivos_bas)}")

        # Buscar en .frm
        print("\n--- ANALIZANDO .FRM ---")
        for archivo in archivos_frm:
            self._analizar_archivo(archivo)

        # Buscar en .bas
        print("\n--- ANALIZANDO .BAS ---")
        for archivo in archivos_bas:
            self._analizar_archivo(archivo)

    def _analizar_archivo(self, archivo):
        """Analiza un archivo"""
        try:
            # Intentar leer como texto
            try:
                content = archivo.read_text(encoding='latin-1')
            except:
                content = archivo.read_text(encoding='utf-8', errors='ignore')

            # Buscar keywords importantes
            if self._contiene_keywords(content):
                print(f"\n>>> {archivo.name}")
                self._extraer_codigo_relevante(archivo.name, content)

        except Exception as e:
            pass

    def _contiene_keywords(self, content):
        """Verifica si contiene keywords relevantes"""
        keywords = [
            'authorize', 'preset', '030',
            'hose', 'manguera', 'bomba',
            'pump', 'gilbarco'
        ]

        content_lower = content.lower()
        for keyword in keywords:
            if keyword in content_lower:
                return True
        return False

    def _extraer_codigo_relevante(self, filename, content):
        """Extrae codigo relevante del archivo"""
        lineas = content.split('\n')

        # Buscar funciones/subs que contengan authorize o preset
        funciones = []
        en_funcion = False
        funcion_actual = []
        nombre_funcion = ""

        for i, linea in enumerate(lineas):
            # Detectar inicio de funcion/sub
            match_func = re.match(r'(Private|Public|Friend)?\s*(Function|Sub)\s+(\w+)', linea, re.IGNORECASE)
            if match_func:
                en_funcion = True
                nombre_funcion = match_func.group(3)
                funcion_actual = [linea]
                continue

            # Detectar fin de funcion
            if en_funcion and re.match(r'End (Function|Sub)', linea, re.IGNORECASE):
                funcion_actual.append(linea)

                # Ver si contiene keywords
                texto_funcion = '\n'.join(funcion_actual)
                if self._es_funcion_relevante(texto_funcion):
                    funciones.append({
                        'nombre': nombre_funcion,
                        'lineas': funcion_actual,
                        'linea_inicio': i - len(funcion_actual) + 1
                    })

                en_funcion = False
                funcion_actual = []
                nombre_funcion = ""
                continue

            if en_funcion:
                funcion_actual.append(linea)

        # Mostrar funciones relevantes
        if funciones:
            print(f"  Funciones relevantes encontradas: {len(funciones)}")
            for func in funciones:
                print(f"\n  Funcion: {func['nombre']} (linea {func['linea_inicio']})")
                self._analizar_funcion(func)

        # Buscar strings literales con "030"
        self._buscar_strings_030(filename, content)

    def _es_funcion_relevante(self, texto):
        """Verifica si una funcion es relevante"""
        keywords = ['authorize', 'preset', '030', 'hose', 'pump']
        texto_lower = texto.lower()
        return any(kw in texto_lower for kw in keywords)

    def _analizar_funcion(self, func):
        """Analiza una funcion"""
        # Buscar construccion de comandos
        for linea in func['lineas']:
            # Buscar concatenaciones con "030"
            if '"030"' in linea or "'030'" in linea:
                print(f"    -> {linea.strip()}")

            # Buscar & (concatenacion en VB6)
            if '&' in linea and ('030' in linea or 'hose' in linea.lower() or 'manguera' in linea.lower()):
                print(f"    -> {linea.strip()}")

            # Buscar asignaciones
            if '=' in linea and ('030' in linea or 'cmd' in linea.lower()):
                print(f"    -> {linea.strip()}")

    def _buscar_strings_030(self, filename, content):
        """Busca strings literales con 030"""
        # Buscar "030" + digitos
        patron = r'["\']030[\d]{0,15}["\']'
        matches = re.finditer(patron, content)

        encontrados = []
        for match in matches:
            encontrados.append(match.group())

        if encontrados:
            print(f"\n  Strings con '030':")
            for s in set(encontrados):
                print(f"    {s}")

    def generar_reporte(self):
        """Genera reporte"""
        with open("CODIGO_AUTHORIZE_FORMULARIOS.md", 'w') as f:
            f.write("# CODIGO AUTHORIZE EN FORMULARIOS VB6\n\n")
            f.write("Busqueda de codigo legible en archivos .frm y .bas\n\n")
            f.write("---\n\n")
            f.write("Ver salida de consola para detalles\n\n")

        print("\nReporte generado: CODIGO_AUTHORIZE_FORMULARIOS.md")


def main():
    """Funcion principal"""
    carpeta = Path("/home/user/api-spriconsole/codigodev6")

    if not carpeta.exists():
        print(f"ERROR: No existe {carpeta}")
        return 1

    buscador = BuscadorAuthorizeFormularios(carpeta)
    buscador.buscar_en_formularios()
    buscador.generar_reporte()

    print("\n" + "="*70)
    print("ANALISIS COMPLETADO")
    print("="*70)

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
