# ANALISIS SMART SHIP FACTORY

## Fecha: 10 de Noviembre 2025

---

## DESCUBRIMIENTO

Smart Ship Factory (SSF) es un sistema alternativo al CEM-44 que FUNCIONA con las bombas Gilbarco.

**Estado:** FUNCIONANDO pero inestable (se cae a veces)

---

## ESTRUCTURA DEL SISTEMA

### Ubicacion
```
C:\Windows\CEM44\Smart Ship Factory\
```

### Arquitectura
```
Smart Ship Factory/
└── Spirit/
    ├── bin/
    │   ├── SSF.FC.D.exe                    → Forecourt Controller
    │   ├── SSF.Msg.Router.D.exe            → Message Router
    │   ├── SSF.Spirit.Ticket.Module.D.exe  → Ticket Module
    │   ├── SSF.Spirit.Watchdog.D.exe       → Watchdog
    │   ├── pumps/                          → Drivers de bombas
    │   ├── communications/                 → Drivers de comunicacion
    │   ├── router/
    │   ├── SSF.Logs/                       → Logs del sistema
    │   └── license/
    └── spiritWeb/
        └── data/outbox/
            └── exportpumpsales*.xml        → Exportacion de ventas
```

---

## COMPONENTES CRITICOS

### 1. Drivers de Bombas

Ubicacion: `Spirit/bin/pumps/`

```
SSF.Gilbarco.D.dll        → Driver oficial Gilbarco ✓ IMPORTANTE
SSF.Wayne.D.dll           → Driver Wayne
SSF.FC.Pump.Bogus.D.dll   → Driver simulado (testing)
```

**SSF.Gilbarco.D.dll** - Este archivo contiene:
- Protocolo Gilbarco Two-Wire completo
- Comandos especificos
- Parseo de respuestas
- Manejo de errores

### 2. Drivers de Comunicacion

Ubicacion: `Spirit/bin/communications/`

```
SSF.FC.Comm.GPBox.D.dll    → Comunicacion GPBox ✓ IMPORTANTE
SSF.FC.Comm.Serial.D.dll   → Comunicacion Serial directa
SSF.FC.Comm.TCP.D.dll      → Comunicacion TCP/IP
SSF.FC.Comm.Bogus.D.dll    → Comunicacion simulada
```

**SSF.FC.Comm.GPBox.D.dll** - Este archivo contiene:
- Acceso directo al hardware GPBox
- Configuracion de puertos
- Protocolo de bajo nivel
- Manejo de multiples bombas

---

## FORMATO DE DATOS

### Exportacion de Ventas (XML)

Archivo ejemplo: `exportpumpsales20070320163033.xml`

```xml
<SaleLine
    sale_id="109450"
    end_date="20061102"
    end_time="191248"
    pump_id="0"              ← ID de bomba (0-5)
    hose_id="4"              ← ID de manguera
    grade_id="2"             ← ID de producto/grado
    volume="11.764706"       ← Volumen en litros
    money="20"               ← Dinero total
    ppu="1.7"                ← Precio por unidad ✓ PRECIO AQUI
    level="0"
    sale_type="0"
    initial_volume="42300.615745"  ← Totalizador inicial
    final_volume="42312.380451"    ← Totalizador final
    start_date="20061006"
    start_time="191248"
    preset_amount="0"
    batch="80"/>
```

**Datos importantes:**
- `ppu` = Precio por unidad (price per unit)
- `volume` = Litros despachados
- `money` = Total en dinero
- `pump_id` = Numero de bomba
- `hose_id` = Numero de manguera

---

## COMO APROVECHAR ESTE SISTEMA

### Opcion 1: Usar las DLLs directamente (RECOMENDADO)

Smart Ship Factory ya tiene todo implementado en DLLs.

**Ventajas:**
- Protocolo ya funciona
- Manejo de errores completo
- Probado en produccion

**Como usar:**

```python
import ctypes
import os

# Cargar DLL de Gilbarco
dll_path = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"
gilbarco = ctypes.CDLL(dll_path)

# Cargar DLL de GPBox
comm_path = r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\communications\SSF.FC.Comm.GPBox.D.dll"
gpbox = ctypes.CDLL(comm_path)

# Descubrir funciones exportadas
# (necesitamos analizar la DLL con herramientas)
```

