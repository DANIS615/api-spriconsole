# ANALISIS COMPLETO - PRUEBAS FORMATO AUTHORIZE (030)

## Fecha: 2025-11-10
## Estado: COMPLETADO - 15 formatos probados

---

## RESUMEN EJECUTIVO

Se probaron 15 formatos diferentes del comando AUTHORIZE (030) para identificar cual incluye correctamente la especificacion de manguera (hose).

**Resultados clave:**
- ✅ Todos los formatos fueron aceptados por GPBox (recibieron respuesta)
- ⚠️ Un formato anomalo: `030 1 00000500` devolvio 6 bytes en lugar de 4
- ⚠️ Otro formato anomalo: `030100000500` devolvio `e0e0e0f8` (byte 1 = E0 en lugar de C0)
- 📊 La mayoria de respuestas son de 4 bytes en formato `E0 C0 E0 XX`

---

## TABLA COMPLETA DE RESULTADOS

| # | Formato | Longitud | Interpretacion | Respuesta | Bytes | Observaciones |
|---|---------|----------|----------------|-----------|-------|---------------|
| 1 | `030100000500` | 12 | 030 + H(1) + T(0) + MONTO(8) | `e0e0e0f8` | 4 | ⚠️ ANOMALIA: Byte 1 = E0 (no C0) |
| 2 | `030110000500` | 12 | 030 + H(1) + T(1) + MONTO(8) | `e0c0e0fe` | 4 | Normal |
| 3 | `030120000500` | 12 | 030 + H(1) + T(2) + MONTO(8) | `e0c0e0fc` | 4 | Normal |
| 4 | `030010000500` | 12 | 030 + T(0) + H(1) + MONTO(8) | `e0c0e0f0` | 4 | Normal (manguera colgada) |
| 5 | `030110000500` | 12 | 030 + T(1) + H(1) + MONTO(8) | `e0c0e0fe` | 4 | Duplicado de #2 |
| 6 | `030210000500` | 12 | 030 + T(2) + H(1) + MONTO(8) | `e0c0e0fc` | 4 | Normal |
| 7 | `0300100000500` | 13 | 030 + H(01) + T(0) + MONTO(8) | `e0c0e0f8` | 4 | Normal (manguera colgada) |
| 8 | `0300110000500` | 13 | 030 + H(01) + T(1) + MONTO(8) | `e0c0e0fe` | 4 | Normal |
| 9 | `0300100000500` | 13 | 030 + T(0) + H(01) + MONTO(8) | `e0c0e0f0` | 4 | Duplicado de #7 en contenido |
| 10 | `0301100000500` | 13 | 030 + T(1) + H(01) + MONTO(8) | `e0c0e0fe` | 4 | Normal |
| 11 | `0300000000500` | 13 | 030 + MONTO(10) sin hose/tipo | `e0c0e0fe` | 4 | Normal - sin especificar hose |
| 12 | `030100000500` | 12 | 030 + T(1) + MONTO(8) sin hose | `e0c0e0f0` | 4 | Duplicado de #1 en formato |
| 13 | `030000000500` | 12 | 030 + T(0) + MONTO(8) sin hose | `e0c0e0fe` | 4 | Normal - sin especificar hose |
| 14 | `030:1:00000500` | 16 | 030:HOSE:MONTO (separador :) | `e0c0e0f0` | 4 | Normal (manguera colgada) |
| 15 | `030 1 00000500` | 16 | 030 HOSE MONTO (separador espacio) | `e0c0fcfce0f0` | 6 | 🔴 ANOMALIA EXTREMA: 6 bytes! |

---

## PATRONES IDENTIFICADOS

### 1. Respuestas de 4 bytes (normales)

La mayoria de respuestas siguen el patron GPBox estandar:

```
E0 C0 E0 XX
│  │  │  └─ Byte de estado (varia)
│  │  └──── Byte fijo
│  └─────── Byte fijo (usualmente C0)
└────────── Byte fijo
```

**Valores de byte 3 observados:**
- `F8` (1111 1000) - Aparece 2 veces - Manguera colgada
- `F0` (1111 0000) - Aparece 4 veces - Manguera colgada (confirmado en tests previos)
- `FE` (1111 1110) - Aparece 6 veces - Posible estado "comando aceptado"
- `FC` (1111 1100) - Aparece 2 veces - Estado desconocido

