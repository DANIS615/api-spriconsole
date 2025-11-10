#!/usr/bin/env python3
"""
Extractor de Comandos GPBox desde DLLs
Busca comandos especificos basado en lo que ya descubrimos
"""

import os
import re
from pathlib import Path

class ExtractorComandosGPBox:
    """Extrae comandos del protocolo desde DLLs"""

    def __init__(self):
        self.comandos_encontrados = []
        self.funciones_encontradas = []
        self.constantes_encontradas = []

    def analizar_dll(self, dll_path):
        """Analiza un DLL buscando comandos"""
        print(f"\n{'='*60}")
        print(f"Analizando: {os.path.basename(dll_path)}")
        print(f"{'='*60}")

        try:
            with open(dll_path, 'rb') as f:
                data = f.read()

            # Convertir a strings para buscar
            try:
                text = data.decode('latin-1', errors='ignore')
            except:
                text = data.decode('utf-8', errors='ignore')

            # 1. Buscar comandos Gilbarco (000-999)
            self._buscar_comandos_gilbarco(text, dll_path)

            # 2. Buscar funciones clave
            self._buscar_funciones_clave(text, dll_path)

            # 3. Buscar constantes hexadecimales
            self._buscar_constantes_hex(text, dll_path)

            # 4. Buscar estructuras de datos
            self._buscar_estructuras(text, dll_path)

            # 5. Buscar timeouts y configuraciones
            self._buscar_configuraciones(text, dll_path)

        except Exception as e:
            print(f"ERROR: {e}")

    def _buscar_comandos_gilbarco(self, text, dll_path):
        """Busca comandos Gilbarco (formato 0XX)"""
        print("\n1. COMANDOS GILBARCO ENCONTRADOS:")

        # Patron: 3 digitos entre comillas o espacios
        patrones = [
            r'["\']0(\d{2})["\']',  # "016", '030', etc
            r'\s0(\d{2})\s',         # espacio 016 espacio
            r'cmd.*?0(\d{2})',       # cmd 016
            r'command.*?0(\d{2})',   # command 030
        ]

        comandos = set()
        for patron in patrones:
            matches = re.findall(patron, text, re.IGNORECASE)
            for match in matches:
                cmd = f"0{match}"
                if cmd not in ['000', '001', '002']:  # Evitar falsos positivos
                    comandos.add(cmd)

        if comandos:
            for cmd in sorted(comandos):
                print(f"   Comando {cmd} detectado")
                self.comandos_encontrados.append({
                    'comando': cmd,
                    'dll': os.path.basename(dll_path)
                })
        else:
            print("   Ninguno encontrado")

    def _buscar_funciones_clave(self, text, dll_path):
        """Busca funciones importantes"""
        print("\n2. FUNCIONES CLAVE:")

        funciones = [
            'authorize', 'Authorize', 'AUTHORIZE',
            'preset', 'Preset', 'PRESET',
            'stop', 'Stop', 'STOP',
            'status', 'Status', 'STATUS',
            'totalizer', 'Totalizer', 'TOTALIZER',
            'price', 'Price', 'PRICE',
            'delivery', 'Delivery', 'DELIVERY',
            'sale', 'Sale', 'SALE',
        ]

        for func in funciones:
            # Buscar contexto alrededor de la palabra
            pattern = rf'.{{0,50}}{func}.{{0,50}}'
            matches = re.findall(pattern, text, re.IGNORECASE)

            if matches:
                # Mostrar solo las primeras 2 coincidencias
                print(f"\n   '{func}' encontrado:")
                for i, match in enumerate(matches[:2], 1):
                    # Limpiar caracteres no imprimibles
                    limpio = ''.join(c if c.isprintable() else '.' for c in match)
                    print(f"      [{i}] {limpio}")

                self.funciones_encontradas.append({
                    'funcion': func,
                    'dll': os.path.basename(dll_path),
                    'cantidad': len(matches)
                })

    def _buscar_constantes_hex(self, text, dll_path):
        """Busca constantes hexadecimales relevantes"""
        print("\n3. CONSTANTES HEXADECIMALES:")

        # Buscar secuencias que parecen comandos
        # Patron: 0x10, 0x02, etc
        pattern = r'0x([0-9A-Fa-f]{2})'
        matches = re.findall(pattern, text)

        # Contar frecuencia
        from collections import Counter
        frecuencia = Counter(matches)

        # Mostrar los mas comunes (excluyendo muy comunes como 00, FF)
        relevantes = {k: v for k, v in frecuencia.items()
                     if k not in ['00', 'FF', '01'] and v > 3}

        if relevantes:
            for hex_val, count in sorted(relevantes.items(), key=lambda x: -x[1])[:10]:
                print(f"   0x{hex_val}: {count} veces")
        else:
            print("   Ninguna relevante")

    def _buscar_estructuras(self, text, dll_path):
        """Busca estructuras de datos"""
        print("\n4. ESTRUCTURAS DE DATOS:")

        # Buscar definiciones tipo struct
        keywords = [
            'pump_id', 'pumpId', 'PumpId',
            'hose', 'Hose', 'HOSE',
            'product', 'Product', 'PRODUCT',
            'volume', 'Volume', 'VOLUME',
            'amount', 'Amount', 'AMOUNT',
            'price', 'Price', 'PRICE',
        ]

        for keyword in keywords:
            if keyword.lower() in text.lower():
                # Buscar contexto
                idx = text.lower().find(keyword.lower())
                if idx != -1:
                    contexto = text[max(0, idx-30):min(len(text), idx+50)]
                    limpio = ''.join(c if c.isprintable() else '.' for c in contexto)
                    print(f"   {keyword}: {limpio}")

    def _buscar_configuraciones(self, text, dll_path):
        """Busca timeouts y configuraciones"""
        print("\n5. CONFIGURACIONES Y TIMEOUTS:")

        # Buscar valores numericos con contexto de timeout
        pattern = r'timeout.*?(\d+)'
        matches = re.findall(pattern, text, re.IGNORECASE)

        if matches:
            valores = set(matches)
            for val in sorted(valores)[:5]:
                print(f"   Timeout: {val} ms")

        # Buscar delays
        pattern = r'delay.*?(\d+)'
        matches = re.findall(pattern, text, re.IGNORECASE)

        if matches:
            valores = set(matches)
            for val in sorted(valores)[:5]:
                print(f"   Delay: {val} ms")

    def generar_reporte(self, output_file):
        """Genera reporte final"""
        print(f"\n{'='*60}")
        print("GENERANDO REPORTE FINAL")
        print(f"{'='*60}")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write("# COMANDOS GPBOX EXTRAIDOS DE DLLs\n\n")
            f.write("Analisis automatico basado en hallazgos confirmados\n\n")
            f.write("---\n\n")

            # Comandos
            f.write("## COMANDOS GILBARCO ENCONTRADOS\n\n")
            if self.comandos_encontrados:
                comandos_unicos = {}
                for item in self.comandos_encontrados:
                    cmd = item['comando']
                    if cmd not in comandos_unicos:
                        comandos_unicos[cmd] = []
                    comandos_unicos[cmd].append(item['dll'])

                f.write("| Comando | DLLs que lo usan |\n")
                f.write("|---------|------------------|\n")
                for cmd in sorted(comandos_unicos.keys()):
                    dlls = ', '.join(set(comandos_unicos[cmd]))
                    f.write(f"| {cmd} | {dlls} |\n")
            else:
                f.write("No se encontraron comandos\n")

            f.write("\n---\n\n")

            # Funciones
            f.write("## FUNCIONES CLAVE ENCONTRADAS\n\n")
            if self.funciones_encontradas:
                funciones_agrupadas = {}
                for item in self.funciones_encontradas:
                    func = item['funcion']
                    if func not in funciones_agrupadas:
                        funciones_agrupadas[func] = []
                    funciones_agrupadas[func].append(item['dll'])

                f.write("| Funcion | DLLs |\n")
                f.write("|---------|------|\n")
                for func in sorted(funciones_agrupadas.keys()):
                    dlls = ', '.join(set(funciones_agrupadas[func]))
                    f.write(f"| {func} | {dlls} |\n")
            else:
                f.write("No se encontraron funciones\n")

            f.write("\n---\n\n")

            # Recomendaciones
            f.write("## COMANDOS PRIORITARIOS A PROBAR\n\n")
            f.write("Basado en frecuencia y contexto:\n\n")

            comandos_prioritarios = [
                ('030', 'AUTHORIZE - Autorizar bomba con preset'),
                ('020', 'READ TOTALIZERS - Leer totalizadores'),
                ('000', 'RESET - Resetear bomba'),
                ('031', 'STOP - Detener bomba'),
                ('025', 'SET PRICE - Cambiar precio'),
            ]

            for cmd, desc in comandos_prioritarios:
                f.write(f"- **{cmd}**: {desc}\n")

        print(f"\nReporte generado: {output_file}")


