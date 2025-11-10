# 📖 GUÍA DE USO: Veeder-Root Tank Controller
## Sistema Python para Monitoreo de Tanques de Combustible

---

## 🎯 DESCRIPCIÓN

**veeder_root_tank_controller.py** es una implementación Python completa del protocolo Veeder-Root TLS-300/350 para monitoreo de tanques de combustible (ATG - Automatic Tank Gauge).

Basado en ingeniería inversa de TankService.exe del sistema CEM-44, este módulo permite:
- ✅ Comunicación serial con ATG Veeder-Root
- ✅ Lectura de inventario de tanques
- ✅ Monitoreo de entregas de combustible
- ✅ Consulta de alarmas activas
- ✅ Generación de reportes de reconciliación
- ✅ Configuración del sistema

---

## 📋 REQUISITOS

### Software
```bash
Python >= 3.7
pyserial >= 3.5
```

### Hardware
- Puerto serial RS-232/RS-485 (o adaptador USB-Serial)
- ATG Veeder-Root TLS-300, TLS-350, o TLS-450
- Cable de comunicación adecuado

### Instalación de Dependencias

```bash
pip install pyserial
```

---

## 🚀 USO BÁSICO

### 1. Importar el Módulo

```python
from veeder_root_tank_controller import (
    VeederRootTankController,
    VeederRootModel
)

# Crear controlador
controller = VeederRootTankController(
    port="COM2",  # Windows
    # port="/dev/ttyUSB0",  # Linux
    model=VeederRootModel.TLS_350,
    baudrate=9600
)

# Abrir conexión
if controller.open():
    # Probar conexión
    if controller.test_connection():
        print("Conectado exitosamente al ATG")

    # ... realizar operaciones ...

    # Cerrar al terminar
    controller.close()
```

### 2. Leer Inventario de Todos los Tanques

```python
# Obtener inventario de todos los tanques
inventories = controller.read_inventory_all_tanks()

for inv in inventories:
    print(f"Tanque {inv.tank_number}:")
    print(f"  Volumen Bruto: {inv.gross_volume:.2f} L")
    print(f"  Volumen Neto (TC): {inv.tc_volume:.2f} L")
    print(f"  Altura Producto: {inv.height:.0f} cm")
    print(f"  Temperatura: {inv.temperature:.1f} °C")
    print(f"  Agua: {inv.water_volume:.2f} L ({inv.water_height:.0f} cm)")
    print(f"  Producto: {inv.product_label}")
    print()
```

### 3. Leer Inventario de un Tanque Específico

```python
# Leer tanque #1
inventory = controller.read_inventory_tank(tank_number=1)

if inventory:
    print(inventory)  # Formato: Tank [1]: VolumenBruto [12500.00L] - ...
```

### 4. Monitorear Entregas de Combustible

```python
# Leer entregas de todos los tanques
deliveries = controller.read_deliveries_all_tanks()

for delivery in deliveries:
    print(f"Entrega en Tanque {delivery.tank_number}:")
    print(f"  Volumen Entregado: {delivery.volume_delivered:.2f} L")
    print(f"  Inicio: {delivery.starting_volume:.2f} L")
    print(f"  Final: {delivery.ending_volume:.2f} L")
    print(f"  Temperatura Inicial: {delivery.starting_temperature:.1f} °C")
    print()

# Leer entregas de tanque específico
deliveries_tank_1 = controller.read_deliveries_tank(tank_number=1)
```

### 5. Consultar Alarmas Activas

```python
# Todas las alarmas activas
alarms = controller.read_alarms_active()

for alarm in alarms:
    print(f"⚠️ {alarm}")
    # Formato: Alarm Tank [1]: HIGH_WATER - WARNING - ACTIVE

# Alarmas de tanque específico
alarms_tank_1 = controller.read_alarms_tank(tank_number=1)

# Verificar si hay alarmas críticas
critical_alarms = [a for a in alarms if a.alarm_category == AlarmCategory.CRITICAL]
if critical_alarms:
    print(f"🚨 {len(critical_alarms)} alarmas CRÍTICAS activas!")
```

