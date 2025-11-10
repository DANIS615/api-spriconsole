#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
MI SISTEMA DE CONTROL DE BOMBAS GILBARCO
=========================================
Sistema completo de gestion de dispensadores Gilbarco
Basado en el analisis del CEM-44

Autor: Sistema personalizado
Fecha: 2025-11-10
"""

import serial
import time
import struct
from datetime import datetime
from typing import Optional, Dict, List
import configparser
import json


# ============================================================================
# CONFIGURACION DEL PROTOCOLO GILBARCO
# ============================================================================

class GilbarcoProtocol:
    """Constantes y funciones del protocolo Gilbarco Two-Wire"""

    # Caracteres especiales
    DLE = 0x10
    STX = 0x02
    ETX = 0x03
    ACK = 0x06
    NAK = 0x15

    # Comandos
    CMD_VERSION = 0x01
    CMD_CONFIG = 0x02
    CMD_STATUS = 0x03
    CMD_PRESET = 0x04
    CMD_AUTHORIZE = 0x05
    CMD_STOP = 0x06
    CMD_RESET = 0x07
    CMD_READ_TOTALIZERS = 0x08
    CMD_READ_PRICE = 0x09
    CMD_WRITE_PRICE = 0x0A

    @staticmethod
    def calculate_checksum(data: bytes) -> int:
        """Calcula checksum XOR"""
        checksum = 0
        for byte in data:
            checksum ^= byte
        return checksum

    @staticmethod
    def build_message(address: int, command: int, data: bytes = b'') -> bytes:
        """Construye mensaje Gilbarco"""
        message = bytearray()
        message.append(GilbarcoProtocol.DLE)
        message.append(GilbarcoProtocol.STX)
        message.append(address & 0xFF)
        message.append(command & 0xFF)
        message.append(len(data) & 0xFF)

        if data:
            message.extend(data)

        checksum_data = message[2:]
        checksum = GilbarcoProtocol.calculate_checksum(checksum_data)
        message.append(checksum)

        message.append(GilbarcoProtocol.DLE)
        message.append(GilbarcoProtocol.ETX)

        return bytes(message)

    @staticmethod
    def parse_message(response: bytes) -> Optional[Dict]:
        """Parsea respuesta Gilbarco"""
        if not response or len(response) < 8:
            return None

        if response[0] != GilbarcoProtocol.DLE or response[1] != GilbarcoProtocol.STX:
            return None
        if response[-2] != GilbarcoProtocol.DLE or response[-1] != GilbarcoProtocol.ETX:
            return None

        address = response[2]
        command = response[3]
        length = response[4]
        data = response[5:5+length]
        checksum_received = response[5+length]

        checksum_data = response[2:5+length]
        checksum_calculated = GilbarcoProtocol.calculate_checksum(checksum_data)

        return {
            'address': address,
            'command': command,
            'length': length,
            'data': data,
            'checksum_ok': checksum_calculated == checksum_received
        }


# ============================================================================
# CONFIGURACION DEL SISTEMA
# ============================================================================

class SistemaConfig:
    """Lee y gestiona configuracion del sistema"""

    def __init__(self, base_path='C:\\Windows\\CEM44'):
        self.base_path = base_path
        self.gpbox_file = f'{base_path}\\gpbox.ini'
        self.gradetank_file = f'{base_path}\\Files\\Rpmdw.nad\\GRADETANK.BIN'
        self.bombas = {}
        self.mangueras = {}

    def cargar_configuracion(self):
        """Carga toda la configuracion"""
        print("[CONFIG] Cargando configuracion del sistema...")

        self.cargar_gpbox()
        self.cargar_mangueras()

        print(f"[CONFIG] Bombas configuradas: {len(self.bombas)}")
        print(f"[CONFIG] Mangueras configuradas: {len(self.mangueras)}")

        return True

    def cargar_gpbox(self):
        """Carga configuracion de bombas desde gpbox.ini"""
        try:
            config = configparser.ConfigParser()
            config.read(self.gpbox_file)

            for i in range(1, 17):
                key = f'Pump {i:02d}'
                if config.has_option('PUMP', key):
                    valor = config.get('PUMP', key)
                    campos = [x.strip() for x in valor.split(',')]

                    if len(campos) >= 9:
                        self.bombas[i] = {
                            'gpbox': int(campos[0]),
                            'comm': int(campos[1]),
                            'marca': campos[2],
                            'slot': int(campos[3]),
                            'numero_fisico': int(campos[4]),
                            'digitos_monto': int(campos[5]),
                            'litros_max': int(campos[6]),
                            'preset_producto': campos[7] == 'S',
                            'preset_monto': campos[8] == 'S',
                            'estado': 'IDLE',
                            'mangueras': {}
                        }

            print(f"[CONFIG] Cargadas {len(self.bombas)} bombas desde gpbox.ini")

        except Exception as e:
            print(f"[ERROR] Error cargando gpbox.ini: {e}")

    def cargar_mangueras(self):
        """Carga configuracion de mangueras desde GRADETANK.BIN"""
        try:
            with open(self.gradetank_file, 'r') as f:
                for linea in f:
                    linea = linea.strip()
                    if len(linea) >= 14:
                        posicion = int(linea[0:2])
                        grado = int(linea[2:4])
                        tanque = int(linea[4:6])
                        producto_id = int(linea[10:14])

                        self.mangueras[posicion] = {
                            'grado': grado,
                            'tanque': tanque,
                            'producto_id': producto_id,
                            'precio': 0.0,
                            'nombre': self.get_nombre_producto(producto_id)
                        }

            print(f"[CONFIG] Cargadas {len(self.mangueras)} mangueras desde GRADETANK.BIN")

        except Exception as e:
            print(f"[ERROR] Error cargando GRADETANK.BIN: {e}")

    def get_nombre_producto(self, producto_id: int) -> str:
        """Obtiene nombre del producto"""
        nombres = {
            1: "Diesel",
            2: "Gasolina Regular",
            3: "Gasolina Premium",
            4: "Gasolina Super"
        }
        return nombres.get(producto_id, f"Producto {producto_id}")

    def mostrar_configuracion(self):
        """Muestra configuracion completa"""
        print("\n" + "="*80)
        print("CONFIGURACION DEL SISTEMA")
        print("="*80)

        for num, bomba in self.bombas.items():
            print(f"\nBomba {num:02d}:")
            print(f"  Marca: {bomba['marca']}")
            print(f"  Numero fisico: {bomba['numero_fisico']}")
            print(f"  GPBox: {bomba['gpbox']}, Puerto: {bomba['comm']}")
            print(f"  Capacidad maxima: {bomba['litros_max']} litros")

        print(f"\nMangueras/Productos:")
        for pos, manguera in self.mangueras.items():
            print(f"  Manguera {pos}: {manguera['nombre']} "
                  f"(Grado {manguera['grado']}, Tanque {manguera['tanque']})")

        print("="*80 + "\n")


# ============================================================================
# GESTOR DE BOMBAS
# ============================================================================

class GestorBombas:
    """Gestiona comunicacion con bombas Gilbarco"""

    def __init__(self, port='COM1', baudrate=9600):
        self.port = port
        self.baudrate = baudrate
        self.serial_conn = None
        self.connected = False
        self.debug = True

    def conectar(self) -> bool:
        """Conecta al puerto serial"""
        try:
            self.serial_conn = serial.Serial(
                port=self.port,
                baudrate=self.baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout=2.0
            )

            self.connected = True
            print(f"[SERIAL] Conectado a {self.port} @ {self.baudrate} baud")

            self.serial_conn.reset_input_buffer()
            self.serial_conn.reset_output_buffer()

            return True

        except serial.SerialException as e:
            print(f"[ERROR] No se pudo abrir {self.port}: {e}")
            self.connected = False
            return False

    def desconectar(self):
        """Desconecta del puerto serial"""
        if self.serial_conn and self.serial_conn.is_open:
            self.serial_conn.close()
            self.connected = False
            print(f"[SERIAL] Desconectado de {self.port}")

    def enviar_comando(self, address: int, command: int, data: bytes = b'') -> Optional[bytes]:
        """Envia comando y recibe respuesta"""
        if not self.connected:
            print("[ERROR] No conectado al puerto serial")
            return None

        mensaje = GilbarcoProtocol.build_message(address, command, data)

        if self.debug:
            print(f"[TX] -> {mensaje.hex(' ').upper()}")

        try:
            self.serial_conn.write(mensaje)
            time.sleep(0.1)

            if self.serial_conn.in_waiting > 0:
                respuesta = self.serial_conn.read(self.serial_conn.in_waiting)

                if self.debug:
                    print(f"[RX] <- {respuesta.hex(' ').upper()}")

                return respuesta
            else:
                if self.debug:
                    print("[RX] <- (sin respuesta)")
                return None

        except Exception as e:
            print(f"[ERROR] Error en comunicacion: {e}")
            return None

    def solicitar_estado(self, address: int) -> Optional[Dict]:
        """Solicita estado de una bomba"""
        respuesta = self.enviar_comando(address, GilbarcoProtocol.CMD_STATUS)

        if respuesta:
            return GilbarcoProtocol.parse_message(respuesta)
        return None

    def autorizar_bomba(self, address: int, monto: float = 0, volumen: float = 0) -> bool:
        """Autoriza una bomba"""
        # Construir datos del comando
        data = bytearray()

        preset_type = 0
        if monto > 0:
            preset_type |= 1
        if volumen > 0:
            preset_type |= 2

        data.append(preset_type)
        data.append(1)  # Price level

        amount_cents = int(monto * 100)
        data.extend(struct.pack('>I', amount_cents))

        volume_tenths = int(volumen * 10)
        data.extend(struct.pack('>I', volume_tenths))

        respuesta = self.enviar_comando(address, GilbarcoProtocol.CMD_AUTHORIZE, bytes(data))

        if respuesta:
            parsed = GilbarcoProtocol.parse_message(respuesta)
            return parsed is not None and parsed.get('checksum_ok', False)

        return False

    def leer_precio(self, address: int, manguera: int) -> Optional[float]:
        """Lee precio de una manguera"""
        data = bytes([manguera])
        respuesta = self.enviar_comando(address, GilbarcoProtocol.CMD_READ_PRICE, data)

        if respuesta:
            parsed = GilbarcoProtocol.parse_message(respuesta)
            if parsed and len(parsed['data']) >= 4:
                precio_raw = struct.unpack('>I', parsed['data'][0:4])[0]
                return precio_raw / 100.0

        return None


# ============================================================================
# SISTEMA PRINCIPAL
# ============================================================================

class SistemaBombas:
    """Sistema completo de gestion de bombas"""

    def __init__(self):
        self.config = SistemaConfig()
        self.gestor = None
        self.running = False

    def inicializar(self, port='COM1', baudrate=9600) -> bool:
        """Inicializa el sistema"""
        print("\n" + "="*80)
        print("SISTEMA DE CONTROL DE BOMBAS GILBARCO")
        print("="*80)
        print()

        # Cargar configuracion
        if not self.config.cargar_configuracion():
            print("[ERROR] No se pudo cargar configuracion")
            return False

        # Mostrar configuracion
        self.config.mostrar_configuracion()

        # Conectar a puerto serial
        self.gestor = GestorBombas(port, baudrate)

        if not self.gestor.conectar():
            print("[WARN] No se pudo conectar al puerto serial")
            print("[INFO] El sistema funcionara en modo SIMULACION")
            return True  # Continuar en modo simulacion

        return True

    def menu_principal(self):
        """Menu principal del sistema"""
        while True:
            print("\n" + "="*80)
            print("MENU PRINCIPAL")
            print("="*80)
            print("1. Ver estado de todas las bombas")
            print("2. Ver precios de todas las mangueras")
            print("3. Autorizar bomba")
            print("4. Detener bomba")
            print("5. Leer totalizadores")
            print("6. Cambiar precio")
            print("7. Monitoreo continuo")
            print("8. Exportar datos a JSON")
            print("9. Ver configuracion del sistema")
            print("0. Salir")
            print("="*80)

            opcion = input("\nSeleccione opcion: ").strip()

            if opcion == '0':
                break
            elif opcion == '1':
                self.ver_estado_bombas()
            elif opcion == '2':
                self.ver_precios()
            elif opcion == '3':
                self.autorizar_bomba_menu()
            elif opcion == '7':
                self.monitoreo_continuo()
            elif opcion == '8':
                self.exportar_datos()
            elif opcion == '9':
                self.config.mostrar_configuracion()
            else:
                print("[!] Opcion no implementada aun")

    def ver_estado_bombas(self):
        """Muestra estado de todas las bombas"""
        print("\n" + "="*80)
        print("ESTADO DE BOMBAS")
        print("="*80)

        if not self.gestor or not self.gestor.connected:
            print("[SIMULACION] Puerto serial no conectado")
            print("Mostrando configuracion en lugar de estado real...")

            for num, bomba in self.config.bombas.items():
                print(f"\nBomba {num:02d}:")
                print(f"  Estado: SIMULADO")
                print(f"  Marca: {bomba['marca']}")
                print(f"  Direccion: {bomba['numero_fisico']}")
            return

        for num, bomba in self.config.bombas.items():
            address = bomba['numero_fisico']
            print(f"\nBomba {num:02d} (Direccion {address}):")

            estado = self.gestor.solicitar_estado(address)

            if estado:
                print(f"  Estado: OK")
                print(f"  Respuesta: {estado}")
            else:
                print(f"  Estado: SIN RESPUESTA")

            time.sleep(0.5)

    def ver_precios(self):
        """Muestra precios de todas las mangueras"""
        print("\n" + "="*80)
        print("PRECIOS DE PRODUCTOS")
        print("="*80)

        if not self.gestor or not self.gestor.connected:
            print("[SIMULACION] Puerto serial no conectado")
            print("Mostrando configuracion de mangueras...")

            for pos, manguera in self.config.mangueras.items():
                print(f"\nManguera {pos}: {manguera['nombre']}")
                print(f"  Grado: {manguera['grado']}")
                print(f"  Tanque: {manguera['tanque']}")
                print(f"  Precio: $XXXX.XX (necesita lectura real)")
            return

        # Intentar leer precios de la bomba 1
        address = 1
        print(f"\nLeyendo precios de Bomba 1 (direccion {address})...")

        for pos, manguera in self.config.mangueras.items():
            precio = self.gestor.leer_precio(address, pos)

            if precio:
                print(f"\nManguera {pos}: {manguera['nombre']}")
                print(f"  Precio: ${precio:.2f}/litro")
            else:
                print(f"\nManguera {pos}: {manguera['nombre']}")
                print(f"  Precio: (sin respuesta)")

            time.sleep(0.3)

    def autorizar_bomba_menu(self):
        """Menu para autorizar bomba"""
        print("\n" + "="*80)
        print("AUTORIZAR BOMBA")
        print("="*80)

        try:
            num_bomba = int(input("Numero de bomba (1-6): "))

            if num_bomba not in self.config.bombas:
                print("[ERROR] Bomba no existe")
                return

            bomba = self.config.bombas[num_bomba]
            address = bomba['numero_fisico']

            monto = float(input("Monto preset ($0 = sin limite): ") or "0")
            volumen = float(input("Volumen preset (0 = sin limite): ") or "0")

            if not self.gestor or not self.gestor.connected:
                print("[SIMULACION] En modo real, se enviaria:")
                print(f"  Bomba {num_bomba} (direccion {address})")
                print(f"  Monto: ${monto:.2f}")
                print(f"  Volumen: {volumen:.2f} L")
                return

            print(f"\n[INFO] Autorizando bomba {num_bomba}...")

            if self.gestor.autorizar_bomba(address, monto, volumen):
                print("[OK] Bomba autorizada exitosamente")
            else:
                print("[ERROR] No se pudo autorizar la bomba")

        except ValueError:
            print("[ERROR] Valor invalido")

    def monitoreo_continuo(self):
        """Monitoreo continuo de bombas"""
        print("\n" + "="*80)
        print("MONITOREO CONTINUO (Ctrl+C para detener)")
        print("="*80)

        if not self.gestor or not self.gestor.connected:
            print("[ERROR] Necesitas estar conectado al puerto serial")
            input("Presiona Enter para continuar...")
            return

        try:
            while True:
                print(f"\n[{datetime.now().strftime('%H:%M:%S')}]")

                for num, bomba in self.config.bombas.items():
                    address = bomba['numero_fisico']
                    estado = self.gestor.solicitar_estado(address)

                    if estado:
                        print(f"  Bomba {num}: OK")
                    else:
                        print(f"  Bomba {num}: --")

                time.sleep(5)

        except KeyboardInterrupt:
            print("\n[INFO] Monitoreo detenido")

    def exportar_datos(self):
        """Exporta configuracion a JSON"""
        archivo = f"configuracion_bombas_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"

        datos = {
            'timestamp': datetime.now().isoformat(),
            'bombas': self.config.bombas,
            'mangueras': self.config.mangueras
        }

        with open(archivo, 'w', encoding='utf-8') as f:
            json.dump(datos, f, indent=2, ensure_ascii=False)

        print(f"\n[OK] Datos exportados a: {archivo}")

    def cerrar(self):
        """Cierra el sistema"""
        if self.gestor:
            self.gestor.desconectar()

        print("\n[INFO] Sistema cerrado")


# ============================================================================
# PUNTO DE ENTRADA PRINCIPAL
# ============================================================================

def main():
    """Funcion principal"""
    sistema = SistemaBombas()

    try:
        if sistema.inicializar(port='COM1', baudrate=9600):
            sistema.menu_principal()
    except KeyboardInterrupt:
        print("\n\n[INFO] Interrupcion por usuario")
    except Exception as e:
        print(f"\n[ERROR] Error fatal: {e}")
        import traceback
        traceback.print_exc()
    finally:
        sistema.cerrar()


if __name__ == "__main__":
    main()
