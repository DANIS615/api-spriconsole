# PRUEBAS DE FORMATO COMANDO 030 AUTHORIZE

Pruebas para encontrar formato correcto con manguera

---

## HALLAZGOS PREVIOS

En SSF.Gilbarco.D.dll encontramos:

- `COMPARANDO CALLING HOSE [%ld] CON HOSE PRESETEADO [%ld][%s]`
- `PRESET POR HOSE`
- `Setting preset filter by Hose [%s]`

Esto confirma que el comando DEBE incluir especificacion de manguera

---

## RESULTADOS DE PRUEBAS

| Formato | Descripcion | RX | Bytes |
|---------|-------------|-----|-------|
| `030100000500` | Formato 1: 030 + H(1) + T(0) + MONTO(00000500) = $5.00 | `e0e0e0f8` | 4 |
| `030110000500` | Formato 1: 030 + H(1) + T(1) + MONTO(00000500) = $5.00 | `e0c0e0fe` | 4 |
| `030120000500` | Formato 1: 030 + H(1) + T(2) + MONTO(00000500) = $5.00 | `e0c0e0fc` | 4 |
| `030010000500` | Formato 2: 030 + T(0) + H(1) + MONTO(00000500) = $5.00 | `e0c0e0f0` | 4 |
| `030110000500` | Formato 2: 030 + T(1) + H(1) + MONTO(00000500) = $5.00 | `e0c0e0fe` | 4 |
| `030210000500` | Formato 2: 030 + T(2) + H(1) + MONTO(00000500) = $5.00 | `e0c0e0fc` | 4 |
| `0300100000500` | Formato 3: 030 + H(01) + T(0) + MONTO(00000500) = $5.00 | `e0c0e0f8` | 4 |
| `0300110000500` | Formato 3: 030 + H(01) + T(1) + MONTO(00000500) = $5.00 | `e0c0e0fe` | 4 |
| `0300100000500` | Formato 4: 030 + T(0) + H(01) + MONTO(00000500) = $5.00 | `e0c0e0f0` | 4 |
| `0301100000500` | Formato 4: 030 + T(1) + H(01) + MONTO(00000500) = $5.00 | `e0c0e0fe` | 4 |
| `0300000000500` | Formato 5: 030 + MONTO(0000000500) = $5.00 (sin hose?) | `e0c0e0fe` | 4 |
| `030100000500` | Formato 6: 030 + T(1) + MONTO(00000500) = $5.00 (sin hose?) | `e0c0e0f0` | 4 |
| `030000000500` | Formato 6: 030 + T(0) + MONTO(00000500) = $5.00 (sin hose?) | `e0c0e0fe` | 4 |
| `030:1:00000500` | Formato 7: 030:HOSE:MONTO (con separador ':') | `e0c0e0f0` | 4 |
| `030 1 00000500` | Formato 7: 030 HOSE MONTO (con espacio) | `e0c0fcfce0f0` | 6 |

---

## ANALISIS

Revisar cual respuesta indica exito:
- Respuestas de 4 bytes tipo `E0 C0 E0 XX` pueden ser estado
- Respuestas diferentes pueden indicar error o comando rechazado
- Comparar con respuesta de comando 016 (READ STATUS) conocido