### Opcion 2: Capturar trafico mientras SSF funciona

Ya que SSF funciona, podemos:

1. Ejecutar SSF
2. Ejecutar nuestro monitor serial en paralelo
3. Capturar comandos REALES que SSF envia
4. Implementar en nuestro sistema

**Comando:**
```bash
# Terminal 1: Monitor
python monitor_simple.py

# Terminal 2: Ejecutar SSF
cd "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin"
SSF.FC.D.exe
```

### Opcion 3: Analizar los ejecutables

Herramientas para extraer informacion:

**Dependency Walker:**
- Ver funciones exportadas de DLLs
- Ver dependencias

**DNSpy / ILSpy:**
- Si las DLLs son .NET, descompilar

**Ghidra / IDA:**
- Analisis de codigo nativo
- Ingenieria inversa del protocolo

---

## FUNCIONES POTENCIALMENTE UTILES

### De SSF.Gilbarco.D.dll

Funciones esperadas (nombres aproximados):

```
Initialize()
Connect()
Disconnect()
GetPumpStatus(pumpId)
AuthorizePump(pumpId, amount, volume)
GetPrice(pumpId, hoseId)           ← ESTA ES LA QUE NECESITAMOS
SetPrice(pumpId, hoseId, price)
GetTotalizers(pumpId)
StopPump(pumpId)
ResetPump(pumpId)
```

### De SSF.FC.Comm.GPBox.D.dll

Funciones esperadas:

```
OpenPort(portNumber)
ClosePort()
SendCommand(pumpAddress, command, data)
ReceiveResponse()
SetBaudrate(baudrate)
```

---

## PASOS PARA APROVECHAR SSF

### PASO 1: Analizar las DLLs

```bash
# Descargar Dependency Walker
# https://www.dependencywalker.com/

# O usar dumpbin (viene con Visual Studio)
dumpbin /EXPORTS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# Ver funciones disponibles
```

### PASO 2: Crear wrapper Python

Una vez que sepamos las funciones:

```python
import ctypes
from ctypes import c_int, c_char_p, c_float, POINTER

# Cargar DLL
gilbarco = ctypes.CDLL(r"C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll")

# Definir prototipos de funciones
# Ejemplo (nombres aproximados):
gilbarco.Initialize.restype = c_int
gilbarco.GetPrice.argtypes = [c_int, c_int, POINTER(c_float)]
gilbarco.GetPrice.restype = c_int

# Usar funciones
pump_id = 1
hose_id = 0
price = c_float()

result = gilbarco.GetPrice(pump_id, hose_id, ctypes.byref(price))

if result == 0:  # Success
    print(f"Precio: ${price.value:.2f}/litro")
```

### PASO 3: Integrar en nuestro sistema

```python
# En mi_sistema_bombas.py

from ssf_wrapper import SSFGilbarco

class GestorBombas:
    def __init__(self):
        self.ssf = SSFGilbarco()

    def leer_precio(self, address, manguera):
        # Usar la DLL de SSF en lugar de nuestro protocolo
        return self.ssf.get_price(address, manguera)
```

---

## CAPTURA DE TRAFICO DE SSF

