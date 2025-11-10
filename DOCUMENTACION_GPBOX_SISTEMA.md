# 📘 DOCUMENTACIÓN COMPLETA DEL SISTEMA CEM-44 GPBOX

## 🎯 ANÁLISIS DEL ARCHIVO gpbox.ini

Fecha de análisis: 10 de Noviembre 2025
Sistema analizado: CEM-44 Gilbarco Controller

---

## 📋 ÍNDICE

1. [Resumen del Sistema](#resumen-del-sistema)
2. [Estructura del Archivo gpbox.ini](#estructura-del-archivo-gpboxini)
3. [Configuración de Bombas Actual](#configuración-de-bombas-actual)
4. [Arquitectura de Comunicación](#arquitectura-de-comunicación)
5. [Configuración de Mangueras y Productos](#configuración-de-mangueras-y-productos)
6. [Sistema de Precios](#sistema-de-precios)
7. [Cómo Capturar Datos de Dispensadores](#cómo-capturar-datos-de-dispensadores)
8. [Implementación de Tu Propio Sistema](#implementación-de-tu-propio-sistema)

---

## 🔍 RESUMEN DEL SISTEMA

### Sistema Configurado

**Configuración Actual:**
- **GPBox activas**: 1 (GPBox 01)
- **Bombas configuradas**: 6 (Pump 01 a Pump 06)
- **Marca de dispensadores**: Gilbarco (G)
- **Puerto de comunicación**: GPBox 01, Comm 1
- **Protocolo**: Gilbarco Two-Wire

### Esquema General

```
┌────────────────────────────────────────────────────────┐
│                   CEM-44 Controller                     │
│                                                          │
│  ┌──────────────────────────────────────────────────┐  │
│  │           GPBox 01 (Puerto Serial 1)             │  │
│  └──────────────────────┬───────────────────────────┘  │
└─────────────────────────┼──────────────────────────────┘
                          │ (RS-485 Multi-drop)
          ┌───────────────┴───────────────┬──────────────┐
          │                               │              │
    ┌─────▼─────┐  ┌──────────┐   ┌──────▼────┐  ┌─────▼─────┐
    │  Bomba 1  │  │ Bomba 2  │   │  Bomba 3  │  │  Bomba 6  │
    │ Gilbarco  │  │ Gilbarco │   │ Gilbarco  │  │ Gilbarco  │
    │   #01     │  │   #02    │   │   #03     │  │   #06     │
    └───────────┘  └──────────┘   └───────────┘  └───────────┘
```

---

## 📄 ESTRUCTURA DEL ARCHIVO gpbox.ini

### Sección 1: [GPBOX COMM ADDRESS]

Define las direcciones de comunicación de las cajas GPBox.

```ini
[GPBOX COMM ADDRESS]
Version = 02

; Formato: GPBox ## = Comm 1, Comm 2, Comm 3, Comm 4
GPBox 01 = 0001, 0000, 0000, 0000
```

**Interpretación:**
- `Version = 02`: Versión del protocolo GPBox
- `GPBox 01 = 0001, 0000, 0000, 0000`:
  - **GPBox 01**: Primera caja de comunicación
  - **0001**: Puerto Comm 1 activo (COM1 o equivalente)
  - **0000, 0000, 0000**: Puertos Comm 2, 3, 4 inactivos

### Sección 2: [PUMP]

**Configuración General:**

```ini
Slow Down Preset = 0.350
```
- Entrada de válvula lenta para preset (solo Wayne)
- Valor: 0.350 litros antes de cerrar completamente

```ini
Litros (L) o Galones (G) en Surtidor = L
```
- Unidad de medida configurada en dispensadores
- **L** = Litros (sistema métrico)
- **G** = Galones (sistema imperial)

```ini
Factor Multiplicador = 1
```
- Multiplicador de dinero (solo Wayne)
- **1** = Normal
- **10** = Para precios con más decimales

### Configuración Individual de Bombas

**Formato del registro:**

```
Pump ## = GPBox, Comm, Marca, Slot, Número, Dígitos, Máximo, PresetProd, PresetMonto
```

**Campos explicados:**

| Campo | Posición | Valores | Descripción |
|-------|----------|---------|-------------|
| **GPBox** | 1 | 01-99 | Número de GPBox que controla esta bomba |
| **Comm** | 2 | 1-4 | Puerto de comunicación del GPBox (1=Comm1, etc) |
| **Marca** | 3 | G/W/T/S/N/D/X | Marca del dispensador |
| **Slot** | 4 | 0-n | Slot en el GPBox (0 para CEM-DBox) |
| **Número** | 5 | 01-99 | Número físico del dispensador |
| **Dígitos** | 6 | 5/6 | Dígitos en display de monto |
| **Máximo** | 7 | 990/9990 | Litros máximos por transacción |
| **PresetProd** | 8 | S/N | Preset por producto habilitado |
| **PresetMonto** | 9 | S/N | Preset por monto habilitado |

**Marcas de Dispensadores:**

| Código | Marca | Protocolo |
|--------|-------|-----------|
| **G** | Gilbarco | Gilbarco Two-Wire |
| **W** | Wayne | Wayne Protocol |
| **T** | Tokheim | Tokheim Protocol |
| **S** | Schlumberger | Schlumberger Protocol |
| **N** | GNC | GNC Protocol (Gas Natural Comprimido) |
| **D** | DUNCLARE | Dunclare Protocol |
| **X** | Ninguno | Bomba no configurada |

---

## 🏗️ CONFIGURACIÓN DE BOMBAS ACTUAL

### Bombas Activas

```ini
Pump 01 = 01, 1, G, 0, 01, 5, 990, S, S
Pump 02 = 01, 1, G, 0, 02, 5, 990, S, S
Pump 03 = 01, 1, G, 0, 03, 5, 990, S, S
Pump 04 = 01, 1, G, 0, 04, 5, 990, S, S
Pump 05 = 01, 1, G, 0, 05, 5, 990, S, S
Pump 06 = 01, 1, G, 0, 06, 5, 990, S, S
```

### Tabla Detallada

| Bomba CEM | GPBox | Puerto | Marca | Bomba Física | Config |
|-----------|-------|--------|-------|--------------|--------|
| Pump 01 | 01 | Comm 1 | Gilbarco | #01 | 5 dígitos, 990L max |
| Pump 02 | 01 | Comm 1 | Gilbarco | #02 | 5 dígitos, 990L max |
| Pump 03 | 01 | Comm 1 | Gilbarco | #03 | 5 dígitos, 990L max |
| Pump 04 | 01 | Comm 1 | Gilbarco | #04 | 5 dígitos, 990L max |
| Pump 05 | 01 | Comm 1 | Gilbarco | #05 | 5 dígitos, 990L max |
| Pump 06 | 01 | Comm 1 | Gilbarco | #06 | 5 dígitos, 990L max |

**Características:**
- ✅ Preset por producto: Habilitado (S)
- ✅ Preset por monto: Habilitado (S)
- ✅ Display: 5 dígitos de monto
- ✅ Máximo: 990 litros por transacción

---

## 📡 ARQUITECTURA DE COMUNICACIÓN

### Topología Física

```
CEM-44 Controller
    │
    └─► GPBox 01 (Interface Hardware)
            │
            └─► Puerto Serial Comm 1 (Probablemente COM1)
                    │
                    └─► Bus RS-485 Multi-drop
                            │
                            ├─► Bomba #01 (Dirección 0x01)
                            ├─► Bomba #02 (Dirección 0x02)
                            ├─► Bomba #03 (Dirección 0x03)
                            ├─► Bomba #04 (Dirección 0x04)
                            ├─► Bomba #05 (Dirección 0x05)
                            └─► Bomba #06 (Dirección 0x06)
```

### Direccionamiento

Cada bomba tiene una dirección única en el bus:

| Bomba Física | Dirección Serial | Identificador CEM |
|--------------|------------------|-------------------|
| Bomba #01 | 0x01 | Pump 01 |
| Bomba #02 | 0x02 | Pump 02 |
| Bomba #03 | 0x03 | Pump 03 |
| Bomba #04 | 0x04 | Pump 04 |
| Bomba #05 | 0x05 | Pump 05 |
| Bomba #06 | 0x06 | Pump 06 |

---

## ⛽ CONFIGURACIÓN DE MANGUERAS Y PRODUCTOS

### Archivo GRADETANK.BIN

**Contenido analizado:**

```
000000100001  → Producto 0: Manguera 00, Grado 00, Tanque 01, ID Producto: 00001
010140000001  → Producto 1: Manguera 01, Grado 01, Tanque 04, ID Producto: 00001
020140000002  → Producto 2: Manguera 02, Grado 01, Tanque 04, ID Producto: 00002
030140000003  → Producto 3: Manguera 03, Grado 01, Tanque 04, ID Producto: 00003
```

**Formato del registro:**

```
[PPGGTT0000IIII]
 │ │ │      └─ ID del producto (4 dígitos)
 │ │ └──────── Número de tanque (2 dígitos)
 │ └────────── Grado/Grade (2 dígitos)
 └──────────── Posición de manguera (2 dígitos)
```

### Interpretación

**Ejemplo: Bomba con 3 mangueras**

```
┌────────────────────────────────┐
│        Dispensador #01          │
│                                 │
│  ┌─────┐  ┌─────┐  ┌─────┐    │
│  │ [0] │  │ [1] │  │ [2] │    │  ← Mangueras
│  └──┬──┘  └──┬──┘  └──┬──┘    │
│     │        │        │        │
│  Prod 0   Prod 1   Prod 2      │  ← Productos
│  Grade 0  Grade 1  Grade 1     │  ← Grados
│  Tank 1   Tank 4   Tank 4      │  ← Tanques
└────────────────────────────────┘
```

**Productos típicos por grado:**

| Grado | Producto | Nombre Común |
|-------|----------|--------------|
| 00 | 00001 | Diesel / Gasoil |
| 01 | 00001 | Gasolina Regular |
| 01 | 00002 | Gasolina Premium |
| 01 | 00003 | Gasolina Super |

---

## 💰 SISTEMA DE PRECIOS

### Archivos de Precios

```
ACTUALPRICES.BIN     → Precios actuales en dispensadores
PRICESLIST.BIN       → Lista de precios configurados
PRICESID.BIN         → IDs de configuraciones de precios
PRICETO.BIN          → Precios pendientes de aplicar
```

### Formato de Precios

**Del LOG analizado:**

```
PROCESS PRICE CHANGE - PUMP [1] HOSE [0] PRODUCT [1] PRICE [100]
```

**Estructura:**
- PUMP: Número de bomba (1-6)
- HOSE: Número de manguera (0-3)
- PRODUCT: ID de producto
- PRICE: Precio en centavos × 10 (100 = $1.00)

### Ejemplo de Transacción Real

```
LOG: PROCESS END STATE - SALE[0]$ VOL[0] PPU[2421] PUMP[1] HOSE[0][0]
```

**Decodificación:**
- **SALE**: Monto de venta ($0 = transacción cancelada)
- **VOL**: Volumen despachado (0 litros)
- **PPU**: Precio Por Unidad = 2421
  - Formato: `2421` = 24.21 pesos por litro
  - Dividir entre 100 para obtener precio real
- **PUMP**: Bomba 1
- **HOSE**: Manguera 0

### Cálculo de Precio

```python
# Precio almacenado en sistema
ppu_raw = 2421  # Valor del LOG

# Convertir a precio real
precio_por_litro = ppu_raw / 100.0
# Resultado: 24.21 pesos/litro

# Para capturar precios de todas las mangueras de una bomba:
def obtener_precios_bomba(pump_address):
    precios = {}
    for hose in range(4):  # 0-3 mangueras típicas
        # Leer precio de manguera específica
        precio = leer_precio(pump_address, hose)
        precios[hose] = precio / 100.0
    return precios
```

---

## 📊 CÓMO CAPTURAR DATOS DE DISPENSADORES

### 1. Capturar Configuración de Bombas

```python
def leer_configuracion_bombas():
    """
    Lee gpbox.ini y extrae configuración de bombas
    """
    import configparser

    config = configparser.ConfigParser()
    config.read('C:\\Windows\\CEM44\\gpbox.ini')

    bombas = {}

    for i in range(1, 17):  # Hasta 16 bombas
        pump_key = f'Pump {i:02d}'

        if config.has_option('PUMP', pump_key):
            valor = config.get('PUMP', pump_key)
            campos = [x.strip() for x in valor.split(',')]

            if len(campos) >= 9:
                bombas[i] = {
                    'gpbox': int(campos[0]),
                    'comm': int(campos[1]),
                    'marca': campos[2],
                    'slot': int(campos[3]),
                    'numero_fisico': int(campos[4]),
                    'digitos_monto': int(campos[5]),
                    'litros_max': int(campos[6]),
                    'preset_producto': campos[7] == 'S',
                    'preset_monto': campos[8] == 'S'
                }

    return bombas

# Uso:
bombas_config = leer_configuracion_bombas()
for num, config in bombas_config.items():
    print(f"Bomba {num}: {config}")
```

### 2. Capturar Mangueras y Productos

```python
def leer_configuracion_mangueras():
    """
    Lee GRADETANK.BIN y extrae configuración de mangueras
    """
    archivo = 'C:\\Windows\\CEM44\\Files\\Rpmdw.nad\\GRADETANK.BIN'

    mangueras = {}

    with open(archivo, 'r') as f:
        for linea in f:
            linea = linea.strip()
            if len(linea) >= 14:
                # Parsear formato: PPGGTT0000IIII
                posicion = int(linea[0:2])
                grado = int(linea[2:4])
                tanque = int(linea[4:6])
                producto_id = int(linea[10:14])

                mangueras[posicion] = {
                    'grado': grado,
                    'tanque': tanque,
                    'producto_id': producto_id
                }

    return mangueras

# Uso:
config_mangueras = leer_configuracion_mangueras()
for pos, config in config_mangueras.items():
    print(f"Manguera {pos}: Grado {config['grado']}, "
          f"Tanque {config['tanque']}, "
          f"Producto {config['producto_id']}")
```

### 3. Capturar Precios Actuales

**Opción A: Desde archivo binario**

```python
def leer_precios_archivo():
    """
    Lee precios desde ACTUALPRICES.BIN
    """
    archivo = 'C:\\Windows\\CEM44\\Files\\Rpmdw.nad\\ACTUALPRICES.BIN'

    with open(archivo, 'rb') as f:
        data = f.read()

    precios = []

    # Cada precio: 4 bytes en formato especial
    # Nota: 0xa7 0x81 0x81 0x81 parece ser formato codificado
    # Necesita decodificación específica del formato CEM-44

    for i in range(0, min(len(data), 200), 4):
        precio_raw = data[i:i+4]
        # Decodificar según formato CEM-44
        # (requiere ingeniería inversa del formato)
        precios.append(precio_raw)

    return precios
```

**Opción B: Por comunicación serial (RECOMENDADO)**

```python
from gilbarco_pump_controller import GilbarcoPumpController

def capturar_precios_todas_bombas():
    """
    Captura precios de todas las bombas activas
    """
    controller = GilbarcoPumpController(port='COM1', baudrate=9600)

    if not controller.connect():
        print("Error: No se pudo conectar")
        return None

    bombas_config = leer_configuracion_bombas()
    precios_sistema = {}

    for num_bomba, config in bombas_config.items():
        print(f"\n--- Bomba {num_bomba} ---")

        precios_bomba = {}

        # Leer configuración de mangueras para esta bomba
        mangueras = leer_configuracion_mangueras()

        # Iterar por cada manguera (típicamente 0-3)
        for hose_num in range(4):
            if hose_num in mangueras:
                # Comando personalizado para leer precio
                # (depende del protocolo Gilbarco específico)
                precio_raw = controller.read_price(
                    pump_address=config['numero_fisico'],
                    hose_number=hose_num
                )

                if precio_raw:
                    # Convertir a formato decimal
                    precio_decimal = precio_raw / 100.0

                    precios_bomba[hose_num] = {
                        'producto_id': mangueras[hose_num]['producto_id'],
                        'grado': mangueras[hose_num]['grado'],
                        'precio': precio_decimal,
                        'precio_raw': precio_raw
                    }

                    print(f"  Manguera {hose_num}: "
                          f"${precio_decimal:.2f}/L "
                          f"(Producto {mangueras[hose_num]['producto_id']})")

        precios_sistema[num_bomba] = precios_bomba

    controller.disconnect()

    return precios_sistema
```

### 4. Monitorear Cambios de Precio

```python
import time

def monitorear_precios(intervalo=5):
    """
    Monitorea cambios de precio en tiempo real
    """
    controller = GilbarcoPumpController(port='COM1', baudrate=9600)

    if not controller.connect():
        return

    precios_anteriores = {}

    print("Monitoreando cambios de precio... (Ctrl+C para detener)")

    try:
        while True:
            bombas_config = leer_configuracion_bombas()

            for num_bomba in bombas_config.keys():
                for hose in range(4):
                    precio_actual = controller.read_price(
                        pump_address=num_bomba,
                        hose_number=hose
                    )

                    if precio_actual:
                        key = f"{num_bomba}_{hose}"

                        if key in precios_anteriores:
                            if precios_anteriores[key] != precio_actual:
                                print(f"\n⚠️  CAMBIO DE PRECIO DETECTADO!")
                                print(f"   Bomba {num_bomba}, Manguera {hose}")
                                print(f"   Anterior: ${precios_anteriores[key]/100:.2f}/L")
                                print(f"   Nuevo: ${precio_actual/100:.2f}/L")

                        precios_anteriores[key] = precio_actual

            time.sleep(intervalo)

    except KeyboardInterrupt:
        print("\n✓ Monitoreo detenido")

    finally:
        controller.disconnect()
```

---

## 🛠️ IMPLEMENTACIÓN DE TU PROPIO SISTEMA

### Arquitectura Propuesta

```
┌─────────────────────────────────────────────────────────────┐
│              TU SISTEMA DE CONTROL PERSONALIZADO            │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌────────────────┐         ┌─────────────────────────┐    │
│  │  Módulo Config │◄────────┤  gpbox.ini Parser       │    │
│  └───────┬────────┘         └─────────────────────────┘    │
│          │                                                   │
│          │                  ┌─────────────────────────┐    │
│          ├─────────────────►│  GRADETANK.BIN Parser   │    │
│          │                  └─────────────────────────┘    │
│          │                                                   │
│          │                  ┌─────────────────────────┐    │
│          └─────────────────►│ Gilbarco Serial Driver  │    │
│                             └───────┬─────────────────┘    │
│                                     │                       │
└─────────────────────────────────────┼───────────────────────┘
                                      │
                    ┌─────────────────┴────────────────┐
                    │                                  │
                    │    Puerto Serial (COM1/RS485)    │
                    │                                  │
                    └─────────────────┬────────────────┘
                                      │
                       ┌──────────────┴──────────────┐
                       │                             │
                  [Bomba 1]  [Bomba 2]  ...  [Bomba 6]
```

### Paso 1: Parser de Configuración

```python
# config_parser.py

import configparser
from typing import Dict, List

class CEM44ConfigParser:
    """Parser para archivos de configuración CEM-44"""

    def __init__(self, base_path='C:\\Windows\\CEM44'):
        self.base_path = base_path
        self.gpbox_file = f'{base_path}\\gpbox.ini'
        self.gradetank_file = f'{base_path}\\Files\\Rpmdw.nad\\GRADETANK.BIN'

    def leer_gpbox(self) -> Dict:
        """Lee configuración de bombas desde gpbox.ini"""
        config = configparser.ConfigParser()
        config.read(self.gpbox_file)

        resultado = {
            'version': config.get('GPBOX COMM ADDRESS', 'Version'),
            'gpboxes': {},
            'bombas': {},
            'config_general': {}
        }

        # Leer GPBoxes
        for i in range(1, 11):
            key = f'GPBox {i:02d}'
            if config.has_option('GPBOX COMM ADDRESS', key):
                valor = config.get('GPBOX COMM ADDRESS', key)
                puertos = [int(x.strip(), 16) for x in valor.split(',')]
                resultado['gpboxes'][i] = puertos

        # Leer bombas
        for i in range(1, 17):
            key = f'Pump {i:02d}'
            if config.has_option('PUMP', key):
                valor = config.get('PUMP', key)
                campos = [x.strip() for x in valor.split(',')]

                if len(campos) >= 9:
                    resultado['bombas'][i] = {
                        'gpbox': int(campos[0]),
                        'comm': int(campos[1]),
                        'marca': campos[2],
                        'slot': int(campos[3]),
                        'numero_fisico': int(campos[4]),
                        'digitos_monto': int(campos[5]),
                        'litros_max': int(campos[6]),
                        'preset_producto': campos[7] == 'S',
                        'preset_monto': campos[8] == 'S',
                        'activa': True
                    }

        # Configuración general
        if config.has_option('PUMP', 'Slow Down Preset'):
            resultado['config_general']['slow_down'] = float(
                config.get('PUMP', 'Slow Down Preset')
            )

        if config.has_option('PUMP', 'Litros (L) o Galones (G) en Surtidor'):
            resultado['config_general']['unidad'] = config.get(
                'PUMP', 'Litros (L) o Galones (G) en Surtidor'
            )

        return resultado

    def leer_gradetank(self) -> Dict[int, Dict]:
        """Lee configuración de mangueras desde GRADETANK.BIN"""
        mangueras = {}

        try:
            with open(self.gradetank_file, 'r') as f:
                for linea in f:
                    linea = linea.strip()
                    if len(linea) >= 14:
                        posicion = int(linea[0:2])
                        grado = int(linea[2:4])
                        tanque = int(linea[4:6])
                        producto_id = int(linea[10:14])

                        mangueras[posicion] = {
                            'grado': grado,
                            'tanque': tanque,
                            'producto_id': producto_id
                        }
        except FileNotFoundError:
            print(f"⚠️  Archivo {self.gradetank_file} no encontrado")

        return mangueras

    def obtener_configuracion_completa(self) -> Dict:
        """Obtiene configuración completa del sistema"""
        gpbox_config = self.leer_gpbox()
        mangueras_config = self.leer_gradetank()

        return {
            'gpbox': gpbox_config,
            'mangueras': mangueras_config,
            'timestamp': time.time()
        }


# Uso:
parser = CEM44ConfigParser()
config_completa = parser.obtener_configuracion_completa()

print("=== CONFIGURACIÓN DEL SISTEMA ===")
print(f"\nGPBoxes activas: {len(config_completa['gpbox']['gpboxes'])}")
print(f"Bombas configuradas: {len(config_completa['gpbox']['bombas'])}")
print(f"Mangueras configuradas: {len(config_completa['mangueras'])}")

for num, bomba in config_completa['gpbox']['bombas'].items():
    print(f"\nBomba {num}:")
    print(f"  - Marca: {bomba['marca']}")
    print(f"  - Número físico: {bomba['numero_fisico']}")
    print(f"  - GPBox: {bomba['gpbox']}, Puerto: {bomba['comm']}")
```

### Paso 2: Sistema Completo de Captura

```python
# pump_data_collector.py

import time
import json
from datetime import datetime
from gilbarco_pump_controller import GilbarcoPumpController
from config_parser import CEM44ConfigParser

class PumpDataCollector:
    """Sistema de captura de datos de dispensadores"""

    def __init__(self, port='COM1', baudrate=9600):
        self.controller = GilbarcoPumpController(port, baudrate)
        self.parser = CEM44ConfigParser()
        self.config = None

    def inicializar(self) -> bool:
        """Inicializa el sistema"""
        print("Inicializando sistema de captura...")

        # Cargar configuración
        self.config = self.parser.obtener_configuracion_completa()
        print(f"✓ Configuración cargada: "
              f"{len(self.config['gpbox']['bombas'])} bombas")

        # Conectar a puerto serial
        if not self.controller.connect():
            print("✗ Error al conectar al puerto serial")
            return False

        print("✓ Sistema inicializado correctamente")
        return True

    def capturar_datos_bomba(self, num_bomba: int) -> Dict:
        """
        Captura todos los datos de una bomba específica

        Args:
            num_bomba: Número de bomba (1-16)

        Returns:
            Diccionario con todos los datos capturados
        """
        if num_bomba not in self.config['gpbox']['bombas']:
            return None

        bomba_config = self.config['gpbox']['bombas'][num_bomba]
        direccion_fisica = bomba_config['numero_fisico']

        datos = {
            'bomba_num': num_bomba,
            'timestamp': datetime.now().isoformat(),
            'configuracion': bomba_config,
            'estado': None,
            'mangueras': {},
            'totalizadores': None
        }

        # 1. Capturar estado
        print(f"  Leyendo estado de bomba {num_bomba}...")
        estado = self.controller.request_status(direccion_fisica)
        if estado:
            datos['estado'] = {
                'status': str(estado.get('pump_status', 'DESCONOCIDO')),
                'raw_data': estado
            }

        # 2. Capturar precios de cada manguera
        print(f"  Leyendo precios de mangueras...")
        for hose_num in range(4):  # 0-3 mangueras típicas
            if hose_num in self.config['mangueras']:
                manguera_config = self.config['mangueras'][hose_num]

                # Leer precio (implementar según protocolo)
                # Este es un placeholder - necesitas implementar read_price
                precio = None  # self.controller.read_price(direccion_fisica, hose_num)

                datos['mangueras'][hose_num] = {
                    'producto_id': manguera_config['producto_id'],
                    'grado': manguera_config['grado'],
                    'tanque': manguera_config['tanque'],
                    'precio': precio / 100.0 if precio else None,
                    'precio_raw': precio
                }

                if precio:
                    print(f"    Manguera {hose_num}: ${precio/100:.2f}/L")

        # 3. Capturar totalizadores
        print(f"  Leyendo totalizadores...")
        totalizadores = self.controller.read_totalizers(direccion_fisica)
        if totalizadores:
            datos['totalizadores'] = {
                'volumen_total_litros': totalizadores.get('total_volume_liters'),
                'monto_total': totalizadores.get('total_amount'),
                'raw_data': totalizadores
            }

        return datos

    def capturar_sistema_completo(self) -> Dict:
        """Captura datos de todas las bombas del sistema"""
        print("\n" + "=" * 60)
        print("CAPTURA DE DATOS DEL SISTEMA COMPLETO")
        print("=" * 60)

        datos_sistema = {
            'timestamp': datetime.now().isoformat(),
            'bombas': {},
            'resumen': {
                'total_bombas': 0,
                'bombas_activas': 0,
                'bombas_error': 0
            }
        }

        for num_bomba in self.config['gpbox']['bombas'].keys():
            print(f"\n--- Bomba {num_bomba} ---")

            datos_bomba = self.capturar_datos_bomba(num_bomba)

            if datos_bomba:
                datos_sistema['bombas'][num_bomba] = datos_bomba
                datos_sistema['resumen']['total_bombas'] += 1

                if datos_bomba['estado']:
                    datos_sistema['resumen']['bombas_activas'] += 1
                else:
                    datos_sistema['resumen']['bombas_error'] += 1

            time.sleep(0.5)  # Pausa entre bombas

        return datos_sistema

    def guardar_datos(self, datos: Dict, archivo: str):
        """Guarda datos capturados en archivo JSON"""
        with open(archivo, 'w', encoding='utf-8') as f:
            json.dump(datos, f, indent=2, ensure_ascii=False)

        print(f"\n✓ Datos guardados en: {archivo}")

    def cerrar(self):
        """Cierra conexiones y limpia recursos"""
        self.controller.disconnect()


# Uso del sistema:
if __name__ == "__main__":
    collector = PumpDataCollector(port='COM1', baudrate=9600)

    if collector.inicializar():
        # Capturar datos de todo el sistema
        datos = collector.capturar_sistema_completo()

        # Guardar en archivo
        archivo_salida = f"captura_sistema_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        collector.guardar_datos(datos, archivo_salida)

        # Mostrar resumen
        print("\n" + "=" * 60)
        print("RESUMEN DE CAPTURA")
        print("=" * 60)
        print(f"Total de bombas: {datos['resumen']['total_bombas']}")
        print(f"Bombas activas: {datos['resumen']['bombas_activas']}")
        print(f"Bombas con error: {datos['resumen']['bombas_error']}")

        collector.cerrar()
```

---

## 📝 CONCLUSIONES Y RECOMENDACIONES

### Datos Clave Identificados

1. ✅ **Sistema configurado**: 6 bombas Gilbarco
2. ✅ **Comunicación**: RS-485 multi-drop por GPBox 01
3. ✅ **Protocolo**: Gilbarco Two-Wire
4. ✅ **Mangueras**: 4 productos configurados (0-3)
5. ✅ **Formato de precios**: Centavos × 100 (ej: 2421 = $24.21)

### Ventajas de Tu Propio Sistema

✅ **Control total** sobre la comunicación
✅ **Sin dependencia** del CEM-44
✅ **Más flexible** para agregar funciones
✅ **Mejor logging** y debugging
✅ **Independiente de Windows** antiguo

### Próximos Pasos

1. **Completar implementación del comando READ_PRICE**
   - Necesitas capturar tráfico real con serial_monitor.py
   - Analizar el formato exacto del comando

2. **Testear con una bomba primero**
   - No probar en todas a la vez
   - Validar cada función antes de escalar

3. **Implementar sistema de logging robusto**
   - Registrar todos los comandos
   - Guardar respuestas para análisis

4. **Crear interfaz web/GUI** (opcional)
   - Dashboard para visualizar bombas
   - Control remoto de precios
   - Monitoreo en tiempo real

---

**Documentación generada el:** 10 de Noviembre 2025
**Versión:** 1.0
**Sistema analizado:** CEM-44 v6.02.00.06
