# 🚀 EMPEZAR AHORA - Guía Rápida

Has elegido ir directo al protocolo GPBox. Esta guía te ayuda a empezar **inmediatamente**.

---

## ⚡ INICIO EN 5 MINUTOS

### Paso 1: Identificar Puerto COM (1 min)

```bash
# En Python
python -c "import serial.tools.list_ports; [print(f'{p.device} - {p.description}') for p in serial.tools.list_ports.comports()]"
```

**Resultado esperado**:
```
COM1 - Puerto de comunicaciones (COM1)
COM3 - USB Serial Port
...
```

**Anota el puerto**: Según `DOCUMENTACION_GPBOX_SISTEMA.md`, GPBox usa **Comm 1** (probablemente COM1).

### Paso 2: Preparar Captura (2 min)

```bash
# Ejecutar monitor serial
python serial_monitor.py
```

**Configuración cuando pregunte**:
- Puerto: `COM1` (o el que identificaste)
- Baudrate: `9600`
- Log file: `capturas/captura_inicial.log`

**El monitor queda corriendo** capturando todo el tráfico.

### Paso 3: Realizar Primera Operación (2 min)

Con el monitor corriendo:

1. **Abrir Smart Ship Factory**
2. **Autorizar bomba 1 con $10**
3. **Detener el monitor** (Ctrl+C)
4. **Revisar el log**: `capturas/captura_inicial.log`

**¡Listo!** Ya tienes tu primera captura.

---

## 📋 PLAN COMPLETO DÍA POR DÍA

Ver: **PLAN_PROTOCOLO_GPBOX.md**

Contiene:
- ✅ Plan de 5 días detallado
- ✅ Qué hacer cada día
- ✅ Checklist de progreso
- ✅ Tips y troubleshooting

---

## 🔧 HERRAMIENTAS LISTAS PARA USAR

### 1. serial_monitor.py
**Ya existe** - Captura tráfico serial en tiempo real

```bash
python serial_monitor.py
```

### 2. gilbarco_pump_controller.py
**Ya existe** - Implementación del protocolo (parcial)

```bash
# Ver funciones disponibles
grep "def " gilbarco_pump_controller.py
```

### 3. test_gpbox_real.py
**Nuevo** - Testing con hardware real

```bash
python test_gpbox_real.py
```

---

## 📁 ESTRUCTURA DE ARCHIVOS

```
api-spriconsole/
├── 📋 PLAN_PROTOCOLO_GPBOX.md       ← Plan completo de 5 días
├── 🚀 EMPEZAR_AHORA.md              ← Esta guía
├── 🛠️ gilbarco_pump_controller.py   ← Protocolo implementado
├── 📊 serial_monitor.py             ← Captura de tráfico
├── 🧪 test_gpbox_real.py            ← Testing con hardware
│
├── capturas/                        ← Tus capturas van aquí
│   └── (vacío - agregar tus logs)
│
├── doc/
│   ├── PLANTILLA_COMANDO.md         ← Para documentar comandos
│   └── (tus docs van aquí)
│
└── ejemplos/
    └── (tus ejemplos van aquí)
```

---

## 📝 CHECKLIST RÁPIDO

### Hoy (DÍA 1 - Captura)

- [ ] Identificar puerto COM
- [ ] Ejecutar `python serial_monitor.py`
- [ ] Capturar: Autorizar bomba
- [ ] Capturar: Leer estado
- [ ] Capturar: Detener bomba
- [ ] Capturar: Reset bomba
- [ ] Capturar: Leer totalizadores
- [ ] Capturar: Cambiar precio

**Tiempo estimado**: 2-4 horas

**Resultado**: 6+ archivos en `capturas/`

---

## 🎯 OPERACIONES A CAPTURAR

### 1. Autorizar Bomba
```
Acción: Desde SSF, autorizar bomba 1 con $50
Guardar: capturas/01_autorizar_bomba1_50pesos.log
```

### 2. Leer Estado
```
Acción: Consultar estado de bomba 1
Guardar: capturas/02_leer_estado_bomba1.log
```

### 3. Detener Bomba
```
Acción: Si está despachando, detener bomba 1
Guardar: capturas/03_detener_bomba1.log
```

### 4. Reset Bomba
```
Acción: Resetear bomba 1 después de venta
Guardar: capturas/04_reset_bomba1.log
```

