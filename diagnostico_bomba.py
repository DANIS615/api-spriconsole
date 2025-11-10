#!/usr/bin/env python3
"""
Diagnóstico de Comunicación con Bombas Gilbarco
Herramienta para identificar problemas de comunicación serial
"""

import serial
import serial.tools.list_ports
import time
import sys

class DiagnosticoBomba:
    """Herramienta de diagnóstico para bombas Gilbarco"""

    DLE = 0x10
    STX = 0x02
    ETX = 0x03

    def __init__(self):
        self.serial = None

    def listar_puertos_disponibles(self):
        """Lista todos los puertos COM disponibles"""
        print("=" * 60)
        print("🔍 PUERTOS COM DISPONIBLES")
        print("=" * 60)

        puertos = serial.tools.list_ports.comports()

        if not puertos:
            print("❌ No se encontraron puertos COM disponibles")
            return []

        for i, puerto in enumerate(puertos, 1):
            print(f"\n{i}. Puerto: {puerto.device}")
            print(f"   Descripción: {puerto.description}")
            print(f"   Hardware ID: {puerto.hwid}")
            if puerto.manufacturer:
                print(f"   Fabricante: {puerto.manufacturer}")

        return [p.device for p in puertos]

    def probar_baudrates(self, puerto):
        """Prueba diferentes baudrates comunes"""
        print("\n" + "=" * 60)
        print("🔧 PROBANDO DIFERENTES BAUDRATES")
        print("=" * 60)

        baudrates = [9600, 19200, 38400, 57600, 115200]

        for baud in baudrates:
            print(f"\n📡 Probando {baud} bps...")
            try:
                ser = serial.Serial(
                    port=puerto,
                    baudrate=baud,
                    bytesize=serial.EIGHTBITS,
                    parity=serial.PARITY_NONE,
                    stopbits=serial.STOPBITS_ONE,
                    timeout=1
                )

                # Limpiar buffers
                ser.reset_input_buffer()
                ser.reset_output_buffer()

                # Enviar comando simple de status (016)
                pump_id = ord('1')
                comando = b'\x10' + bytes([pump_id]) + b'\x02016\x10\x03'

                # Calcular LRC
                lrc_data = bytes([pump_id]) + b'\x02016'
                lrc = 0
                for byte in lrc_data:
                    lrc ^= byte
                lrc = (~lrc + 1) & 0xFF

                frame = comando + bytes([lrc])

                print(f"   TX: {frame.hex()}")
                ser.write(frame)

                time.sleep(0.2)  # Esperar respuesta

                if ser.in_waiting > 0:
                    respuesta = ser.read(ser.in_waiting)
                    print(f"   RX: {respuesta.hex()}")
                    print(f"   ✅ RESPUESTA RECIBIDA en {baud} bps!")
                    ser.close()
                    return baud
                else:
                    print(f"   ⏳ Sin respuesta")

                ser.close()

            except Exception as e:
                print(f"   ❌ Error: {str(e)}")

        print(f"\n❌ No se recibió respuesta en ningún baudrate")
        return None

    def test_conexion_basica(self, puerto, baudrate=19200):
        """Test básico de conexión"""
        print("\n" + "=" * 60)
        print(f"🔌 TEST DE CONEXIÓN BÁSICA")
        print("=" * 60)
        print(f"Puerto: {puerto}")
        print(f"Baudrate: {baudrate} bps")

        try:
            self.serial = serial.Serial(
                port=puerto,
                baudrate=baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=2
            )

            print(f"✅ Puerto {puerto} abierto exitosamente")
            print(f"   - Baudrate: {self.serial.baudrate}")
            print(f"   - Data bits: {self.serial.bytesize}")
            print(f"   - Parity: {self.serial.parity}")
            print(f"   - Stop bits: {self.serial.stopbits}")

            # Verificar estado del puerto
            print(f"\n📊 Estado del Puerto:")
            print(f"   - CTS (Clear To Send): {self.serial.cts}")
            print(f"   - DSR (Data Set Ready): {self.serial.dsr}")
            print(f"   - RI (Ring Indicator): {self.serial.ri}")
            print(f"   - CD (Carrier Detect): {self.serial.cd}")

            return True

        except serial.SerialException as e:
            print(f"❌ Error abriendo puerto: {str(e)}")
            return False
        except Exception as e:
            print(f"❌ Error inesperado: {str(e)}")
            return False

    def enviar_comando_raw(self, pump_id, comando_str, data=""):
        """Envía comando crudo y muestra tráfico"""
        print(f"\n📤 Enviando comando '{comando_str}' a bomba {pump_id}...")

        # Construir frame
        pump_byte = ord(str(pump_id))
        frame_data = bytes([pump_byte, self.STX]) + comando_str.encode('ascii') + data.encode('ascii')

        # Calcular LRC
        lrc = 0
        for byte in frame_data:
            lrc ^= byte
        lrc = (~lrc + 1) & 0xFF

        # Frame completo
        frame = bytes([self.DLE]) + frame_data + bytes([self.DLE, self.ETX, lrc])

        print(f"   Frame construido:")
        print(f"   HEX: {frame.hex()}")
        print(f"   ASCII: {' '.join(f'{b:02X}' for b in frame)}")
        print(f"   Longitud: {len(frame)} bytes")

        # Limpiar buffer de entrada
        self.serial.reset_input_buffer()

        # Enviar
        bytes_escritos = self.serial.write(frame)
        print(f"   ✅ {bytes_escritos} bytes enviados")

        # Esperar respuesta
        print(f"\n📥 Esperando respuesta (timeout: 2s)...")
        time.sleep(0.2)

        respuesta = b''
        start_time = time.time()

        while time.time() - start_time < 2.0:
            if self.serial.in_waiting > 0:
                respuesta += self.serial.read(self.serial.in_waiting)
                time.sleep(0.05)  # Esperar más datos
            else:
                if respuesta:  # Ya recibimos algo
                    break
                time.sleep(0.05)

        if respuesta:
            print(f"   ✅ RESPUESTA RECIBIDA:")
            print(f"   HEX: {respuesta.hex()}")
            print(f"   ASCII: {' '.join(f'{b:02X}' for b in respuesta)}")
            print(f"   Longitud: {len(respuesta)} bytes")

            # Intentar decodificar
            self.decodificar_respuesta(respuesta)
            return respuesta
        else:
            print(f"   ❌ NO SE RECIBIÓ RESPUESTA")
            print(f"\n   Posibles causas:")
            print(f"   1. Bomba apagada o desconectada")
            print(f"   2. Baudrate incorrecto (esperado: {self.serial.baudrate})")
            print(f"   3. Cable de comunicación defectuoso")
            print(f"   4. Puerto COM incorrecto")
            print(f"   5. Bomba en otro ID (no es ID {pump_id})")
            print(f"   6. Protocolo diferente al esperado")
            return None

    def decodificar_respuesta(self, data):
        """Intenta decodificar la respuesta"""
        print(f"\n   🔍 DECODIFICACIÓN:")

        if not data:
            return

        # Verificar DLE inicial
        if data[0] == self.DLE:
            print(f"   ✅ DLE inicial presente (0x{data[0]:02X})")
        else:
            print(f"   ⚠️  No comienza con DLE (recibido: 0x{data[0]:02X})")

        # Buscar ETX
        if self.ETX in data:
            etx_pos = data.index(self.ETX)
            print(f"   ✅ ETX encontrado en posición {etx_pos}")

            if etx_pos > 0 and data[etx_pos-1] == self.DLE:
                print(f"   ✅ DLE antes de ETX presente")
        else:
            print(f"   ⚠️  ETX no encontrado")

        # Verificar LRC
        if len(data) > 3:
            lrc_recibido = data[-1]
            print(f"   LRC recibido: 0x{lrc_recibido:02X}")

            # Calcular LRC esperado (sin DLE inicial, DLE/ETX final, y LRC)
            lrc_calculado = 0
            for byte in data[1:-3]:
                lrc_calculado ^= byte
            lrc_calculado = (~lrc_calculado + 1) & 0xFF
            print(f"   LRC calculado: 0x{lrc_calculado:02X}")

            if lrc_recibido == lrc_calculado:
                print(f"   ✅ LRC CORRECTO")
            else:
                print(f"   ⚠️  LRC INCORRECTO")

        # Intentar extraer datos
        try:
            if len(data) > 4:
                # Extraer entre STX y DLE-ETX
                stx_pos = -1
                for i, byte in enumerate(data):
                    if byte == self.STX:
                        stx_pos = i
                        break

                if stx_pos >= 0:
                    datos = data[stx_pos+1:-3]
                    print(f"   Datos: {datos}")
                    try:
                        print(f"   Datos ASCII: {datos.decode('ascii')}")
                    except:
                        print(f"   (Datos no son ASCII puro)")
        except Exception as e:
            print(f"   Error decodificando: {e}")

    def test_comandos_basicos(self, pump_id=1):
        """Prueba comandos básicos"""
        print("\n" + "=" * 60)
        print(f"🧪 TEST DE COMANDOS BÁSICOS - BOMBA {pump_id}")
        print("=" * 60)

        comandos = [
            ("000", "", "RESET"),
            ("016", "", "LEER ESTADO"),
            ("020", "T0", "LEER TOTALIZADOR T0"),
        ]

        for cmd, data, descripcion in comandos:
            print(f"\n{'='*60}")
            print(f"🔸 TEST: {descripcion} (comando {cmd})")
            print(f"{'='*60}")

            respuesta = self.enviar_comando_raw(pump_id, cmd, data)

            if respuesta:
                print(f"✅ Comando '{cmd}' ejecutado - respuesta recibida")
            else:
                print(f"❌ Comando '{cmd}' - sin respuesta")

            time.sleep(0.5)  # Pausa entre comandos

    def monitor_continuo(self, duracion=10):
        """Monitorea el puerto serial continuamente"""
        print("\n" + "=" * 60)
        print(f"📡 MONITOR CONTINUO DEL PUERTO ({duracion}s)")
        print("=" * 60)
        print("Esperando cualquier tráfico en el puerto...")
        print("(Presiona Ctrl+C para detener)\n")

        start_time = time.time()

        try:
            while time.time() - start_time < duracion:
                if self.serial.in_waiting > 0:
                    data = self.serial.read(self.serial.in_waiting)
                    timestamp = time.strftime("%H:%M:%S")
                    print(f"[{timestamp}] RX ({len(data)} bytes): {data.hex()}")
                time.sleep(0.1)
        except KeyboardInterrupt:
            print("\n⏹️  Monitor detenido por usuario")

    def cerrar(self):
        """Cierra el puerto serial"""
        if self.serial and self.serial.is_open:
            self.serial.close()
            print("\n✅ Puerto serial cerrado")


