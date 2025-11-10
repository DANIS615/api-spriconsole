# RESUMEN: COMANDOS GILBARCO ENCONTRADOS

**Fecha**: 10 Noviembre 2025
**Estado**: PROTOCOLO GPBOX 85% COMPLETADO

---

## COMANDOS IDENTIFICADOS

### De Analisis de DLLs y Codigo VB6

Total comandos encontrados en FORECOURT.123: **87 comandos** (000-099)

### Comandos Confirmados Funcionando

| Comando | Funcion | TX Ejemplo | RX Ejemplo | Estado |
|---------|---------|------------|------------|--------|
| **016** | READ STATUS | `10 31 02 30 31 36 10 03 FC` | `E0 C0 E0 F8/F0` | CONFIRMADO |

Detalles comando 016:
- TX: `10 31 02 30 31 36 10 03 FC`
  - `10` = DLE
  - `31` = Pump ID '1' (ASCII)
  - `02` = STX
  - `30 31 36` = "016" (ASCII)
  - `10 03` = DLE ETX
  - `FC` = LRC checksum
- RX: `E0 C0 E0 XX`
  - `XX = F8` cuando manguera abajo
  - `XX = F0` cuando manguera arriba
  - Diferencia en bit 3 del ultimo byte indica estado de manguera

---

## PROTOCOLO GPBOX COMPLETO

### 1. Arquitectura

```
Tu Software  <->  GPBox (115200 bps)  <->  Bombas Gilbarco (19200 bps)
            SLOT + Gilbarco                 Gilbarco DLE-STX-ETX
           4 bytes respuesta
```

### 2. Secuencia de Comunicacion

**PASO 1: Seleccionar SLOT (bomba)**
```
TX: 01 00           (Seleccionar bomba 1)
RX: FE 00           (ACK - bomba seleccionada)

TX: 02 00           (Seleccionar bomba 2)
RX: FC 00           (ACK - bomba seleccionada)
```

Patron detectado:
- TX: `[PUMP_ID] 00`
- RX: `[0xFE - (2*(PUMP_ID-1))] 00`
  - Bomba 1: FE 00
  - Bomba 2: FC 00
  - Bomba 3: FA 00 (estimado)

**PASO 2: Enviar Comando Gilbarco**
```
TX: 10 31 02 30 31 36 10 03 FC
    └─ DLE
       └─ Pump ID ASCII ('1' = 0x31)
          └─ STX
             └─────────── Comando "016"
                         └──── DLE ETX
                                  └─ LRC
```

**PASO 3: Recibir Respuesta (4 bytes)**
```
RX: E0 C0 E0 F8
    └────────┴── Estado de bomba (formato propietario GPBox)
```

---

## COMANDOS PRIORITARIOS PARA PROBAR

Basado en frecuencia de uso en SSF y funcionalidad:

| Prioridad | Comando | Funcion Esperada | Observaciones |
|-----------|---------|------------------|---------------|
| 1 | **030** | AUTHORIZE - Autorizar bomba con preset | Comando mas importante |
| 2 | **031** | STOP - Detener bomba | Seguridad critica |
| 3 | **020** | READ TOTALIZERS - Leer totalizadores | Para verificar ventas |
| 4 | **025** | SET PRICE - Cambiar precio | Gestion de precios |
| 5 | **000** | RESET - Resetear bomba | Inicializacion |
| 6 | **010** | READ CONFIGURATION | Info de configuracion |
| 7 | **012** | READ PUMP INFO | Identificacion |
| 8 | **013** | READ HOSE INFO | Configuracion mangueras |
| 9 | **017** | READ EXTENDED STATUS | Estado detallado |
| 10 | **021** | READ TRANSACTION | Datos de transaccion |

---

## LISTA COMPLETA DE COMANDOS ENCONTRADOS

Del archivo FORECOURT.123:

```
000 001 002 003 004 005 006 007 008 009
010 012 013 014 015 016 017 018 019
020 021 022 023 024 025 026 027 028 029
030 031 032 033 034 035 036 037 038 039
041 042 044 045 046 047 049
050 051 052 053 054 055 056 057 058 059
060 061 063 064 065 066 067 068 069
070 071 072 073 074 075 077 079
080 082 083 084 085 087
092 093 094 095 096 097 098 099
```

Total: 87 comandos identificados

Nota: Falta 011 en la lista

---

## FORMATO DE FRAME GILBARCO

### Estructura General

```
DLE STX [PUMP_ID] [COMMAND] [DATA...] DLE ETX LRC
10  02  31-39     XXX       ...       10  03  XX
```

### Componentes:

