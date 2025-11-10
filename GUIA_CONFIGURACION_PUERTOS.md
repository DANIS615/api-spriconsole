# 🔧 GUÍA: CONFIGURACIÓN DE PUERTOS COM PARA CEM-44

## 📋 PROBLEMA IDENTIFICADO

**Intel AMT (Active Management Technology) está interfiriendo con COM3**

El sistema tiene:
- ✅ **COM1** - Puerto físico normal (para GPBox)
- ❌ **COM3** - Intel AMT SOL (interfiere con el sistema)

**Solución:** Deshabilitar COM3 de Intel AMT

---

## 🚀 PASO A PASO: CONFIGURACIÓN CORRECTA

### PASO 1: Deshabilitar Intel AMT COM3

**Método A - Administrador de Dispositivos (Recomendado):**

1. Presiona `Win + X` y selecciona **"Administrador de dispositivos"**

2. Expande **"Puertos (COM y LPT)"**

3. Busca: **"Intel(R) Active Management Technology - SOL (COM3)"**

4. **Click derecho** → **"Deshabilitar dispositivo"**

5. Confirma cuando te pregunte

**Método B - PowerShell (Automático):**

```powershell
# Ejecutar como Administrador
Get-PnpDevice | Where-Object {$_.FriendlyName -like "*Intel*AMT*SOL*"} | Disable-PnpDevice -Confirm:$false
```

### PASO 2: Verificar Puertos Disponibles

Después de deshabilitar, verifica:

```bash
powershell "[System.IO.Ports.SerialPort]::GetPortNames()"
```

**Resultado esperado:**
```
COM1
```

Solo debe aparecer COM1.

### PASO 3: Reiniciar Servicios CEM-44

```bash
net stop PumpService
net stop TankService
net stop PosService

timeout /t 3

net start PumpService
net start TankService
# PosService puede dejarse detenido si no se usa
```

### PASO 4: Verificar Comunicación

**Opción A - Ver logs del sistema:**

```bash
tail -f "C:\Windows\CEM44\Files\LOG.TXT"
```

Busca líneas como:
```
PUMP CONTROL THREAD - SERIAL PORTS CONFIGURED OK
```

Si sigue diciendo "ERROR READING SERIAL PORTS", continúa con Paso 5.

**Opción B - Capturar tráfico:**

```bash
cd C:\Windows\CEM44
python monitor_simple.py
```

Debería capturar mensajes en 10-30 segundos.

### PASO 5: Configurar Puerto Serial en GPBox (Si es necesario)

Si gpbox.ini tiene configuración de hardware, verifica:

```ini
[GPBOX COMM ADDRESS]
GPBox 01 = 0001, 0000, 0000, 0000
           ↑
           └─ 0001 = Usando puerto 1 (puede necesitar ajuste)
```

**Valores posibles:**
- `0001` = Puerto 1 (generalmente COM1)
- `0002` = Puerto 2
- `0300` = Dirección de hardware específica

Si no funciona, prueba cambiar a:
```ini
GPBox 01 = 0300, 0000, 0000, 0000
```

(Valor de JP1-A según comentarios en el archivo)

---

## 🔍 DIAGNÓSTICO DE PROBLEMAS

### Problema 1: "ERROR READING SERIAL PORTS"

**Causa:** Configuración de puerto incorrecta

**Solución:**
```bash
# Ver configuración actual
cat "C:\Windows\CEM44\gpbox.ini" | grep "GPBox 01"

# Si es necesario, editar manualmente
notepad "C:\Windows\CEM44\gpbox.ini"
```

### Problema 2: PumpService no inicia

**Causa:** Puerto ocupado o hardware no detectado

**Solución:**
```bash
# Ver qué está usando el puerto
powershell "Get-Process | Where-Object {$_.MainWindowTitle -like '*COM*'}"

# Ver eventos del sistema
eventvwr.msc
# → Registros de Windows → Sistema
# → Buscar "PumpService"
```

### Problema 3: No hay tráfico en COM1

**Causas posibles:**
1. GPBox no está conectado físicamente
2. Cable serial desconectado
3. GPBox necesita drivers específicos
4. Direcciones de hardware incorrectas

**Verificación:**
```bash
# Ver dispositivos en el sistema
devmgmt.msc

# Buscar en:
# - Puertos (COM y LPT)
# - Controladores de bus serie universal
# - Otros dispositivos (con signo de exclamación)
```

