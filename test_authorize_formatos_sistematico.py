#!/usr/bin/env python3
"""
Test Sistematico de Formatos AUTHORIZE
Prueba multiples variaciones del formato del comando
"""

import serial
import time
import sys

def calcular_lrc(data):
    """Calcula LRC"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def enviar_comando(s, pump_id, comando_str):
    """Envia comando y retorna respuesta"""
    # SLOT
    s.reset_input_buffer()
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.2)
    rx_slot = s.read(s.in_waiting)

    # Comando
    DLE, STX, ETX = 0x10, 0x02, 0x03
    pump_ascii = ord(str(pump_id))
    cmd_bytes = comando_str.encode('ascii')

    frame_data = bytes([pump_ascii, STX]) + cmd_bytes
    lrc = calcular_lrc(frame_data)
    frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

    s.reset_input_buffer()
    s.write(frame)
    time.sleep(0.5)

    rx = s.read(s.in_waiting)
    return rx, frame.hex()

def leer_status_multiple(s, pump_id, veces=5):
    """Lee status multiples veces y detecta patron"""
    estados = []

    for i in range(veces):
        rx, _ = enviar_comando(s, pump_id, '016')
        if rx and len(rx) >= 4:
            estado = f"{rx[0]:02x}{rx[1]:02x}{rx[2]:02x}{rx[3]:02x}"
            estados.append(estado)
        time.sleep(0.5)

    # Analizar
    tiene_preset_count = sum(1 for e in estados if len(e) >= 4 and e[2:4] == 'e0')

    return {
        'estados': estados,
        'preset_activo_count': tiene_preset_count,
        'total': len(estados),
        'porcentaje_preset': (tiene_preset_count / len(estados) * 100) if estados else 0,
        'unico': list(set(estados)),
        'estable': len(set(estados)) == 1
    }

def main():
    """Funcion principal"""
    print("="*80)
    print("TEST SISTEMATICO DE FORMATOS AUTHORIZE")
    print("="*80)

    if len(sys.argv) < 2:
        print("\nUso: python test_authorize_formatos_sistematico.py COM1 [PUMP_ID]")
        return 1

    puerto = sys.argv[1]
    pump_id = int(sys.argv[2]) if len(sys.argv) > 2 else 1

    # Parametros de prueba
    hose = "1"
    monto = "00000500"  # $5.00

    # Formatos a probar
    formatos = [
        # Formato original (tipo 1 = money)
        ("030110000500", "030 + H(1) + T(1) + MONTO"),

        # Variacion 1: Tipo antes de hose
        ("030110000500", "030 + T(1) + H(1) + MONTO"),

        # Variacion 2: Solo hose y monto (sin tipo)
        ("030100000500", "030 + H(1) + MONTO (9 digitos)"),

        # Variacion 3: Hose con 2 digitos
        ("0300100000500", "030 + H(01) + MONTO"),

        # Variacion 4: Monto con 6 digitos
        ("030100500", "030 + H(1) + MONTO (6 dig: 000500)"),

        # Variacion 5: Monto con 4 digitos
        ("0301050", "030 + H(1) + MONTO (4 dig: 0500)"),

        # Variacion 6: Diferente codigo base
        ("031110000500", "031 + H(1) + T(1) + MONTO"),
        ("032110000500", "032 + H(1) + T(1) + MONTO"),

        # Variacion 7: Formato Wayne (competidor)
        ("AUT110000500", "AUT + H(1) + T(1) + MONTO"),

        # Variacion 8: Con separadores
        ("030,1,1,00000500", "030,H,T,MONTO"),
        ("030 1 1 00000500", "030 H T MONTO"),

        # Variacion 9: Hex directo
        ("030\x01\x01\x00\x00\x05\x00", "030 + bytes directos"),

        # Variacion 10: Formato corto
        ("0301500", "030 + H + MONTO (3 dig)"),

        # Variacion 11: Tipo 0 (full autorization)
        ("030100000000", "030 + H(1) + T(0) + MONTO(0)"),

        # Variacion 12: Tipo 2 (volume)
        ("030120000500", "030 + H(1) + T(2) + MONTO"),
    ]

    s = serial.Serial(puerto, 115200, timeout=2)
    print(f"\nConectado a {puerto} @ 115200 bps\n")

    resultados = []

    try:
        for idx, (comando, descripcion) in enumerate(formatos, 1):
            print("="*80)
            print(f"FORMATO {idx}/{len(formatos)}: {descripcion}")
            print("="*80)
            print(f"Comando: {comando}")

            # CLEAR PRESET antes de cada prueba
            print("\n1. CLEAR PRESET...")
            enviar_comando(s, pump_id, '033')
            time.sleep(0.5)

            # Verificar limpiado
            rx_before, _ = enviar_comando(s, pump_id, '016')
            if rx_before and len(rx_before) >= 4:
                print(f"   Estado antes: {rx_before[0]:02x}{rx_before[1]:02x}{rx_before[2]:02x}{rx_before[3]:02x}")

            # AUTHORIZE
            print(f"\n2. AUTHORIZE: {comando}")
            rx_auth, frame_hex = enviar_comando(s, pump_id, comando)
            print(f"   TX: {frame_hex}")
            if rx_auth:
                print(f"   RX inmediata: {rx_auth.hex()}")
            else:
                print(f"   RX inmediata: Sin respuesta")

            # Leer status multiple veces
            print("\n3. Verificando preset (5 lecturas)...")
            analisis = leer_status_multiple(s, pump_id, 5)

            print(f"   Estados observados: {analisis['unico']}")
            print(f"   Estable: {'SI' if analisis['estable'] else 'NO'}")
            print(f"   Preset activo: {analisis['preset_activo_count']}/{analisis['total']} lecturas ({analisis['porcentaje_preset']:.0f}%)")

            # Evaluar resultado
            if analisis['estable'] and analisis['porcentaje_preset'] > 80:
                resultado = "EXITOSO"
                print(f"\n   >>> RESULTADO: {resultado} <<<")
            elif analisis['porcentaje_preset'] > 50:
                resultado = "PARCIAL"
                print(f"\n   >>> RESULTADO: {resultado} (preset inestable) <<<")
            else:
                resultado = "FALLIDO"
                print(f"\n   >>> RESULTADO: {resultado} <<<")

            resultados.append({
                'formato': comando,
                'descripcion': descripcion,
                'resultado': resultado,
                'rx_auth': rx_auth.hex() if rx_auth else 'None',
                'preset_pct': analisis['porcentaje_preset'],
                'estable': analisis['estable']
            })

            # Pausa entre pruebas
            if idx < len(formatos):
                input("\nPresiona ENTER para siguiente formato...")
                print("\n")

        # Resumen final
        print("\n" + "="*80)
        print("RESUMEN DE RESULTADOS")
        print("="*80)

        for idx, res in enumerate(resultados, 1):
            print(f"\n{idx}. {res['descripcion']}")
            print(f"   Comando: {res['formato']}")
            print(f"   Resultado: {res['resultado']}")
            print(f"   RX: {res['rx_auth']}")
            print(f"   Preset: {res['preset_pct']:.0f}%, Estable: {res['estable']}")

        # Mejores candidatos
        print("\n" + "="*80)
        print("MEJORES CANDIDATOS")
        print("="*80)

        exitosos = [r for r in resultados if r['resultado'] == 'EXITOSO']
        parciales = [r for r in resultados if r['resultado'] == 'PARCIAL']

        if exitosos:
            print("\nFormatos EXITOSOS:")
            for r in exitosos:
                print(f"  - {r['formato']}: {r['descripcion']}")
        elif parciales:
            print("\nFormatos PARCIALES (para investigar mas):")
            for r in parciales:
                print(f"  - {r['formato']}: {r['descripcion']} ({r['preset_pct']:.0f}% preset)")
        else:
            print("\nNingun formato funciono correctamente.")
            print("\nPosibles razones:")
            print("1. Bomba requiere configuracion previa")
            print("2. Comando AUTHORIZE diferente (no 030)")
            print("3. Protocolo completamente diferente")
            print("4. GPBox requiere secuencia especial")
            print("\nSugerencia: Capturar trafico del software SSF original")

    except KeyboardInterrupt:
        print("\n\nInterrumpido por usuario")
    finally:
        s.close()
        print("\nPuerto cerrado")

    return 0

if __name__ == "__main__":
    sys.exit(main())