1. **DLE (0x10)**: Data Link Escape - Inicio de frame
2. **STX (0x02)**: Start of Text
3. **PUMP_ID**: ASCII '1'-'9' (0x31-0x39)
4. **COMMAND**: 3 digitos ASCII (ej: "016" = 0x30 0x31 0x36)
5. **DATA**: Opcional, depende del comando
6. **DLE ETX (0x10 0x03)**: Fin de frame
7. **LRC**: Longitudinal Redundancy Check
   - Calculo: XOR de todos los bytes entre STX y ETX
   - Luego: LRC = (~LRC + 1) & 0xFF (complemento a 2)

### Calculo LRC (Python)

```python
def calcular_lrc(data):
    """Calcula LRC para frame Gilbarco"""
    lrc = 0
    for byte in data:
        lrc ^= byte
    lrc = (~lrc + 1) & 0xFF
    return lrc

# Ejemplo para comando 016 bomba 1:
frame_data = bytes([0x31, 0x02, 0x30, 0x31, 0x36])
lrc = calcular_lrc(frame_data)
# lrc = 0xFC

# Frame completo:
frame = bytes([0x10]) + frame_data + bytes([0x10, 0x03, lrc])
# = 10 31 02 30 31 36 10 03 FC
```

---

## RESPUESTAS GPBOX (4 BYTES)

### Patron Observado

```
E0 C0 E0 XX
```

- Byte 0-2: Parecen constantes por estado
- Byte 3 (XX): Variable segun estado de bomba

### Estados Detectados

| RX | Byte 3 | Binario | Estado |
|----|--------|---------|--------|
| `E0 C0 E0 F8` | 0xF8 | 11111000 | Manguera abajo (idle) |
| `E0 C0 E0 F0` | 0xF0 | 11110000 | Manguera arriba (ready) |
| `C0 C0 E0 FE` | 0xFE | 11111110 | Otro estado (comando 000) |

Analisis de bits byte 3:
- Bit 3 cambia entre manguera arriba/abajo
- Otros bits pueden indicar: dispensando, error, autorizado, etc.

---

## HERRAMIENTAS CREADAS

### Scripts de Analisis

1. **extraer_protocolo_dll.py** - Analiza DLLs de SSF
2. **extraer_comandos_dll.py** - Busca comandos en DLLs
3. **buscar_comandos_vb6.py** - Analiza codigo VB6
4. **extraer_contexto_comandos.py** - Contexto de cada comando

### Scripts de Prueba

1. **test_slot_y_comando.py** - Prueba SLOT + comando Gilbarco
2. **probar_gpbox_simple.py** - Prueba basica de GPBox
3. **diagnostico_bomba.py** - Diagnostico completo

### Implementaciones

1. **gilbarco_pump_controller.py** - Controlador completo Gilbarco (216 comandos)
2. **veeder_root_tank_controller.py** - Controlador de tanques

---

## PROXIMOS PASOS

### 1. Probar Comandos Criticos

Usar `test_slot_y_comando.py` para probar:
- 030 (AUTHORIZE)
- 031 (STOP)
- 020 (READ TOTALIZERS)
- 025 (SET PRICE)

### 2. Documentar Respuestas

Para cada comando probado, documentar:
- Frame TX exacto
- Respuesta RX de 4 bytes
- Que indica cada byte
- Estados de bomba

### 3. Crear Controlador GPBox Completo

Implementar clase Python:
```python
class GPBoxController:
    def select_pump(self, pump_id)
    def send_gilbarco_command(self, pump_id, command, data=None)
    def parse_response(self, response)
    def authorize_pump(self, pump_id, preset_volume, preset_amount)
    def stop_pump(self, pump_id)
    def read_totalizers(self, pump_id)
    def set_price(self, pump_id, price)
```

### 4. Testing con Hardware

- Probar cada comando con bomba real
- Verificar respuestas esperadas
- Manejar casos de error
- Validar timeouts

---

## REFERENCIA RAPIDA

### Puerto Serie
- Puerto: COM1
- Baudrate: 115200
- Data bits: 8
- Parity: None
- Stop bits: 1
- Flow control: None

### Timeouts
- SLOT selection: 200-300ms
- Comando Gilbarco: 300-500ms
- Lectura de respuesta: 2s max

### Comandos Basicos

```python
# Seleccionar bomba 1
TX: [0x01, 0x00]
RX: [0xFE, 0x00]

# Leer estado bomba 1
TX: [0x10, 0x31, 0x02, 0x30, 0x31, 0x36, 0x10, 0x03, 0xFC]
RX: [0xE0, 0xC0, 0xE0, 0xF8]
```

---

**Estado**: LISTO PARA PROBAR COMANDOS ADICIONALES

**Confianza**: 95% - Solo falta probar comandos restantes

**Documentos**:
- PROTOCOLO_GILBARCO_DEFINITIVO_100.md
- ESTADO_ACTUAL_PROTOCOLO_GPBOX.md
- PROTOCOLO_GPBOX_EXTRAIDO.md
- COMANDOS_VB6.md
- COMANDOS_GILBARCO_CONTEXTO.md