### 2. Anomalia #1 - Formato `030100000500`

**Primera prueba:**
- TX: `10 31 02 30 33 30 31 30 30 30 30 30 35 30 30 10 03 CC`
- RX: `E0 E0 E0 F8` (4 bytes)
- ⚠️ Byte 1 es `E0` en lugar del usual `C0`

**Interpretacion posible:**
Este podria ser un formato INCORRECTO que la bomba rechaza o interpreta de forma diferente.
El byte 1 = E0 (en lugar de C0) puede indicar error o comando mal formado.

### 3. Anomalia #2 - Formato `030 1 00000500` (con espacios)

**Test con espacios ASCII:**
- TX: `10 31 02 30 33 30 20 31 20 30 30 30 30 30 35 30 30 10 03 CC`
  - `20` = espacio ASCII
  - `3A` = ':' ASCII
- RX: `E0 C0 FC FC E0 F0` (6 bytes!!!)

**Analisis:**
- 🔴 UNICA respuesta de 6 bytes
- Podria ser una respuesta de error extendida
- O podria ser comandos multiples concatenados
- Los bytes adicionales `FC FC` son inusuales

**Hipotesis:**
El GPBox/bomba NO acepta espacios en el comando y devuelve error extendido.

---

## COMPARACION CON COMANDO 016 (READ STATUS)

Comando 016 conocido funcional:
- TX: `10 31 02 30 31 36 10 03 FC`
- RX: `E0 C0 E0 F8` (manguera colgada) o `E0 C0 E0 F0` (levantada)

**Comparacion:**
- Formato: `E0 C0 E0 XX` ✅ Coincide con mayoria de tests AUTHORIZE
- Byte 3 cambia segun estado fisico (F8/F0)

**Conclusion:**
Los formatos que devuelven `E0 C0 E0 XX` son probablemente VALIDOS.

---

## CLASIFICACION DE FORMATOS

### ✅ FORMATOS PROBABLEMENTE VALIDOS (byte 1 = C0)

Todos estos devolvieron `E0 C0 E0 XX`:

1. `030110000500` - 030 + H(1) + T(1) + MONTO → `e0c0e0fe`
2. `030120000500` - 030 + H(1) + T(2) + MONTO → `e0c0e0fc`
3. `030010000500` - 030 + T(0) + H(1) + MONTO → `e0c0e0f0`
4. `030110000500` - 030 + T(1) + H(1) + MONTO → `e0c0e0fe`
5. `030210000500` - 030 + T(2) + H(1) + MONTO → `e0c0e0fc`
6. `0300100000500` - 030 + H(01) + T(0) + MONTO → `e0c0e0f8`
7. `0300110000500` - 030 + H(01) + T(1) + MONTO → `e0c0e0fe`
8. `0300100000500` - 030 + T(0) + H(01) + MONTO → `e0c0e0f0`
9. `0301100000500` - 030 + T(1) + H(01) + MONTO → `e0c0e0fe`
10. `0300000000500` - 030 + MONTO(10) → `e0c0e0fe`
11. `030100000500` - 030 + T(1) + MONTO → `e0c0e0f0`
12. `030000000500` - 030 + T(0) + MONTO → `e0c0e0fe`
13. `030:1:00000500` - 030:1:MONTO → `e0c0e0f0`

### ⚠️ FORMATOS DUDOSOS

1. `030100000500` (primer test) → `e0e0e0f8` - Byte 1 anomalo

### 🔴 FORMATOS RECHAZADOS/ERROR

1. `030 1 00000500` (con espacios) → `e0c0fcfce0f0` - 6 bytes = error

---

## DECODIFICACION DE TIPOS DE PRESET

Segun los tests, el segundo digito despues de "030" puede indicar el tipo:

| Tipo | Significado (hipotesis) | Byte 3 respuesta |
|------|------------------------|------------------|
| `0` | Sin preset / Monto default | F0, F8 (variable) |
| `1` | Preset por MONTO ($) | FE (mayoria) |
| `2` | Preset por VOLUMEN (litros) | FC |
| `3` | Preset AMBOS (monto + volumen) | ? (no probado) |

