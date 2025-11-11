# GUIA COMPLETA: COMANDO AUTHORIZE CON MANGUERA Y CLEAR PRESET

**Fecha**: 10 Noviembre 2025
**Estado**: Investigacion completada - Listo para pruebas con hardware
**Objetivo**: Autorizar bomba especificando manguera y limpiando preset anterior

---

## PROBLEMA COMPLETO IDENTIFICADO

### 1. Formato de Manguera
**Problema**: Comando 030 (AUTHORIZE) no especifica cual manguera autorizar
**Impacto**: En bombas multimanguera (Regular/Premium/Diesel), GPBox no sabe cual usar
**Solucion**: Incluir ID de manguera en el comando

### 2. Clear Preset
**Problema**: Despues de autorizar, bomba mantiene preset activo
**Impacto**: Nueva autorizacion puede fallar o usar preset anterior
**Solucion**: Enviar CLEAR PRESET antes de autorizar nuevamente

---

## HALLAZGOS EN DLLs Y CODIGO

### Strings Encontrados en SSF.Gilbarco.D.dll

**Manguera**:
- `"COMPARANDO CALLING HOSE [%ld] CON HOSE PRESETEADO [%ld][%s]"`
- `"PRESET POR HOSE"`
- `"Setting preset filter by Hose [%s]"`
- `"Hose LN:[%02ld] RN:[%02ld] found OK"`

**Clear Preset**:
- `"Clear Preset pump is not possible in state [%s]"`
- `"CLEAR_PRESET"` (constante)
- `"DEAUTHORIZE"`
- `"SSFBasePump::eaClearPreset"` (funcion C++)

### Funciones C++ Identificadas

```cpp
SSFPumpGilbarco::iaSendPumpMoneyPreset    // 0x001c4d45
SSFPumpGilbarco::iaSendPumpVolumePreset   // 0x001c4d15
SSFBasePump::eaClearPreset                // Limpia preset
```

### Comandos en Codigo VB6

| Comando | Apariciones | Funcion Probable |
|---------|-------------|------------------|
| **032** | 71 veces | CLEAR SALE (incluye preset) |
| **033** | 74 veces | RESUME (reanudar) |
| **034** | 11 veces | PAUSE (pausar) |
| **035** | 14 veces | CLEAR PRESET (dedicado) |
| **036** | 12 veces | CANCEL AUTHORIZATION |

---

## FORMATO DEL COMANDO AUTHORIZE

### FORMATO 1: Hose + Tipo + Monto (MAS PROBABLE)

```
030[H][T][MONTO____]
   1  1  8 digitos

H = Hose ID (1 digito: 1-9)
T = Tipo preset
    0 = Full (llenar)
    1 = Money (por dinero)
    2 = Volume (por volumen)
MONTO = 8 digitos (centavos o mililitros)
```

**Ejemplos**:
```
030110000500  →  Hose 1, Money, $5.00
030120001000  →  Hose 1, Volume, 10.00 litros
030210000500  →  Hose 2, Money, $5.00
030310002000  →  Hose 3, Money, $20.00
```

**Por que es mas probable**:
- Formato estandar Gilbarco Encore
- Logico: hose primero, luego tipo
- Compatible con protocolos existentes

### FORMATO 2: Tipo + Hose + Monto

```
030[T][H][MONTO____]
```

**Ejemplo**: `030110000500` (Money, Hose 1, $5.00)

### FORMATO 3: Hose 2 Digitos + Tipo + Monto

```
030[HH][T][MONTO___]
   2   1  8 digitos
```

**Ejemplo**: `0300110000500` (Hose 01, Money, $5.00)

---

## COMANDOS CLEAR PRESET

### Comando 032 - CLEAR SALE (RECOMENDADO)

**Funcion**: Limpia venta completa incluyendo preset
**Probabilidad**: ALTA (71 apariciones en codigo)
**Frame**: `10 31 02 30 33 32 10 03 XX`

**Cuando usar**:
- Antes de cada nueva autorizacion
- Despues de completar venta
- Para resetear bomba a estado idle

### Comando 035 - CLEAR PRESET

**Funcion**: Posible comando dedicado solo para limpiar preset
**Probabilidad**: MEDIA (14 apariciones)
**Frame**: `10 31 02 30 33 35 10 03 XX`

**Cuando usar**:
- Si 032 es muy agresivo (limpia todo)
- Si solo queremos limpiar preset sin afectar otros datos

### Comando 036 - CANCEL AUTHORIZATION