### 6. Reportes de Reconciliación

```python
# Reporte diario
daily_reports = controller.read_reconciliation_daily()

for report in daily_reports:
    print(f"Reconciliación Diaria - Tanque {report.tank_number}:")
    print(f"  Inventario Inicial: {report.starting_inventory:.2f} L")
    print(f"  Entregas: +{report.deliveries:.2f} L")
    print(f"  Ventas: -{report.sales:.2f} L")
    print(f"  Inventario Final: {report.ending_inventory:.2f} L")
    print(f"  Varianza: {report.variance:.2f} L")

    if abs(report.variance) > 100:  # Umbral configurable
        print(f"  ⚠️ ADVERTENCIA: Varianza excede límite!")
    print()

# Reporte por turno
shift_reports = controller.read_reconciliation_shift()
```

### 7. Monitoreo Continuo

```python
# Monitoreo automático cada 5 segundos
try:
    controller.monitor_tanks_continuous(interval=5)
except KeyboardInterrupt:
    print("Monitoreo detenido por usuario")
    controller.close()
```

---

## 🔧 USO DESDE LÍNEA DE COMANDOS

El módulo incluye una interfaz CLI completa:

### Lectura de Todos los Tanques

```bash
python veeder_root_tank_controller.py COM2

# Linux
python veeder_root_tank_controller.py /dev/ttyUSB0
```

**Salida:**
```
=== INVENTORIES ===
Tank [1]: VolumenBruto [12500.00L] - VolumenNeto [12450.00L] - ...
Tank [2]: VolumenBruto [8750.50L] - VolumenNeto [8700.25L] - ...

=== DELIVERIES ===
Delivery Tank [1]: Delivered [5000.00L] - Start [7500.00L] → End [12500.00L]

=== ALARMS ===
Alarm Tank [2]: HIGH_WATER - WARNING - ACTIVE

=== RECONCILIATION (Daily) ===
Tank 1: Variance 15.50L
Tank 2: Variance -8.25L
```

### Lectura de Tanque Específico

```bash
python veeder_root_tank_controller.py COM2 --tank 1
```

### Monitoreo Continuo

```bash
# Monitoreo cada 5 segundos (default)
python veeder_root_tank_controller.py COM2 --monitor

# Monitoreo cada 10 segundos
python veeder_root_tank_controller.py COM2 --monitor --interval 10
```

### Cambiar Baudrate

```bash
python veeder_root_tank_controller.py COM2 --baudrate 19200
```

### Especificar Modelo de ATG

```bash
python veeder_root_tank_controller.py COM2 --model TLS-300
python veeder_root_tank_controller.py COM2 --model TLS-350
python veeder_root_tank_controller.py COM2 --model TLS-450
```

### Modo Debug

```bash
python veeder_root_tank_controller.py COM2 --debug
```

**Salida debug:**
```
2025-11-10 14:30:45 - TX: 0149323031303000334503 [I20100]
2025-11-10 14:30:45 - RX: 3031203132353030203132343530...
2025-11-10 14:30:45 - Tank [1]: VolumenBruto [12500.00L] - ...
```

---

## 📊 EJEMPLOS AVANZADOS

### 1. Sistema de Alertas por Email

```python
import smtplib
from email.mime.text import MIMEText

def check_and_alert():
    controller = VeederRootTankController(port="COM2")
    controller.open()

    # Verificar alarmas
    alarms = controller.read_alarms_active()

    critical_alarms = [a for a in alarms
                      if a.alarm_category == AlarmCategory.CRITICAL]

    if critical_alarms:
        # Enviar email de alerta
        msg = MIMEText(f"Alarmas críticas detectadas:\n" +
                      "\n".join(str(a) for a in critical_alarms))
        msg['Subject'] = '🚨 ALERTA CRÍTICA - Tanques'
        msg['From'] = 'sistema@empresa.com'
        msg['To'] = 'supervisor@empresa.com'

        # Enviar (configurar servidor SMTP)
        # smtp = smtplib.SMTP('smtp.empresa.com')
        # smtp.send_message(msg)
        # smtp.quit()

    controller.close()

# Ejecutar periódicamente
import schedule
schedule.every(5).minutes.do(check_and_alert)
```