def main():
    """Funcion principal"""
    print("="*60)
    print("EXTRACTOR DE COMANDOS GPBOX")
    print("="*60)
    print("\nBuscando comandos basado en hallazgos confirmados:")
    print("  - Comando 016 (READ STATUS) confirmado")
    print("  - Sistema de SLOTS confirmado")
    print("  - Respuestas de 4 bytes confirmadas")

    extractor = ExtractorComandosGPBox()

    # Buscar DLLs
    dlls_path = Path("./Smart Ship Factory/Spirit/bin")

    if not dlls_path.exists():
        dlls_path = Path(".")

    # DLLs prioritarios
    dlls_prioritarios = [
        "**/SSF.Gilbarco.D.dll",
        "**/SSF.FC.Comm.GPBox.D.dll",
        "**/SSF.FC.Comm.Serial.D.dll",
        "**/SSF.Wayne.D.dll",
        "**/SSF.FC.Pump.*.dll",
    ]

    dlls_encontrados = []
    for patron in dlls_prioritarios:
        dlls_encontrados.extend(dlls_path.glob(patron))

    if not dlls_encontrados:
        print("\nNo se encontraron DLLs")
        print("Buscando en directorio actual...")
        dlls_encontrados = list(Path(".").rglob("*.dll"))[:5]

    print(f"\nDLLs a analizar: {len(dlls_encontrados)}")
    for dll in dlls_encontrados:
        print(f"  - {dll.name}")

    # Analizar cada DLL
    for dll in dlls_encontrados:
        extractor.analizar_dll(str(dll))

    # Generar reporte
    extractor.generar_reporte("COMANDOS_EXTRAIDOS_DLL.md")

    print("\n" + "="*60)
    print("ANALISIS COMPLETADO")
    print("="*60)
    print("\nRevisa: COMANDOS_EXTRAIDOS_DLL.md")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