**Funcion**: Cancela autorizacion activa
**Probabilidad**: MEDIA (12 apariciones)
**Frame**: `10 31 02 30 33 36 10 03 XX`

**Cuando usar**:
- Si bomba esta autorizada pero no ha despachado
- Para cancelar autorizacion antes de expirar

---

## SECUENCIAS COMPLETAS

### SECUENCIA 1: Con Clear Sale (RECOMENDADA)

```
1. Seleccionar SLOT
   TX: 01 00
   RX: FE 00
   Esperar: 300ms

2. Limpiar preset anterior (CLEAR SALE - 032)
   TX: 10 31 02 30 33 32 10 03 [LRC]
   RX: E0 C0 E0 XX
   Esperar: 300ms

3. Verificar estado limpio (READ STATUS - 016)
   TX: 10 31 02 30 31 36 10 03 FC
   RX: E0 C0 E0 F8 (deberia ser idle)
   Esperar: 200ms

4. Autorizar con manguera (AUTHORIZE - 030)
   TX: 10 31 02 30 33 30 31 31 30 30 30 30 30 35 30 30 10 03 [LRC]
       └──────────────── 030110000500 (H=1, T=1, $5.00)
   RX: E0 C0 E0 XX (estado autorizado)
   Esperar: 500ms

5. Verificar autorizacion (READ STATUS - 016)
   TX: 10 31 02 30 31 36 10 03 FC
   RX: E0 C0 E0 YY (YY diferente = autorizado)
```

### SECUENCIA 2: Verificar Estado Primero

```
1. SLOT: 01 00 -> FE 00

2. READ STATUS (016):
   TX: 10 31 02 30 31 36 10 03 FC
   RX: E0 C0 E0 XX

   Analizar byte 3 (XX):
   - F8 = Idle (sin preset) -> Ir a paso 4
   - F0 = Manguera arriba (sin preset) -> Ir a paso 4
   - Otro = Preset activo -> Ir a paso 3

3. Si preset activo, CLEAR SALE (032):
   TX: 10 31 02 30 33 32 10 03 [LRC]
   RX: E0 C0 E0 XX
   Esperar: 300ms

4. AUTHORIZE (030):
   TX: 10 31 02 30 33 30 [H][T][MONTO] 10 03 [LRC]
   RX: E0 C0 E0 XX
```

### SECUENCIA 3: Probar Comandos Clear

```
Para identificar cual comando funciona mejor:

1. SLOT: 01 00 -> FE 00

2. Autorizar primero para crear preset:
   TX: 10 31 02 30 33 30 31 31 30 30 30 30 30 35 30 30 10 03 XX
   RX: E0 C0 E0 XX

3. Verificar preset activo (016):
   TX: 10 31 02 30 31 36 10 03 FC
   RX: E0 C0 E0 YY (deberia ser diferente de F8)

4. Probar CLEAR SALE (032):
   TX: 10 31 02 30 33 32 10 03 [LRC]
   RX: E0 C0 E0 XX

5. Verificar limpiado (016):
   TX: 10 31 02 30 31 36 10 03 FC
   RX: E0 C0 E0 F8 (deberia volver a idle)

Si 032 no funciona, probar 035 y luego 036.
```

---

## CALCULOS DE LRC

### Funcion Python

```python
def calcular_lrc(data):
    """
    Calcula LRC para frame Gilbarco
    data: bytes desde PUMP_ID hasta ultimo dato (antes de DLE ETX)
    """
    lrc = 0
    for byte in data:
        lrc ^= byte
    lrc = (~lrc + 1) & 0xFF
    return lrc
```

### Ejemplos

**Comando 016 (READ STATUS)**:
```python
frame_data = bytes([0x31, 0x02, 0x30, 0x31, 0x36])
# 0x31 = '1' (pump ID)
# 0x02 = STX
# 0x30, 0x31, 0x36 = "016"

lrc = calcular_lrc(frame_data)
# lrc = 0xFC

frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, 0xFC])
# TX: 10 31 02 30 31 36 10 03 FC
```

**Comando 032 (CLEAR SALE)**:
```python
frame_data = bytes([0x31, 0x02, 0x30, 0x33, 0x32])
# '1' STX "032"

lrc = calcular_lrc(frame_data)
# lrc = 0xFE

frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, 0xFE])
# TX: 10 31 02 30 33 32 10 03 FE
```

**Comando 030 con manguera (AUTHORIZE)**:
```python
comando = "030110000500"  # H=1, T=1, $5.00
frame_data = bytes([0x31, 0x02]) + comando.encode('ascii')
# '1' STX "030110000500"

lrc = calcular_lrc(frame_data)

frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])
```

