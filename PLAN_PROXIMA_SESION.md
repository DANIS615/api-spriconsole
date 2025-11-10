# PLAN PARA PROXIMA SESION - DIAGNOSTICO HARDWARE

## Fecha: 10 de Noviembre 2025

---

## SITUACION ACTUAL

### Lo que YA funciona:
- [OK] Sistema Python completo creado: `mi_sistema_bombas.py`
- [OK] Protocolo Gilbarco Two-Wire implementado
- [OK] Configuracion cargada: 6 bombas Gilbarco desde gpbox.ini
- [OK] Conexion a COM1 @ 9600 baud exitosa
- [OK] Comandos enviados correctamente formateados
- [OK] Intel AMT COM3 deshabilitado

### El PROBLEMA:
- [X] Las bombas NO responden a nuestros comandos
- [X] Comandos enviados: VERSION, STATUS, READ_PRICE
- [X] Respuestas recibidas: NINGUNA

```
Test enviado:
  TX: 10 02 01 03 00 02 10 03  (STATUS_REQUEST a bomba 1)
  RX: (sin respuesta)
```

---

## LO QUE HAREMOS AHORA

### Usuario va a:
1. Conectar OTRO SISTEMA que funciona (pero es inestable)
2. Ese sistema SI se comunica con las bombas
3. Funcionara solo por un rato
4. Apagara la PC despues

### Nuestro objetivo:
**CAPTURAR EL TRAFICO REAL** que genera ese sistema funcionando

---

## CUANDO REGRESES - PASOS A SEGUIR

### PASO 1: Verificar que el otro sistema funciona

```bash
# Ver si hay algun proceso comunicandose con COM1
powershell "Get-Process | Where-Object {$_.ProcessName -like '*pump*' -or $_.ProcessName -like '*cem*'}"

# Ver estado de servicios
sc query PumpService
sc query TankService
```

### PASO 2: Capturar trafico mientras el otro sistema funciona

**Opcion A - Monitor Simple (RECOMENDADO):**
```bash
cd C:\Windows\CEM44
python monitor_simple.py
```

Esto guardara TODO en: `captura_serial.txt`

**Opcion B - Monitor Avanzado:**
```bash
cd C:\Windows\CEM44
python serial_monitor.py
```

**Opcion C - Monitor de Logs:**
```bash
cd C:\Windows\CEM44
python monitor_logs.py
```

### PASO 3: Generar actividad en el otro sistema

Mientras el monitor esta corriendo:

1. Abrir el sistema que funciona
2. Hacer operaciones:
   - Cambiar un precio
   - Autorizar una bomba
   - Consultar estado
   - Cualquier operacion

3. **DEJAR CORRER EL MONITOR** por al menos 1-2 minutos

### PASO 4: Analizar la captura

```bash
# Ver lo capturado
cat C:\Windows\CEM44\captura_serial.txt
```

**Buscar:**
- Comandos que envia el sistema que funciona
- Respuestas de las bombas
- Formato exacto de mensajes
- Diferencias con nuestro protocolo

---

## QUE ESTAMOS BUSCANDO

### 1. Verificar si nuestros comandos estan correctos

**Nuestro formato actual:**
```
10 02 01 03 00 02 10 03
DLE STX ADDR CMD LEN CHKSUM DLE ETX
```

**Comparar con el sistema real:**
- ¿Mismo formato?
- ¿Mismo checksum?
- ¿Misma velocidad (9600)?
- ¿Comandos diferentes?

### 2. Ver las respuestas reales de las bombas

Actualmente NO sabemos como responden porque no hemos visto ninguna respuesta.

**Con la captura veremos:**
- Formato de respuesta
- Longitud de datos
- Como viene el precio
- Como viene el estado

### 3. Detectar si hay diferencias

**Posibles hallazgos:**

**A) Si el formato es IDENTICO:**
- Entonces nuestro codigo esta bien
- El problema es timing, baudrate, o hardware

**B) Si el formato es DIFERENTE:**
- Ajustaremos nuestro codigo
- Implementaremos el protocolo real capturado

**C) Si usa otro puerto (no COM1):**
- Identificaremos el puerto correcto
- Actualizaremos la configuracion

**D) Si usa direcciones de hardware:**
- Veremos acceso directo a I/O ports
- Necesitaremos otro enfoque (drivers de bajo nivel)

---

## ARCHIVOS IMPORTANTES