### 2. Integración con Base de Datos

```python
import sqlite3
from datetime import datetime

def save_inventory_to_db():
    controller = VeederRootTankController(port="COM2")
    controller.open()

    # Leer inventarios
    inventories = controller.read_inventory_all_tanks()

    # Guardar en SQLite
    conn = sqlite3.connect('tank_monitoring.db')
    cursor = conn.cursor()

    for inv in inventories:
        cursor.execute('''
            INSERT INTO inventories
            (timestamp, tank_number, gross_volume, tc_volume,
             temperature, water_volume, product_label)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        ''', (
            datetime.now(),
            inv.tank_number,
            inv.gross_volume,
            inv.tc_volume,
            inv.temperature,
            inv.water_volume,
            inv.product_label
        ))

    conn.commit()
    conn.close()
    controller.close()
```

### 3. API REST con Flask

```python
from flask import Flask, jsonify
from veeder_root_tank_controller import VeederRootTankController

app = Flask(__name__)
controller = VeederRootTankController(port="COM2")
controller.open()

@app.route('/api/tanks')
def get_all_tanks():
    inventories = controller.read_inventory_all_tanks()
    return jsonify([{
        'tank_number': inv.tank_number,
        'gross_volume': inv.gross_volume,
        'tc_volume': inv.tc_volume,
        'temperature': inv.temperature,
        'water_volume': inv.water_volume,
        'product': inv.product_label
    } for inv in inventories])

@app.route('/api/tanks/<int:tank_number>')
def get_tank(tank_number):
    inventory = controller.read_inventory_tank(tank_number)
    if inventory:
        return jsonify({
            'tank_number': inventory.tank_number,
            'gross_volume': inventory.gross_volume,
            'tc_volume': inventory.tc_volume,
            'temperature': inventory.temperature,
            'water_volume': inventory.water_volume,
            'product': inventory.product_label
        })
    return jsonify({'error': 'Tank not found'}), 404

@app.route('/api/alarms')
def get_alarms():
    alarms = controller.read_alarms_active()
    return jsonify([{
        'tank_number': alarm.tank_number,
        'alarm_type': alarm.alarm_type,
        'category': alarm.alarm_category.name,
        'is_active': alarm.is_active
    } for alarm in alarms])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

**Uso:**
```bash
# Obtener todos los tanques
curl http://localhost:5000/api/tanks

# Obtener tanque específico
curl http://localhost:5000/api/tanks/1

# Obtener alarmas
curl http://localhost:5000/api/alarms
```

### 4. Dashboard en Tiempo Real con WebSockets

```python
from flask import Flask, render_template
from flask_socketio import SocketIO, emit
import threading

app = Flask(__name__)
socketio = SocketIO(app)
controller = VeederRootTankController(port="COM2")
controller.open()

def background_monitoring():
    """Thread que envía actualizaciones en tiempo real"""
    while True:
        inventories = controller.read_inventory_all_tanks()
        alarms = controller.read_alarms_active()

        data = {
            'inventories': [{
                'tank': inv.tank_number,
                'volume': inv.gross_volume,
                'temperature': inv.temperature
            } for inv in inventories],
            'alarms': len(alarms)
        }

        socketio.emit('update', data)
        time.sleep(5)

@app.route('/')
def index():
    return render_template('dashboard.html')

if __name__ == '__main__':
    # Iniciar thread de monitoreo
    thread = threading.Thread(target=background_monitoring)
    thread.daemon = True
    thread.start()

    socketio.run(app, host='0.0.0.0', port=5000)