---

## INTERPRETACION DE RESPUESTAS

### Respuesta de READ STATUS (016)

```
Byte 0    Byte 1    Byte 2    Byte 3
E0        C0        E0        XX

XX = Estado de bomba (analizar bits)
```

**Estados conocidos**:
- `F8` (11111000) = Idle, manguera abajo, sin preset
- `F0` (11110000) = Manguera arriba, sin preset
- `FE` (11111110) = Otro estado (posible reset)
- Otros valores = Posible preset activo o estado especial

**Como identificar preset activo**:
1. Autorizar bomba
2. Leer status (016)
3. Guardar valor de byte 3
4. Si es diferente de F8/F0 = preset activo

### Respuesta de CLEAR SALE (032)

```
E0 C0 E0 XX
```

Despues de CLEAR SALE exitoso:
- Byte 3 deberia cambiar
- Siguiente READ STATUS (016) deberia retornar F8 (idle)

### Respuesta de AUTHORIZE (030)

```
E0 C0 E0 XX
```

Despues de AUTHORIZE exitoso:
- Byte 3 deberia ser diferente a F8/F0
- Display de bomba muestra monto autorizado
- Luz de autorizacion encendida

---

## SCRIPTS DE PRUEBA DISPONIBLES

### 1. probar_clear_preset.py

**Que hace**:
- Prueba comandos 032, 035, 036
- Muestra TX/RX de cada uno
- Verifica estado final con 016

**Uso**:
```bash
python probar_clear_preset.py
```

**Espera ENTER entre cada comando** para observar bomba.

### 2. probar_formato_authorize.py

**Que hace**:
- Prueba 15 formatos diferentes de comando 030
- Incluye variantes con manguera de 1 y 2 digitos
- Genera reporte: PRUEBAS_FORMATO_AUTHORIZE.md

**Uso**:
```bash
python probar_formato_authorize.py COM1 1
```

### 3. Script Personalizado: Secuencia Completa

```python
#!/usr/bin/env python3
import serial
import time

def calcular_lrc(data):
    lrc = 0
    for byte in data:
        lrc ^= byte
    return (~lrc + 1) & 0xFF

def enviar_comando(s, pump_id, comando_str):
    # SLOT
    s.write(bytes([pump_id, 0x00]))
    time.sleep(0.3)
    s.read(s.in_waiting)

    # Comando
    frame_data = bytes([ord(str(pump_id)), 0x02]) + comando_str.encode('ascii')
    lrc = calcular_lrc(frame_data)
    frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])

    print(f"TX: {frame.hex()}")
    s.write(frame)
    time.sleep(0.5)

    rx = s.read(s.in_waiting)
    print(f"RX: {rx.hex()}")
    return rx

# Conectar
s = serial.Serial('COM1', 115200, timeout=2)

# Secuencia completa
print("1. CLEAR SALE (032)")
enviar_comando(s, 1, '032')
time.sleep(0.3)

print("\n2. VERIFY STATUS (016)")
enviar_comando(s, 1, '016')
time.sleep(0.3)

print("\n3. AUTHORIZE (030) - Hose 1, Money, $5.00")
enviar_comando(s, 1, '030110000500')
time.sleep(0.5)

print("\n4. VERIFY AUTHORIZED (016)")
enviar_comando(s, 1, '016')

s.close()
```

---

## SEÑALES DE EXITO

### Cuando CLEAR PRESET Funciona

1. **Antes de clear**: READ STATUS (016) responde con byte 3 != F8
2. **Despues de clear**: READ STATUS (016) responde con byte 3 = F8
3. **Display bomba**: Vuelve a idle, sin monto mostrado

### Cuando AUTHORIZE Funciona

1. **Display bomba**: Muestra monto autorizado (ej: "$ 5.00")
2. **Respuesta**: Byte 3 diferente a F8/F0
3. **Luz autorizacion**: Se enciende
4. **Sonido**: Bomba emite beep
5. **Despacho**: Puedes levantar manguera y despachar

---

## TROUBLESHOOTING

### Problema: AUTHORIZE no funciona

**Posibles causas**:
1. Formato de manguera incorrecto
2. Preset anterior no limpiado
3. Bomba en estado bloqueado
4. Manguera incorrecta seleccionada

**Solucion**:
1. Probar los 15 formatos con `probar_formato_authorize.py`
2. Enviar CLEAR SALE (032) antes de AUTHORIZE
3. Verificar estado con READ STATUS (016) antes y despues

### Problema: CLEAR PRESET no limpia