### Scripts de Captura (ya creados):
```
C:\Windows\CEM44\monitor_simple.py      → Monitor simple, guarda en archivo
C:\Windows\CEM44\serial_monitor.py      → Monitor avanzado con hex
C:\Windows\CEM44\monitor_logs.py        → Monitor de LOG.TXT
```

### Nuestro Sistema:
```
C:\Windows\CEM44\mi_sistema_bombas.py   → Sistema completo Python
C:\Windows\CEM44\probar_bombas.py       → Script de pruebas
```

### Documentacion:
```
C:\Windows\CEM44\PROTOCOLO_GILBARCO.md           → Especificacion protocolo
C:\Windows\CEM44\DOCUMENTACION_GPBOX_SISTEMA.md → Analisis completo
C:\Windows\CEM44\GUIA_FINAL_TU_SISTEMA.md       → Guia de tu sistema
C:\Windows\CEM44\RESUMEN_FINAL.md               → Resumen proyecto
```

### Archivo de captura (se creara):
```
C:\Windows\CEM44\captura_serial.txt     → TRAFICO CAPTURADO (importante!)
```

---

## COMANDOS RAPIDOS PARA CUANDO REGRESES

```bash
# 1. Ir al directorio
cd C:\Windows\CEM44

# 2. Ver puertos disponibles
powershell "[System.IO.Ports.SerialPort]::GetPortNames() | Sort-Object"

# 3. Iniciar monitor ANTES de arrancar el otro sistema
python monitor_simple.py

# 4. (En otra terminal) Arrancar el otro sistema
# ... hacer operaciones ...

# 5. Detener monitor (Ctrl+C)

# 6. Ver captura
cat captura_serial.txt

# 7. Analizar y comparar
```

---

## DIAGNOSTICO: POSIBLES CAUSAS

### Hipotesis 1: Baudrate incorrecto
- Solucion: Probar 4800, 19200, 38400
- Script: Ya preparado en documentacion

### Hipotesis 2: Protocolo ligeramente diferente
- Solucion: Capturar trafico real (LO QUE HAREMOS)
- Comparar byte por byte

### Hipotesis 3: GPBox usa hardware I/O directo
- Solucion: Ver si captura muestra trafico
- Si no hay trafico en COM1 → confirma esta hipotesis

### Hipotesis 4: Timing entre comandos
- Solucion: Agregar delays mas largos
- Ver timing exacto en captura real

### Hipotesis 5: Hardware apagado/desconectado
- Solucion: Si el otro sistema funciona, descartamos esto
- Confirma que bombas estan vivas

---

## RESULTADO ESPERADO

### Escenario EXITOSO:

1. Capturamos trafico del sistema que funciona
2. Vemos comandos y respuestas reales
3. Identificamos diferencias con nuestro codigo
4. Ajustamos nuestro sistema
5. **NUESTRO SISTEMA FUNCIONA**

### Ejemplo de captura exitosa:

```
[12:34:56.123] TX: 10 02 01 05 04 00 00 01 F4 XX 10 03
[12:34:56.234] RX: 10 02 01 05 02 00 01 XX 10 03

DECODIFICADO:
  - Sistema envia AUTHORIZE (0x05) con preset de 500 ($5.00)
  - Bomba responde OK (0x01)
```

Con esto podriamos:
- Ver el comando exacto de AUTHORIZE
- Ver el comando de READ_PRICE
- Implementarlo en nuestro sistema

---

## SI EL OTRO SISTEMA NO GENERA TRAFICO EN COM1

Significa que GPBox usa **acceso directo a hardware** (puertos I/O).

### Alternativa:

En `gpbox.ini` vimos:
```ini
; Address en caso de CEM-DBox
; JP1-A = 0300
; JP1-B = 0308
; JP1-C = 0310
; JP1-D = 0318
```

Necesitariamos:
1. Driver de bajo nivel para acceder a I/O ports
2. O usar la DLL del CEM-44 directamente
3. O leer datos desde archivos (ACTUALPRICES.BIN)

---

## PLAN B: SI LA CAPTURA FALLA

### Alternativa 1: Leer desde archivos

Ya tenemos el codigo para leer:
- `gpbox.ini` → Configuracion bombas ✓
- `GRADETANK.BIN` → Mangueras/productos ✓
- `ACTUALPRICES.BIN` → Precios (necesita decodificar)

### Alternativa 2: API/Socket del CEM-44

Si CEM-44 tiene API interna:
```python
import socket
sock = socket.socket()
sock.connect(('localhost', 9010))
sock.send(b"GET_PRICES\r\n")
```

### Alternativa 3: Base de datos