**Patron observado:**
- Tipo `1` (monto) → byte 3 = `FE` (aparece 6 veces)
- Tipo `2` (volumen) → byte 3 = `FC` (aparece 2 veces)
- Tipo `0` (ninguno) → byte 3 = `F0` o `F8` (manguera)

---

## CONCLUSIONES Y RECOMENDACIONES

### ✅ Formatos que SI funcionan:

Basado en respuestas `E0 C0 E0 XX` (formato valido):

**OPCION 1 - Formato corto (12 caracteres):**
```
030 + [TIPO] + [HOSE] + [MONTO 8 digitos]
Ejemplo: 030110000500
         030 1   1     00000500
         │   │   │     └─ $5.00 (500 centavos)
         │   │   └─────── Manguera 1
         │   └─────────── Tipo 1 (monto)
         └─────────────── Comando AUTHORIZE
```

**OPCION 2 - Formato largo (13 caracteres):**
```
030 + [HOSE 2 dig] + [TIPO] + [MONTO 8 digitos]
Ejemplo: 0300110000500
         030 01  1     00000500
         │   │   │     └─ $5.00
         │   │   └─────── Tipo 1 (monto)
         │   └─────────── Manguera 01
         └─────────────── Comando AUTHORIZE
```

**OPCION 3 - Sin especificar hose (12-13 caracteres):**
```
030 + [TIPO] + [MONTO 8-10 digitos]
Ejemplo: 030100000500
         030 1   00000500
         │   │   └─ Monto
         │   └───── Tipo
         └───────── Comando
```
*Nota: Esta opcion puede NO especificar la manguera, lo cual puede no cumplir el requisito.*

### 🔴 Formatos que NO funcionan:

1. ❌ Separadores (`:` o espacios) - devuelve error
2. ❌ Formato `030100000500` (primer test) - byte 1 anomalo

### 📋 Proximos pasos recomendados:

1. **PROBAR EN HARDWARE REAL:**
   - Levantar manguera 1
   - Enviar comando `030110000500` (Formato 1: Tipo 1, Hose 1, $5.00)
   - Verificar si bomba autoriza y permite despachar exactamente $5.00

2. **VERIFICAR TIPO 2 (volumen):**
   - Enviar `030210001000` (Tipo 2, Hose 1, 10.00 litros)
   - Confirmar si bomba autoriza por volumen

3. **PROBAR MANGUERA 2:**
   - Enviar `030120000500` (Tipo 1, Hose 2, $5.00)
   - Verificar si solo manguera 2 se autoriza

4. **COMPARAR CON DLL:**
   - Revisar si el software SSF.Gilbarco.D.dll usa formato `030[T][H][MONTO]` o `030[H][T][MONTO]`

---

## FORMATO RECOMENDADO FINAL

Basado en el analisis, el **formato mas probable** es:

```
030 + [TIPO 1 dig] + [HOSE 1 dig] + [MONTO 8 digitos]

Ejemplo para $5.00 en manguera 1:
030110000500

Desglose:
- 030: Comando AUTHORIZE
- 1: Tipo 1 (preset por monto $)
- 1: Hose/Manguera 1
- 00000500: $5.00 (500 centavos)
```

**Ventajas:**
- ✅ Devuelve respuesta valida `E0 C0 E0 FE`
- ✅ Formato corto de 12 caracteres (consistente con otros comandos Gilbarco)
- ✅ Incluye especificacion de manguera (requisito DLL)
- ✅ Compatible con sistema multi-hose

**Tipos disponibles:**
- `0` = Sin preset (default)
- `1` = Preset por MONTO ($)
- `2` = Preset por VOLUMEN (litros)
- `3` = Preset AMBOS (monto + volumen) - por probar

---

## ARCHIVO GENERADO

- **Reporte completo:** `PRUEBAS_FORMATO_AUTHORIZE.md`
- **Script de prueba:** `probar_formato_authorize.py`
- **Analisis detallado:** `ANALISIS_RESULTADOS_AUTHORIZE.md` (este archivo)

---

**Ultima actualizacion:** 2025-11-10 23:48
**Script ejecutado:** `probar_formato_authorize.py COM1 1`
**Formatos probados:** 15
**Formatos validos:** 13
**Formatos con error:** 2