---

## 📊 CONFIGURACIÓN ÓPTIMA FINAL

### gpbox.ini
```ini
[GPBOX COMM ADDRESS]
Version = 02
GPBox 01 = 0001, 0000, 0000, 0000  # O probar: 0300

[PUMP]
Slow Down Preset = 0.350
Litros (L) o Galones (G) en Surtidor = L
Factor Multiplicador = 1

Pump 01 = 01, 1, G, 0, 01, 5, 990, S, S
Pump 02 = 01, 1, G, 0, 02, 5, 990, S, S
# ... (resto de bombas)
```

### Servicios
```
PumpService    → RUNNING (controlador principal)
TankService    → RUNNING (monitor de tanques)
PosService     → STOPPED (solo si hay POS conectado)
```

### Puertos COM
```
COM1 → Habilitado (para GPBox)
COM3 → DESHABILITADO (Intel AMT)
```

---

## ✅ LISTA DE VERIFICACIÓN POST-CONFIGURACIÓN

Después de completar los pasos, verifica:

- [ ] Intel AMT COM3 está deshabilitado
- [ ] Solo aparece COM1 en lista de puertos
- [ ] PumpService inicia sin errores
- [ ] LOG.TXT no muestra "ERROR READING SERIAL PORTS"
- [ ] `monitor_simple.py` captura tráfico (o el sistema responde)
- [ ] CEM-44.exe puede abrir sin errores

---

## 🎯 PRÓXIMO PASO: CAPTURAR PROTOCOLO REAL

Una vez configurado correctamente:

### 1. Monitorear Tráfico

```bash
cd C:\Windows\CEM44
python monitor_simple.py
```

### 2. Generar Actividad

**Desde la consola CEM-44:**
- Cambiar precio de un producto
- Autorizar una bomba (si es posible)
- Ver estado de bombas

**O trigger automático:**
- El PumpService hace polling automático cada X segundos
- Espera 30-60 segundos
- Deberías ver mensajes de status request

### 3. Analizar Captura

Los mensajes se guardan en:
```
C:\Windows\CEM44\captura_serial.txt
```

Formato esperado:
```
10 02 01 03 00 02 10 03  ← Status Request bomba 1
10 02 01 09 01 00 XX 10 03  ← Read Price manguera 0
```

---

## 🆘 SI NADA FUNCIONA

### Hardware GPBox No Detectado

Si después de todo esto no funciona, puede ser que:

1. **GPBox usa puerto interno (ISA/PCI)**
   - No aparece como COM1/COM2
   - Usa direcciones de memoria directas (0x300, 0x308, etc.)
   - Necesita drivers específicos de Windows

2. **GPBox no está instalado físicamente**
   - El sistema puede funcionar en modo simulación
   - Verifica si hay una tarjeta ISA/PCI en el PC

3. **Comunicación por red (TCP/IP)**
   - Algunas versiones de GPBox usan Ethernet
   - Puerto 9010 (según configuración)

**Verificar comunicación TCP/IP:**
```bash
netstat -an | findstr 9010
```

---

## 📞 INFORMACIÓN DE CONTACTO Y SOPORTE

### Documentación Generada

Todos los archivos están en: `C:\Windows\CEM44\`

- `PROTOCOLO_GILBARCO.md` - Protocolo técnico completo
- `DOCUMENTACION_GPBOX_SISTEMA.md` - Configuración del sistema
- `INFORME_CAPTURA_PROTOCOLO.md` - Estado actual
- `gilbarco_pump_controller.py` - Controlador Python
- `monitor_simple.py` - Monitor de tráfico

### Soporte Técnico Gilbarco

Si necesitas ayuda oficial:
- Web: https://www.gilbarco.com/la/
- Distribuidores locales autorizados

---

**Última actualización:** 10 de Noviembre 2025
**Versión:** 1.0
**Sistema:** CEM-44 v6.02.00.06

---

## 🚀 COMANDO RÁPIDO PARA EMPEZAR

```bash
# 1. Deshabilitar COM3 desde Administrador de dispositivos
# 2. Luego ejecutar:

cd C:\Windows\CEM44
net stop PumpService && net stop TankService
timeout /t 3
net start PumpService && net start TankService
timeout /t 5
python monitor_simple.py
```

¡Deberías ver tráfico serial en menos de 30 segundos!