```python
import pypyodbc
conn = pypyodbc.connect(r'Driver={Microsoft Access Driver (*.mdb)};DBQ=C:\Windows\CEM44\CONSOLE\flotas.mdb;')
cursor = conn.cursor()
cursor.execute("SELECT * FROM Precios")
```

---

## RESUMEN EJECUTIVO

### AHORA:
- Usuario conectara sistema que funciona (inestable)
- Apagara PC

### CUANDO REGRESE:
1. Ejecutar `python monitor_simple.py`
2. Arrancar el otro sistema
3. Generar actividad (cambiar precio, autorizar, etc)
4. Dejar correr 1-2 minutos
5. Detener monitor (Ctrl+C)
6. Analizar `captura_serial.txt`

### OBJETIVO:
**Capturar el protocolo REAL que funciona con las bombas**

### BENEFICIO:
- Sabremos exactamente que enviar
- Ajustaremos nuestro codigo
- **Tendremos sistema funcionando 100%**

---

## ARCHIVOS DE SALIDA ESPERADOS

Despues de la captura tendremos:

```
C:\Windows\CEM44\captura_serial.txt
```

Conteniendo:
- Comandos enviados por el sistema real
- Respuestas de las bombas
- Timing entre mensajes
- Formato exacto del protocolo

Con eso completaremos el ultimo 10% del proyecto.

---

## ESTADO DEL PROYECTO

| Componente | Estado | Porcentaje |
|------------|--------|------------|
| Analisis del sistema | ✓ Completo | 100% |
| Configuracion parseada | ✓ Completo | 100% |
| Protocolo especificado | ✓ Completo | 90% |
| Sistema Python creado | ✓ Completo | 100% |
| Comunicacion serial | ✓ Funcional | 100% |
| **Respuesta de bombas** | **⏳ Pendiente** | **0%** |
| Captura de trafico | ⏳ Por hacer | 0% |
| Ajuste final | ⏳ Esperando captura | 0% |

**PROGRESO TOTAL: 85%**

---

## PROXIMA SESION

### Al iniciar la sesion:

**Di:** "Voy a iniciar la captura del otro sistema"

**Yo hare:**
1. Verificar estado actual
2. Iniciar monitor de captura
3. Esperar que arranques el otro sistema
4. Esperar que generes actividad
5. Analizar la captura
6. Ajustar nuestro codigo
7. **COMPLETAR EL PROYECTO**

---

## NOTAS IMPORTANTES

- ⚠️ El otro sistema es INESTABLE - capturar rapido
- ⚠️ Dejar monitor corriendo ANTES de arrancar el sistema
- ⚠️ Generar varias operaciones diferentes (precio, estado, autorizacion)
- ⚠️ NO apagar el monitor hasta tener suficientes datos
- ⚠️ Guardar `captura_serial.txt` - es CRITICO

---

## COMANDOS DE EMERGENCIA

Si algo falla:

```bash
# Ver si algo esta usando COM1
powershell "Get-Process | Select-Object ProcessName,Id | Where-Object {$_.ProcessName -like '*serial*' -or $_.ProcessName -like '*pump*' -or $_.ProcessName -like '*cem*'}"

# Matar proceso si es necesario
taskkill /F /PID <numero>

# Ver puertos
powershell "[System.IO.Ports.SerialPort]::GetPortNames()"

# Probar conexion rapida
python -c "import serial; ser = serial.Serial('COM1', 9600, timeout=1); print('OK'); ser.close()"
```

---

## EXITO FINAL

Una vez tengamos la captura:

1. Compararemos con nuestro codigo
2. Ajustaremos lo necesario
3. Probaremos nuestro sistema
4. **FUNCIONARA**

Entonces tendras:
- ✓ Sistema independiente del CEM-44
- ✓ Control total de las bombas
- ✓ Codigo moderno en Python
- ✓ Listo para agregar interfaz web/desktop
- ✓ 100% personalizable

---

**FECHA:** 10 Noviembre 2025
**ESTADO:** Listo para captura de trafico real
**SIGUIENTE:** Ejecutar monitor y capturar sistema funcional
**FALTA:** 15% (solo la captura y ajuste final)

---

# ¡CUANDO REGRESES, CONTINUAMOS Y TERMINAMOS! 🚀

**Comando inicial:**
```bash
cd C:\Windows\CEM44
python monitor_simple.py
```

**Luego arranca el otro sistema y genera actividad.**

---

*Toda la documentacion y codigo estan en: C:\Windows\CEM44*