def menu_interactivo():
    """Menú interactivo de diagnóstico"""
    diag = DiagnosticoBomba()

    print("\n" + "=" * 60)
    print("🔧 DIAGNÓSTICO DE BOMBAS GILBARCO")
    print("=" * 60)

    # 1. Listar puertos
    puertos = diag.listar_puertos_disponibles()

    if not puertos:
        print("\n❌ No hay puertos COM disponibles. Verifica:")
        print("   1. Cable USB-Serial conectado")
        print("   2. Drivers instalados correctamente")
        print("   3. Hardware encendido")
        return 1

    # 2. Seleccionar puerto
    print("\n" + "=" * 60)
    if len(puertos) == 1:
        puerto = puertos[0]
        print(f"✅ Usando único puerto disponible: {puerto}")
    else:
        print("Selecciona un puerto:")
        for i, p in enumerate(puertos, 1):
            print(f"  {i}. {p}")
        try:
            seleccion = int(input("\nNúmero de puerto: ")) - 1
            puerto = puertos[seleccion]
        except (ValueError, IndexError):
            print("❌ Selección inválida")
            return 1

    # 3. Probar baudrates
    print("\n¿Quieres que pruebe diferentes baudrates automáticamente? (s/n)")
    if input().lower() == 's':
        baudrate_correcto = diag.probar_baudrates(puerto)
        if baudrate_correcto:
            baudrate = baudrate_correcto
        else:
            print("\n⚠️  Usando baudrate por defecto: 19200")
            baudrate = 19200
    else:
        baudrate = 19200

    # 4. Abrir conexión
    if not diag.test_conexion_basica(puerto, baudrate):
        return 1

    # 5. Número de bomba
    print("\n" + "=" * 60)
    print("¿Qué número de bomba quieres probar? (1-99)")
    try:
        pump_id = int(input("Número de bomba [1]: ") or "1")
        if not 1 <= pump_id <= 99:
            print("❌ Número de bomba debe estar entre 1 y 99")
            return 1
    except ValueError:
        pump_id = 1
        print(f"Usando bomba por defecto: {pump_id}")

    # 6. Tests
    try:
        # Test de comandos básicos
        diag.test_comandos_basicos(pump_id)

        # Ofrecer monitor continuo
        print("\n" + "=" * 60)
        print("¿Quieres activar el monitor continuo? (s/n)")
        if input().lower() == 's':
            print("¿Cuántos segundos? [10]")
            try:
                duracion = int(input() or "10")
            except:
                duracion = 10
            diag.monitor_continuo(duracion)

        # Resumen
        print("\n" + "=" * 60)
        print("📋 RESUMEN DEL DIAGNÓSTICO")
        print("=" * 60)
        print(f"✅ Puerto: {puerto}")
        print(f"✅ Baudrate: {baudrate} bps")
        print(f"✅ Bomba probada: #{pump_id}")
        print("\n💡 RECOMENDACIONES:")
        print("   1. Si NO hubo respuesta:")
        print("      - Verifica que la bomba esté encendida")
        print("      - Confirma el baudrate (probar auto-detección)")
        print("      - Verifica el ID de la bomba en su configuración")
        print("      - Prueba con otro puerto COM")
        print("      - Revisa el cableado (TX↔RX, GND)")
        print("\n   2. Si hubo respuesta pero con errores:")
        print("      - Revisa el checksum (LRC)")
        print("      - Verifica la configuración de paridad")
        print("      - Prueba comandos más simples (000, 016)")
        print("\n   3. Para más información:")
        print("      - Consulta PROTOCOLO_GILBARCO_DEFINITIVO_100.md")
        print("      - Revisa gilbarco_pump_controller.py")

    except KeyboardInterrupt:
        print("\n\n⏹️  Diagnóstico interrumpido por usuario")
    finally:
        diag.cerrar()

    return 0


if __name__ == "__main__":
    try:
        sys.exit(menu_interactivo())
    except Exception as e:
        print(f"\n❌ ERROR FATAL: {str(e)}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