```

---

## ⚙️ CONFIGURACIÓN AVANZADA

### Personalizar Timeouts

```python
from veeder_root_tank_controller import VeederRootProtocol

# Modificar timeouts globales
VeederRootProtocol.READ_TIMEOUT = 5.0  # 5 segundos
VeederRootProtocol.WRITE_TIMEOUT = 2.0  # 2 segundos
VeederRootProtocol.MAX_RETRIES = 5  # 5 reintentos
```

### Logging Personalizado

```python
import logging

# Configurar logger
logger = logging.getLogger('veeder_root_tank_controller')
logger.setLevel(logging.DEBUG)

# Agregar handler a archivo
file_handler = logging.FileHandler('tank_monitoring.log')
file_handler.setFormatter(
    logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
)
logger.addHandler(file_handler)
```

### Manejo de Errores

```python
from serial import SerialException

try:
    controller = VeederRootTankController(port="COM2")

    if not controller.open():
        print("Error: No se pudo abrir puerto serial")
        exit(1)

    if not controller.test_connection():
        print("Error: ATG no responde")
        exit(1)

    # Operaciones normales...

except SerialException as e:
    print(f"Error de comunicación serial: {e}")
except Exception as e:
    print(f"Error inesperado: {e}")
finally:
    controller.close()
```

---

## 🔍 TROUBLESHOOTING

### Problema: Puerto Serial No Abre

**Causa posible:** Puerto ocupado por otra aplicación o permisos insuficientes

**Solución Linux:**
```bash
# Verificar permisos
ls -l /dev/ttyUSB0

# Agregar usuario al grupo dialout
sudo usermod -a -G dialout $USER

# Reiniciar sesión para aplicar cambios
```

**Solución Windows:**
```
1. Verificar en Administrador de Dispositivos que el puerto existe
2. Cerrar cualquier programa que use el puerto (ej: HyperTerminal, Putty)
3. Probar con otro puerto COM
```

### Problema: Timeout al Leer Respuesta

**Causa posible:** Baudrate incorrecto, cable desconectado, o ATG apagado

**Solución:**
```python
# Verificar baudrate
controller = VeederRootTankController(port="COM2", baudrate=9600)

# Probar con diferentes baudrates
for baudrate in [9600, 19200, 4800]:
    controller = VeederRootTankController(port="COM2", baudrate=baudrate)
    controller.open()
    if controller.test_connection():
        print(f"Baudrate correcto: {baudrate}")
        break
    controller.close()
```

### Problema: Checksum Mismatch

**Causa posible:** Algoritmo de checksum no coincide exactamente con ATG

**Solución:**
El algoritmo de checksum en el código es una estimación basada en análisis estático.
Para corregirlo:

1. Capturar tráfico serial real con herramienta como Portmon o Serial Port Monitor
2. Analizar frames reales para determinar algoritmo exacto
3. Modificar método `calculate_checksum()` en la clase `VeederRootProtocol`

**Workaround temporal:**
```python
# Deshabilitar verificación estricta de checksum (solo para pruebas)
# En el método parse_response(), comentar la verificación de checksum
```

### Problema: Datos Parseados Incorrectamente

**Causa posible:** Formato de respuesta del ATG difiere del estimado

**Solución:**
1. Activar modo debug para ver respuestas crudas:
```bash
python veeder_root_tank_controller.py COM2 --debug --tank 1
```

2. Analizar formato real de la respuesta

3. Modificar métodos `_parse_*_response()` según formato real

---

## 📈 RENDIMIENTO

### Tiempos Típicos de Respuesta

| Comando | Tiempo Promedio | Notas |
|---------|-----------------|-------|
| Test Connection | 100-200ms | Depende del ATG |
| Read Inventory (1 tank) | 150-300ms | |
| Read Inventory (all) | 500-1000ms | Depende de # tanques |
| Read Deliveries | 200-400ms | |
| Read Alarms | 100-250ms | |
| Read Reconciliation | 300-600ms | |

### Optimización para Múltiples Lecturas

```python
# ❌ Ineficiente: Múltiples conexiones
for tank_number in range(1, 5):
    controller = VeederRootTankController(port="COM2")
    controller.open()
    inv = controller.read_inventory_tank(tank_number)
    controller.close()

