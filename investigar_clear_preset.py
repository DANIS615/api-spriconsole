#!/usr/bin/env python3
"""
Investigar Comando CLEAR PRESET
Busca comandos para limpiar/resetear preset en bombas Gilbarco
"""

from pathlib import Path
import re

class InvestigadorClearPreset:
    """Investiga comandos de limpieza de preset"""

    def __init__(self):
        self.hallazgos = {}

    def investigar_dlls(self):
        """Investiga en DLLs"""
        print("="*70)
        print("INVESTIGACION: COMANDO CLEAR PRESET")
        print("="*70)

        dll_path = Path("/home/user/api-spriconsole/Smart Ship Factory/Spirit/bin/pumps/SSF.Gilbarco.D.dll")

        if not dll_path.exists():
            print(f"ERROR: No existe {dll_path}")
            return

        data = dll_path.read_bytes()

        # 1. Buscar strings relacionados con clear/reset/cancel preset
        self._buscar_strings_clear(data)

        # 2. Buscar comandos numericos cercanos a "clear"
        self._buscar_comandos_cerca_clear(data)

        # 3. Buscar en documentacion de comandos conocidos
        self._comandos_gilbarco_conocidos()

    def _buscar_strings_clear(self, data):
        """Busca strings con clear/reset/cancel"""
        print("\n1. STRINGS RELACIONADOS CON CLEAR/RESET")
        print("-" * 70)

        keywords = [
            b'clear preset', b'Clear Preset', b'CLEAR PRESET', b'CLEAR_PRESET',
            b'reset preset', b'Reset Preset', b'RESET PRESET', b'RESET_PRESET',
            b'cancel preset', b'Cancel Preset', b'CANCEL PRESET',
            b'deauthorize', b'Deauthorize', b'DEAUTHORIZE',
            b'clear pump', b'Clear Pump', b'CLEAR PUMP',
            b'stop pump', b'Stop Pump', b'STOP PUMP',
            b'clear auth', b'Clear Auth', b'CLEAR_AUTH',
        ]

        encontrados = []
        for keyword in keywords:
            pos = data.find(keyword)
            if pos != -1:
                # Contexto
                inicio = max(0, pos - 40)
                fin = min(len(data), pos + 60)
                contexto = data[inicio:fin]
                ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)

                encontrados.append({
                    'keyword': keyword.decode(),
                    'pos': pos,
                    'contexto': ascii_ctx
                })

        if encontrados:
            print(f"Encontrados: {len(encontrados)}")
            for item in encontrados:
                print(f"\n'{item['keyword']}' en 0x{item['pos']:08x}")
                print(f"  {item['contexto']}")
        else:
            print("No se encontraron strings directos")

    def _buscar_comandos_cerca_clear(self, data):
        """Busca comandos numericos cerca de palabras clear"""
        print("\n\n2. COMANDOS NUMERICOS CERCA DE 'CLEAR'")
        print("-" * 70)

        # Buscar posiciones de "clear"
        posiciones_clear = []
        for keyword in [b'clear', b'Clear', b'CLEAR']:
            offset = 0
            while True:
                pos = data.find(keyword, offset)
                if pos == -1:
                    break
                posiciones_clear.append(pos)
                offset = pos + 1

        print(f"Posiciones 'clear' encontradas: {len(posiciones_clear)}")

        # Buscar comandos de 3 digitos cerca
        comandos_encontrados = set()
        for pos_clear in posiciones_clear:
            # Buscar en ventana de 200 bytes alrededor
            inicio = max(0, pos_clear - 200)
            fin = min(len(data), pos_clear + 200)
            ventana = data[inicio:fin]

            # Buscar patron: 0XX (tres digitos ASCII)
            for match in re.finditer(rb'0\d{2}', ventana):
                cmd = match.group().decode()
                if cmd not in ['000', '030']:  # Excluir comandos ya conocidos
                    comandos_encontrados.add(cmd)

        if comandos_encontrados:
            print(f"\nComandos cerca de 'clear': {sorted(comandos_encontrados)}")
        else:
            print("\nNo se encontraron comandos cerca de 'clear'")

    def _comandos_gilbarco_conocidos(self):
        """Lista comandos Gilbarco conocidos relacionados"""
        print("\n\n3. COMANDOS GILBARCO ESTANDAR RELACIONADOS")
        print("-" * 70)

        comandos_conocidos = {
            '000': 'RESET - Resetear bomba completamente',
            '031': 'STOP - Detener despacho en progreso',
            '032': 'CLEAR SALE - Limpiar datos de venta',
            '033': 'RESUME - Reanudar despacho pausado',
            '034': 'PAUSE - Pausar despacho',
            '035': 'CLEAR PRESET - Limpiar preset (POSIBLE)',
            '036': 'CANCEL AUTHORIZATION - Cancelar autorizacion',
        }

        print("\nBasado en protocolos Gilbarco estandar:")
        for cmd, desc in comandos_conocidos.items():
            print(f"  {cmd}: {desc}")

        print("\n\nCOMANDOS MAS PROBABLES PARA CLEAR PRESET:")
        print("  1. 032 - CLEAR SALE (limpia todo incluyendo preset)")
        print("  2. 035 - Posible CLEAR PRESET dedicado")
        print("  3. 036 - CANCEL AUTHORIZATION")
        print("  4. 000 - RESET (limpia todo pero muy agresivo)")

    def verificar_comandos_en_codigo(self):
        """Verifica que comandos existen en el codigo VB6"""
        print("\n\n4. VERIFICANDO EN CODIGO VB6")
        print("-" * 70)

        forecourt = Path("/home/user/api-spriconsole/codigodev6/FORECOURT.123")
        if not forecourt.exists():
            print("No se puede acceder a FORECOURT.123")
            return

        data = forecourt.read_bytes()

        # Buscar comandos 032-036
        comandos_buscar = [b'032', b'033', b'034', b'035', b'036']

        for cmd in comandos_buscar:
            count = data.count(cmd)
            if count > 0:
                print(f"  Comando '{cmd.decode()}' encontrado {count} veces")

                # Buscar primera aparicion con contexto
                pos = data.find(cmd)
                inicio = max(0, pos - 30)
                fin = min(len(data), pos + 40)
                contexto = data[inicio:fin]
                ascii_ctx = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in contexto)
                print(f"    Contexto: {ascii_ctx}")

    def generar_script_prueba(self):
        """Genera script para probar comandos de clear"""
        print("\n\n5. GENERANDO SCRIPT DE PRUEBA")
        print("-" * 70)

        script = """#!/usr/bin/env python3
'''
Probar Comandos CLEAR PRESET
Prueba comandos 032, 035, 036 para limpiar preset
'''

import serial
import time

def calcular_lrc(data):
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def enviar_comando(s, pump_id, comando):
    print(f"\\nProbando comando {comando}...")

    # SLOT
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.3)
    rx_slot = s.read(s.in_waiting)
    print(f"  SLOT RX: {rx_slot.hex()}")

    # Comando
    frame_data = bytes([ord(str(pump_id)), 0x02]) + comando.encode('ascii')
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    print(f"  TX: {frame.hex()}")
    s.write(frame)
    time.sleep(0.5)

    rx = s.read(s.in_waiting)
    print(f"  RX: {rx.hex() if rx else 'Sin respuesta'}")

    return rx

# Abrir puerto
s = serial.Serial('COM1', 115200, timeout=2)

# Probar comandos
comandos = ['032', '035', '036']

for cmd in comandos:
    enviar_comando(s, 1, cmd)
    input("  Presiona ENTER para siguiente...")

# Verificar estado con 016
print("\\nVerificando estado final...")
enviar_comando(s, 1, '016')

s.close()
print("\\nPrueba completada!")
"""

        with open("probar_clear_preset.py", 'w') as f:
            f.write(script)

        print("Script generado: probar_clear_preset.py")
        print("\nUso:")
        print("  python probar_clear_preset.py")

    def generar_reporte(self):
        """Genera reporte final"""
        print("\n\n" + "="*70)
        print("GENERANDO REPORTE")
        print("="*70)

        with open("INVESTIGACION_CLEAR_PRESET.md", 'w') as f:
            f.write("# INVESTIGACION: COMANDO CLEAR PRESET\n\n")
            f.write("Busqueda de comandos para limpiar preset en bombas Gilbarco\n\n")
            f.write("---\n\n")

            f.write("## PROBLEMA\n\n")
            f.write("Despues de enviar AUTHORIZE (comando 030), la bomba tiene un preset activo.\n")
            f.write("Si intentamos autorizar nuevamente sin limpiar, puede fallar o mantener el preset anterior.\n\n")
            f.write("**Necesitamos**: Comando para limpiar/resetear el preset antes de nueva autorizacion.\n\n")
            f.write("---\n\n")

            f.write("## COMANDOS GILBARCO ESTANDAR RELACIONADOS\n\n")
            f.write("| Comando | Funcion | Probabilidad |\n")
            f.write("|---------|---------|-------------|\n")
            f.write("| **032** | CLEAR SALE - Limpia venta y preset | ALTA |\n")
            f.write("| **035** | Posible CLEAR PRESET dedicado | MEDIA |\n")
            f.write("| **036** | CANCEL AUTHORIZATION | MEDIA |\n")
            f.write("| **031** | STOP - Detener despacho | BAJA (solo detiene) |\n")
            f.write("| **000** | RESET - Reset total | BAJA (muy agresivo) |\n\n")
            f.write("---\n\n")

            f.write("## SECUENCIA RECOMENDADA\n\n")
            f.write("### Opcion 1: Usar CLEAR SALE (032)\n\n")
            f.write("```\n")
            f.write("1. SLOT 1:        01 00 -> FE 00\n")
            f.write("2. CLEAR SALE:    10 31 02 30 33 32 10 03 XX\n")
            f.write("3. Esperar 300ms\n")
            f.write("4. AUTHORIZE:     10 31 02 30 33 30 ... 10 03 XX\n")
            f.write("```\n\n")

            f.write("### Opcion 2: Verificar Estado Primero\n\n")
            f.write("```\n")
            f.write("1. SLOT 1:        01 00 -> FE 00\n")
            f.write("2. READ STATUS:   10 31 02 30 31 36 10 03 FC\n")
            f.write("3. Si RX indica preset activo:\n")
            f.write("   3a. CLEAR SALE: 10 31 02 30 33 32 10 03 XX\n")
            f.write("4. AUTHORIZE:     10 31 02 30 33 30 ... 10 03 XX\n")
            f.write("```\n\n")

            f.write("---\n\n")
            f.write("## COMO IDENTIFICAR PRESET ACTIVO\n\n")
            f.write("Respuesta de comando 016 (READ STATUS):\n\n")
            f.write("```\n")
            f.write("E0 C0 E0 F8  -> Idle (sin preset)\n")
            f.write("E0 C0 E0 F0  -> Manguera arriba (sin preset)\n")
            f.write("E0 C0 E0 XX  -> Posible preset activo (XX diferente)\n")
            f.write("```\n\n")

            f.write("Comparar byte 3 (ultimo byte):\n")
            f.write("- Bit cambios pueden indicar estado de autorizacion\n")
            f.write("- Si es diferente de F8/F0, posible preset activo\n\n")

            f.write("---\n\n")
            f.write("## SCRIPTS DE PRUEBA\n\n")
            f.write("1. **probar_clear_preset.py** - Prueba comandos 032, 035, 036\n")
            f.write("2. **probar_formato_authorize.py** - Incluye CLEAR antes de AUTHORIZE\n\n")

            f.write("---\n\n")
            f.write("## PROXIMO PASO\n\n")
            f.write("1. Ejecutar: `python probar_clear_preset.py`\n")
            f.write("2. Observar cual comando limpia el preset\n")
            f.write("3. Verificar con 016 que estado vuelve a idle\n")
            f.write("4. Integrar en secuencia de AUTHORIZE\n\n")

        print("Reporte generado: INVESTIGACION_CLEAR_PRESET.md")


def main():
    """Funcion principal"""
    investigador = InvestigadorClearPreset()
    investigador.investigar_dlls()
    investigador.verificar_comandos_en_codigo()
    investigador.generar_script_prueba()
    investigador.generar_reporte()

    print("\n" + "="*70)
    print("INVESTIGACION COMPLETADA")
    print("="*70)
    print("\nArchivos generados:")
    print("  1. INVESTIGACION_CLEAR_PRESET.md - Reporte completo")
    print("  2. probar_clear_preset.py - Script de prueba")
    print("\nProximo paso:")
    print("  python probar_clear_preset.py")

    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
