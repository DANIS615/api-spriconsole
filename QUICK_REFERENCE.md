# QUICK REFERENCE - PROTOCOLO GPBOX

Guia rapida de comandos y herramientas para uso diario.

---

## COMANDOS ESENCIALES

### SLOT (Seleccionar Bomba)
```
Bomba 1: 01 00
Bomba 2: 02 00
Bomba N: 0N 00

Respuesta: FE 00
```

### READ STATUS (016)
```
Frame: 10 31 02 30 31 36 10 03 FC

Respuesta: E0 XX E0 YY
  XX = C0 (sin preset) / E0 (con preset)
  YY = F8 (colgada) / F0 (levantada)
```

### CLEAR PRESET (033)
```
Frame: 10 31 02 30 33 33 10 03 FD

Efecto: E0 E0 E0 XX -> E0 C0 E0 XX
```

### AUTHORIZE (030[H][T][MONTO])
```
Formato: 030 + H + T + MONTO

H = Manguera (1-9)
T = Tipo (0=Full, 1=Money, 2=Volume)
MONTO = 8 digitos

Ejemplos:
  030110000500 = Manguera 1, $5.00
  030210001000 = Manguera 2, $10.00
  030120005000 = Manguera 1, 50.00 litros

Efecto: E0 C0 E0 XX -> E0 E0 E0 XX
```

---

## INTERPRETACION DE STATUS

### Estados Basicos
```
E0 C0 E0 F8 = IDLE
E0 E0 E0 F8 = AUTORIZADO (levantar manguera)
E0 E0 E0 F0 = LISTO PARA DESPACHAR
E0 C0 E0 F0 = FINALIZADO (colgar manguera)
```

### Decodificacion Rapida
```python
tiene_preset = (byte1 == 0xE0)
manguera_levantada = (byte3 == 0xF0)

if tiene_preset and manguera_levantada:
    estado = "LISTO"
elif tiene_preset:
    estado = "ESPERANDO"
else:
    estado = "IDLE"
```

---

## SECUENCIA RAPIDA DE AUTORIZACION

```
1. SLOT (01 00)
2. CLEAR PRESET (033)
3. AUTHORIZE (030110000500)
4. READ STATUS -> E0 E0 E0 F8
5. Levantar manguera
6. READ STATUS -> E0 E0 E0 F0
7. Despachar
```

---

## HERRAMIENTAS

### Prueba Completa Paso a Paso
```bash
python prueba_definitiva_authorize.py COM1 1
```

### Monitor Tiempo Real Simple
```bash
python monitor_status_tiempo_real.py COM1 1
```

### Monitor Avanzado con Reporte
```bash
python monitor_despacho_completo.py COM1 1
```

### Medir Timeout
```bash
python test_timeout_preset.py COM1 1
```

---

## CALCULO DE LRC

```python
def calcular_lrc(data):
    """data = [PUMP_ASCII] [STX] [COMANDO]"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

# Ejemplo para 016:
data = bytes([0x31, 0x02, 0x30, 0x31, 0x36])
lrc = calcular_lrc(data)  # 0xFC
```

---

## CONSTRUCCION DE FRAME

```python
DLE = 0x10
STX = 0x02
ETX = 0x03

# Ejemplo: AUTHORIZE manguera 1, $5.00
pump_id = 1
comando = "030110000500"

pump_ascii = ord(str(pump_id))  # 0x31
cmd_bytes = comando.encode('ascii')

frame_data = bytes([pump_ascii, STX]) + cmd_bytes
lrc = calcular_lrc(frame_data)

frame = bytes([DLE]) + frame_data + bytes([DLE, ETX, lrc])

# Enviar
serial.write(bytes([pump_id, 0x00]))  # SLOT
time.sleep(0.2)
serial.read(serial.in_waiting)
serial.write(frame)  # Comando
time.sleep(0.3)
rx = serial.read(serial.in_waiting)
```

---

## TROUBLESHOOTING RAPIDO

### Preset no se activa
```
1. Verificar comando: debe ser exactamente 12 chars
2. Esperar 500ms despues de AUTHORIZE
3. Verificar hose: 1-9
4. Ejecutar CLEAR PRESET antes
```

### Preset oscila
```
1. Esperar 500ms despues de AUTHORIZE
2. Levantar manguera inmediatamente
3. Verificar manguera correcta
```

### No despacha
```
1. Verificar: byte1 == E0 (preset activo)
2. Verificar: byte3 == F0 (manguera levantada)
3. Verificar display muestra monto
4. Verificar luz de autorizacion encendida
```

### Sin respuesta
```
1. Verificar baudrate: 115200
2. Verificar puerto: COM1/COM2
3. Verificar SLOT enviado primero
4. Verificar LRC correcto
```

---

## VELOCIDADES

```
PC <-> GPBox: 115200 bps
GPBox <-> Bomba: 19200 bps

Configuracion serial:
  baudrate = 115200
  bytesize = 8
  parity = None
  stopbits = 1
  timeout = 2
```

---

## TIEMPOS RECOMENDADOS

```
Despues de SLOT: 200-300ms
Despues de CLEAR PRESET: 300ms
Despues de AUTHORIZE: 500ms
Despues de comando normal: 300ms
Entre lecturas de status: 1000ms (1 segundo)
```

---

## FORMATO DE MONTO

### Money Preset (T=1)
```
$5.00 = 00000500 (centavos)
$10.00 = 00001000
$25.50 = 00002550
$100.00 = 00010000
```

### Volume Preset (T=2)
```
10.00 litros = 00001000
50.00 litros = 00005000
100.00 litros = 00010000

(Multiplicar por 100)
```

---

## DOCUMENTACION COMPLETA

Ver: PROTOCOLO_GPBOX_COMPLETO.md