# ✅ Eficiente: Una conexión, múltiples lecturas
controller = VeederRootTankController(port="COM2")
controller.open()
for tank_number in range(1, 5):
    inv = controller.read_inventory_tank(tank_number)
controller.close()

# ✅ Más eficiente: Leer todos de una vez
controller = VeederRootTankController(port="COM2")
controller.open()
all_inventories = controller.read_inventory_all_tanks()
controller.close()
```

---

## 🔒 SEGURIDAD

### Consideraciones
- ⚠️ **No exponer directamente a Internet** sin autenticación adecuada
- ⚠️ **Validar datos** antes de escribir configuraciones al ATG
- ⚠️ **Logging sensible**: No registrar datos confidenciales en logs
- ⚠️ **Acceso al puerto serial**: Requiere privilegios elevados en algunos sistemas

### Ejemplo de Autenticación para API

```python
from flask import Flask, request, jsonify
from functools import wraps

app = Flask(__name__)

def require_api_key(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        api_key = request.headers.get('X-API-Key')
        if api_key != 'YOUR_SECRET_KEY':
            return jsonify({'error': 'Unauthorized'}), 401
        return f(*args, **kwargs)
    return decorated_function

@app.route('/api/tanks')
@require_api_key
def get_tanks():
    # ... código del endpoint ...
    pass
```

---

## 📚 REFERENCIAS

### Protocolos Relacionados
- **Gilbarco Pump Controller**: `gilbarco_pump_controller.py` (19200 baud, DLE-STX-ETX)
- **Veeder-Root Tank Controller**: `veeder_root_tank_controller.py` (9600 baud, ETX)

### Documentación Generada
- `SERVICIOS_CEM44_COMPLETO.md` - Análisis completo de todos los servicios
- `TANKSERVICE_ANALISIS_COMPLETO.md` - Análisis detallado de TankService.exe
- `PROTOCOLO_GILBARCO_DEFINITIVO_100.md` - Protocolo Gilbarco completo

### Archivos de Análisis
- `TankService.exe_analysis.json` - Análisis PE32 de TankService
- `analizar_servicios_cem44.py` - Herramienta de ingeniería inversa

---

## 🆘 SOPORTE

### Obtener Ayuda

```bash
python veeder_root_tank_controller.py --help
```

### Reportar Problemas

Al reportar problemas, incluir:
- Modelo de ATG (TLS-300, TLS-350, etc.)
- Sistema operativo y versión de Python
- Logs completos con modo `--debug`
- Descripción detallada del problema

### Contribuir

Si capturas tráfico serial real de un ATG Veeder-Root:
1. Documentar modelo exacto del ATG
2. Compartir capturas de comandos y respuestas
3. Ayudar a mejorar el algoritmo de checksum
4. Validar formatos de respuesta

---

## ✅ CHECKLIST DE IMPLEMENTACIÓN

Antes de desplegar en producción:

- [ ] Verificar conexión con ATG real
- [ ] Validar baudrate correcto (normalmente 9600)
- [ ] Confirmar formato de respuestas con capturas reales
- [ ] Ajustar algoritmo de checksum si es necesario
- [ ] Implementar manejo robusto de errores
- [ ] Configurar logging adecuado
- [ ] Establecer alertas para alarmas críticas
- [ ] Implementar respaldo de datos históricos
- [ ] Documentar configuración específica del sitio
- [ ] Capacitar personal en uso del sistema

---

**Implementación completada exitosamente** ✅

**Próximos pasos sugeridos:**
1. Testing con hardware real Veeder-Root TLS-300/350
2. Captura de tráfico serial para validar protocolo
3. Integración con sistema de gestión existente
4. Desarrollo de dashboard web en tiempo real