**Posibles causas**:
1. Comando incorrecto (032 vs 035 vs 036)
2. Bomba en estado que no permite clear
3. Timeout insuficiente entre comandos

**Solucion**:
1. Probar 032 primero (mas probable)
2. Si no funciona, probar 035
3. Si no funciona, probar 036
4. Aumentar timeouts entre comandos

### Problema: Sin respuesta del GPBox

**Posibles causas**:
1. SLOT no seleccionado correctamente
2. Puerto COM incorrecto
3. Baudrate incorrecto
4. Cable desconectado

**Solucion**:
1. Verificar SLOT: `01 00` -> debe responder `FE 00`
2. Verificar puerto: `COM1` @ 115200 bps
3. Probar comando conocido: READ STATUS (016)

---

## PROXIMOS PASOS

### Paso 1: Probar CLEAR PRESET (10 minutos)

```bash
python probar_clear_preset.py
```

**Observar**:
- Cual comando (032, 035, 036) limpia el preset
- Respuesta RX de cada uno
- Estado de bomba despues de cada comando

### Paso 2: Probar FORMATOS AUTHORIZE (20 minutos)

```bash
python probar_formato_authorize.py COM1 1
```

**Observar**:
- Cual formato hace que bomba autorice
- Display de bomba cambia
- Respuesta RX diferente

### Paso 3: Integrar Secuencia Completa (15 minutos)

Una vez identificados comandos correctos:
1. Crear script con secuencia completa
2. Probar: CLEAR -> VERIFY -> AUTHORIZE -> VERIFY
3. Validar multiples veces
4. Probar con diferentes montos y mangueras

### Paso 4: Documentar Resultados (10 minutos)

Crear reporte con:
1. Comando CLEAR que funciona
2. Formato AUTHORIZE que funciona
3. Respuestas RX exactas
4. Tiempos entre comandos
5. Observaciones del hardware

---

## ARCHIVOS GENERADOS

### Documentacion
1. **GUIA_COMPLETA_AUTHORIZE_FINAL.md** ⭐ - Este archivo
2. **INVESTIGACION_CLEAR_PRESET.md** - Analisis de CLEAR
3. **COMO_ENCONTRAR_FORMATO_MANGUERA.md** - Analisis de formato
4. **RESUMEN_ANALISIS_PROFUNDO.md** - Analisis VB6/DLLs

### Scripts de Prueba
5. **probar_clear_preset.py** ⭐ - Prueba comandos clear
6. **probar_formato_authorize.py** ⭐ - Prueba formatos authorize
7. **probar_comandos_prioritarios.py** - Menu interactivo

### Scripts de Analisis
8. **investigar_clear_preset.py** - Analiza DLLs para clear
9. **analizar_vb6_profundo.py** - Analiza bytecode VB6
10. **extraer_formato_exacto.py** - Analiza formato en DLL

---

## COMMITS REALIZADOS

```
c4773aa - Herramientas para encontrar manguera
362c207 - Guia completa formato manguera
8f19b6e - Analisis profundo VB6/DLLs
9053eea - Resumen analisis profundo
8e1016b - Investigacion CLEAR PRESET
Branch: claude/custom-software-project-011CUzeWTDN79V4sWKyc6kcc
```

---

## ESTADO FINAL

**Analisis**: ✅ COMPLETADO (100%)
**Herramientas**: ✅ LISTAS (100%)
**Documentacion**: ✅ COMPLETA (100%)
**Pruebas Hardware**: ⏳ PENDIENTE (0%)

**Confianza en comandos propuestos**:
- CLEAR PRESET (032): 90%
- AUTHORIZE Formato 1: 85%

---

## RESUMEN EJECUTIVO

**DOS PROBLEMAS IDENTIFICADOS**:
1. Comando 030 no especifica manguera
2. Preset anterior no se limpia automaticamente

**DOS SOLUCIONES PROPUESTAS**:
1. Formato: `030[H][T][MONTO]` donde H=hose, T=tipo, MONTO=8 digitos
2. Comando CLEAR: `032` (CLEAR SALE) antes de autorizar

**SECUENCIA FINAL RECOMENDADA**:
```
SLOT (01 00) -> CLEAR SALE (032) -> VERIFY (016) -> AUTHORIZE (030) -> VERIFY (016)
```

**PROXIMA ACCION CRITICA**:
```bash
python probar_clear_preset.py    # Identificar comando clear
python probar_formato_authorize.py COM1 1    # Identificar formato
```

---

**Todo listo para pruebas con hardware!** 🚀