### 5. Leer Totalizadores
```
Acción: Consultar totales acumulados de bomba 1
Guardar: capturas/05_leer_totalizadores.log
```

### 6. Cambiar Precio
```
Acción: Modificar precio de manguera
Guardar: capturas/06_cambiar_precio.log
```

---

## 💡 TIPS PARA CAPTURA

### Antes de Empezar

1. **Cerrar SSF** si está abierto
2. **Iniciar el monitor** primero
3. **Abrir SSF** después (capturará inicialización)

### Durante la Captura

1. **Una operación a la vez**: No hagas todo junto
2. **Espera entre operaciones**: 5-10 segundos
3. **Anota todo**: Qué hiciste y cuándo
4. **Guarda logs inmediatamente**: No pierdas datos

### Formato de Nombres de Archivo

```
XX_operacion_detalle.log

Ejemplos:
01_autorizar_bomba1_50pesos.log
02_leer_estado_bomba1.log
03_autorizar_bomba2_20litros.log
```

---

## 🔍 ANALIZAR LAS CAPTURAS

### Buscar el Patrón

```
DLE STX [ADDR] [CMD] [LEN] [DATA...] [CHECKSUM] DLE ETX
0x10 0x02  0xNN  0xNN  0xNN  [...]      0xNN      0x10 0x03
```

### Ejemplo Real

```
Captura:
10 02 01 05 0A 01 01 00 00 13 88 00 00 00 00 9A 10 03

Interpretación:
10 02    : DLE STX (inicio)
01       : Dirección bomba = 1
05       : Comando = AUTHORIZE
0A       : Longitud datos = 10 bytes
01 01... : Datos del comando (preset, precio, monto, volumen)
9A       : Checksum
10 03    : DLE ETX (fin)
```

---

## 📞 ¿NECESITAS AYUDA?

### Problema: No puedo identificar el puerto

**Solución**: Ver `GUIA_CONFIGURACION_PUERTOS.md`

### Problema: serial_monitor.py da error

**Solución**:
```bash
# Instalar dependencias
pip install pyserial

# Verificar que no esté en uso
# Cerrar SSF y otros programas que usen el puerto
```

### Problema: No veo tráfico en el monitor

**Solución**:
1. Verificar que el puerto sea correcto
2. Verificar baudrate (debe ser 9600)
3. Cerrar SSF y reabrirlo con el monitor corriendo

### Problema: Las capturas son confusas

**Solución**: Ver `PROTOCOLO_GILBARCO.md` - Tiene ejemplos de estructura

---

## ⏭️ DESPUÉS DE DÍA 1

### DÍA 2: Analizar las capturas
- Identificar códigos de comando
- Documentar formato de datos
- Crear `doc/COMANDOS_GPBOX_DESCUBIERTOS.md`

### DÍA 3: Implementar
- Actualizar `gilbarco_pump_controller.py`
- Agregar comandos faltantes (READ_PRICE, WRITE_PRICE)

### DÍA 4: Testing
- Ejecutar `python test_gpbox_real.py`
- Probar cada función con hardware

### DÍA 5: Documentar
- Completar documentación
- Crear ejemplos de uso

---

## 🎯 OBJETIVO FINAL

Al terminar los 5 días tendrás:

```python
# Tu propio sistema funcionando
from gilbarco_pump_controller import GilbarcoPumpController

controller = GilbarcoPumpController(port='COM1', baudrate=9600)
controller.connect()

# Autorizar bomba
controller.authorize_pump(1, preset_amount=50.0)

# Leer estado
status = controller.request_status(1)

# Leer totales
totals = controller.read_totalizers(1)

# Cambiar precio
controller.write_price(1, hose=0, price=24.50)

controller.disconnect()
```

**Independencia total del software viejo** ✨

---

## 🚀 COMANDO PARA EMPEZAR AHORA

```bash
# 1. Identificar puerto
python -c "import serial.tools.list_ports; [print(p.device) for p in serial.tools.list_ports.comports()]"

# 2. Iniciar captura
python serial_monitor.py

# 3. Cuando termine, revisar
ls -l capturas/
```

---

**¡Éxito con tu implementación!** 🎉

Ver **PLAN_PROTOCOLO_GPBOX.md** para el plan completo detallado.