### Script de captura simultanea

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Captura trafico mientras SSF funciona
"""

import subprocess
import time
from monitor_simple import monitor_serial

# Iniciar monitor en segundo plano
monitor_process = subprocess.Popen(['python', 'monitor_simple.py'])

print("[INFO] Monitor iniciado")
print("[INFO] Ahora ejecuta SSF.FC.D.exe")
print("[INFO] Presiona Ctrl+C cuando termines de capturar")

try:
    # Esperar indefinidamente
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    print("\n[INFO] Deteniendo captura...")
    monitor_process.terminate()
    print("[OK] Captura guardada en captura_serial.txt")
```

---

## ALTERNATIVA: LEER ARCHIVOS DE SSF

### Exportaciones XML

SSF exporta ventas a XML con TODOS los datos:

```python
import xml.etree.ElementTree as ET

# Leer archivo XML
tree = ET.parse(r'C:\Windows\CEM44\Smart Ship Factory\Spirit\spiritWeb\data\outbox\exportpumpsales20070320163033.xml')
root = tree.getroot()

# Procesar ventas
for sale in root.findall('SaleLine'):
    pump_id = sale.get('pump_id')
    hose_id = sale.get('hose_id')
    ppu = float(sale.get('ppu'))  # Precio por unidad
    volume = float(sale.get('volume'))
    money = float(sale.get('money'))

    print(f"Bomba {pump_id}, Manguera {hose_id}: ${ppu:.2f}/litro")
```

---

## COMPARACION: CEM-44 vs Smart Ship Factory

| Caracteristica | CEM-44 | Smart Ship Factory |
|---------------|--------|-------------------|
| Funciona en Windows 11 | NO | SI (pero inestable) |
| Usa GPBox | SI | SI |
| Protocolo Gilbarco | SI | SI |
| DLLs accesibles | NO | SI ✓ |
| Exporta datos | Binario | XML ✓ |
| Documentacion | NO | Mejor |
| Estabilidad | Baja | Media |

---

## RECOMENDACIONES

### PRIORITARIO:

1. **Analizar SSF.Gilbarco.D.dll y SSF.FC.Comm.GPBox.D.dll**
   - Extraer funciones exportadas
   - Crear wrapper Python
   - Usar directamente en lugar de reimplementar

2. **Capturar trafico de SSF mientras funciona**
   - Ejecutar monitor_simple.py
   - Ejecutar SSF.FC.D.exe
   - Capturar comandos reales
   - Comparar con nuestro protocolo

3. **Leer archivos XML de SSF**
   - Ver formatos de exportacion
   - Obtener precios de ahi
   - Alternativa si comunicacion serial falla

### SECUNDARIO:

4. Crear wrapper completo para DLLs de SSF
5. Integrar en nuestro sistema
6. Agregar estabilidad que SSF no tiene

---

## COMANDOS RAPIDOS

### Analizar DLLs

```bash
# Listar funciones exportadas (si tienes dumpbin)
dumpbin /EXPORTS "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll"

# O usar PowerShell
powershell "Get-Content 'C:\Windows\CEM44\Smart Ship Factory\Spirit\bin\pumps\SSF.Gilbarco.D.dll' -Encoding Byte | Format-Hex | Select-String -Pattern 'GetPrice|Initialize|Connect'"
```

### Ejecutar SSF

```bash
cd "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin"
SSF.FC.D.exe
```

### Capturar mientras SSF funciona

```bash
# Terminal 1
python monitor_simple.py

# Terminal 2
cd "C:\Windows\CEM44\Smart Ship Factory\Spirit\bin"
SSF.FC.D.exe
```

---

## ARCHIVOS IMPORTANTES DE SSF

```
Spirit/bin/pumps/SSF.Gilbarco.D.dll              ← Driver Gilbarco
Spirit/bin/communications/SSF.FC.Comm.GPBox.D.dll ← Driver GPBox
Spirit/bin/SSF.FC.D.exe                          ← Forecourt Controller
Spirit/spiritWeb/data/outbox/*.xml               ← Exportaciones
Spirit/bin/license/ssflicense.ini                ← Licencia
```

---

## PROXIMOS PASOS

1. Capturar trafico de SSF (AHORA)
2. Analizar DLLs con herramientas
3. Crear wrapper Python para DLLs
4. Integrar en mi_sistema_bombas.py

---

## VENTAJAS DE USAR SSF

- ✓ Ya funciona con las bombas
- ✓ Protocolo probado
- ✓ DLLs reutilizables
- ✓ Exporta a XML (facil de leer)
- ✓ Podemos capturar el trafico real
- ✓ NO necesitamos reinventar la rueda

---

**CONCLUSION:**

Smart Ship Factory es una MINA DE ORO de informacion.

Podemos:
1. Usar sus DLLs directamente
2. Capturar su trafico
3. Leer sus archivos XML
4. Aprender su protocolo exacto

**SIGUIENTE:** Capturar trafico mientras SSF funciona

---

**Fecha:** 10 Noviembre 2025
**Estado:** Smart Ship Factory encontrado y analizado
**Prioridad:** ALTA - Capturar trafico AHORA
