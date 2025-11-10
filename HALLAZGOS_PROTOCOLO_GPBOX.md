# 🎯 HALLAZGOS DEL PROTOCOLO GPBOX

## 📅 Fecha: 2025-11-10
## 🔬 Método: Testing directo con COM1 @ 115200 bps

---

## ✅ COMANDOS DESCUBIERTOS

### 1. Comando SLOT (Seleccionar Bomba)

**Formato:**
```
TX: [BOMBA_ID] [0x00]
RX: [RESPUESTA_2_BYTES]
```

**Ejemplos probados:**

| Comando TX | Respuesta RX | Significado |
|------------|--------------|-------------|
| `01 00` | `FE 00` | Seleccionar BOMBA 1 ✅ |
| `02 00` | `FC 00` | Seleccionar BOMBA 2 ✅ |
| `00 00` | `00` | SLOT 0 / Reset |

**Patrón de respuesta:**
```
BOMBA 1: FE 00  (1111 1110)
BOMBA 2: FC 00  (1111 1100)
```

Parece ser un patrón binario:
- BOMBA 1: `FE` = NOT(0x01) = ~0x01
- BOMBA 2: `FC` = NOT(0x03) = ~0x03

### 2. Comando Handshake

**Formato:**
```
TX: 0x10
RX: 0xF0
```

**Significado:** Posible inicialización o ping

---

## 🔍 COMANDOS QUE NO RESPONDEN

Estos comandos NO generan respuesta:

| Comando | Probado | Resultado |
|---------|---------|-----------|
| `0x00` solo | ✅ | Sin respuesta |
| `0x01` solo | ✅ | Sin respuesta |
| `0xFF` solo | ✅ | Sin respuesta |
| `0x16` (status Gilbarco) | ✅ | Sin respuesta |
| `0x3F` | ✅ | Sin respuesta |
| `0x53` | ✅ | Sin respuesta |

**Conclusión:** Los comandos DEBEN tener el formato correcto (2 bytes mínimo)

---

## 🎯 PROTOCOLO INFERIDO

### Secuencia de comunicación:

```
1. INICIALIZAR (opcional):
   TX: 10
   RX: F0

2. SELECCIONAR BOMBA:
   TX: [BOMBA_ID] 00
   RX: [CONFIRMACIÓN_2_BYTES]

   Ejemplo - Bomba 1:
   TX: 01 00
   RX: FE 00

3. ENVIAR COMANDO A LA BOMBA:
   TX: [COMANDO_GILBARCO]
   RX: [RESPUESTA_BOMBA]
```

---

## 📊 ANÁLISIS DE RESPUESTAS

### Respuestas observadas en diagnóstico anterior:

Del archivo `diagnostico_bomba_auto.py`:

```
BOMBA 1: e0 e0 e0 f0
BOMBA 2: c0 c0 e0 fe
BOMBA 3: e0 c0 e0 fc
BOMBA 4: 00 e0 e0 fe
```

Estas respuestas fueron cuando enviamos comandos Gilbarco DIRECTOS sin seleccionar SLOT primero.

**Nueva hipótesis:**
- GPBox necesita selección de SLOT primero
- Sin SLOT, las respuestas son "basura" o error

---

## 🔧 PRÓXIMOS PASOS

### Test 1: Secuencia completa
```python
# 1. Seleccionar bomba
send([0x01, 0x00])  # Bomba 1
wait_response()     # Esperado: FE 00

# 2. Enviar comando Gilbarco (leer estado)
send([0x10, 0x31, 0x02, 0x30, 0x31, 0x36, 0x10, 0x03, 0xFC])
wait_response()     # ¿Respuesta de bomba?
```

### Test 2: Probar todas las bombas (1-6)
```python
for bomba_id in range(1, 7):
    tx = [bomba_id, 0x00]
    rx = send_and_wait(tx)
    print(f"Bomba {bomba_id}: {rx.hex()}")
```

### Test 3: Comandos después de SLOT
```python
# Seleccionar bomba 1
send([0x01, 0x00])
wait(0.1)

# Probar comandos simples
send([0x16])  # Status
send([0x00])  # Reset
send([0xFF])  # Query
```

---

## 💡 HALLAZGO CLAVE: SISTEMA DE SLOTS

**GPBox NO es un simple passthrough serial.**

GPBox implementa:
1. **Multiplexación**: Un puerto serial controla 6+ bombas
2. **Sistema de slots**: Seleccionar bomba antes de comunicar
3. **Protocolo propio**: Formato específico para selección

```
┌─────────────────────────────────────┐
│   Software (Python/SSF)              │
└──────────────┬──────────────────────┘
               │ COM1 @ 115200
               │ Protocolo GPBox
               ↓
┌─────────────────────────────────────┐
│          GPBox Hardware              │
│  - Recibe: SLOT selection           │
│  - Multiplexa: 6 puertos físicos    │
│  - Traduce: A protocolo Gilbarco    │
└──┬───┬───┬───┬───┬───┬──────────────┘
   │   │   │   │   │   │
   ↓   ↓   ↓   ↓   ↓   ↓
  B1  B2  B3  B4  B5  B6
```

---

## 📋 RESUMEN EJECUTIVO

### ✅ LO QUE SABEMOS:

1. **Puerto:** COM1
2. **Baudrate:** 115200 bps
3. **Comando SLOT:** `[BOMBA_ID] 0x00`
4. **Respuesta SLOT:** 2 bytes (patrón: `NOT(ID*2-1)`)
5. **Handshake:** `0x10` → `0xF0`

### ❓ LO QUE FALTA:

1. Comandos después de seleccionar SLOT
2. Formato de comandos Gilbarco a través de GPBox
3. Timeout entre comandos
4. Comando para "deseleccionar" SLOT

### 🚀 SIGUIENTE EXPERIMENTO:

**Archivo:** `test_slot_y_comando.py`

```python
import serial
import time

ser = serial.Serial('COM1', 115200, timeout=2)

# 1. Seleccionar bomba 1
print("Seleccionando bomba 1...")
ser.write(bytes([0x01, 0x00]))
time.sleep(0.1)
resp = ser.read(100)
print(f"Respuesta SLOT: {resp.hex()}")

# 2. Enviar comando Gilbarco (016 - status)
print("\nEnviando comando 016 (status)...")
cmd = bytes([0x10, 0x31, 0x02, 0x30, 0x31, 0x36, 0x10, 0x03, 0xFC])
ser.write(cmd)
time.sleep(0.5)
resp = ser.read(100)
print(f"Respuesta COMANDO: {resp.hex()}")

ser.close()
```

---

**Documento generado:** 2025-11-10 23:02
**Método:** `probar_gpbox_simple.py COM1`
**Estado:** Protocolo parcialmente descubierto ✅
**Confianza:** Alta (comandos confirmados en hardware real)
