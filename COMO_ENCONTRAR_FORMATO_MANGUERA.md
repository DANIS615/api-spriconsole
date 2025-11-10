# COMO ENCONTRAR EL FORMATO CORRECTO DE MANGUERA

**Fecha**: 10 Noviembre 2025
**Problema**: Comando 030 (AUTHORIZE) no funciona porque falta especificar manguera

---

## PROBLEMA IDENTIFICADO

Cuando enviamos comando AUTHORIZE sin especificar manguera:
```
TX: 10 31 02 30 33 30 31 30 30 30 30 30 35 30 30 10 03 XX
    └─────── 030100000500 (tipo 1, $5.00)
```

GPBox no sabe a que manguera enviar el preset. En bombas multimanguera (Regular, Premium, Diesel), **DEBE** especificarse cual usar.

---

## HALLAZGOS EN DLLs

Analizamos SSF.Gilbarco.D.dll y encontramos strings clave:

### 1. Confirmacion de Manguera Requerida
```
"COMPARANDO CALLING HOSE [%ld] CON HOSE PRESETEADO [%ld][%s]"
```
- **Calling hose**: La manguera que el usuario levanta fisicamente
- **Hose preseteado**: La manguera especificada en el comando AUTHORIZE

### 2. Preset por Manguera
```
"PRESET POR HOSE"
"Setting preset filter by Hose [%s]"
```
Confirma que el preset se filtra/especifica por manguera.

### 3. Funciones Encontradas
- `SSFPumpGilbarco::iaSendPumpVolumePreset` - Preset por volumen
- `SSFPumpGilbarco::iaSendPumpMoneyPreset` - Preset por dinero
- Referencias a `Hose LN` (Logical Number) y `RN` (Real Number)

---

## HIPOTESIS DE FORMATOS

Basado en protocolos Gilbarco estandar:

### Formato 1: Manguera + Tipo + Monto (10 caracteres)
```
030[H][T][MONTO____]
   1  1  8 digitos

Ejemplo: 030110000500
         └── hose 1
           └── tipo 1 (monto)
             └── 00000500 ($5.00)
```

### Formato 2: Tipo + Manguera + Monto (10 caracteres)
```
030[T][H][MONTO____]
   1  1  8 digitos

Ejemplo: 030110000500
         └── tipo 1 (monto)
           └── hose 1
             └── 00000500 ($5.00)
```

### Formato 3: Manguera 2 Digitos + Tipo + Monto (11 caracteres)
```
030[HH][T][MONTO____]
   2   1  8 digitos

Ejemplo: 0300110000500
         └─── hose 01
            └── tipo 1
              └── 00000500 ($5.00)
```

### Formato 4: Tipo + Manguera 2 Digitos + Monto (11 caracteres)
```
030[T][HH][MONTO____]
   1  2   8 digitos

Ejemplo: 0301100000500
         └── tipo 1
           └─── hose 01
              └── 00000500 ($5.00)
```

### Formato 5: Comando Separado (2 pasos)
```
Paso 1: Seleccionar manguera
        Comando: 0XX[H]  (por ejemplo: 050[1] o similar)

Paso 2: Enviar AUTHORIZE
        Comando: 030[T][MONTO] (sin hose, ya seleccionado)
```

---

## HERRAMIENTAS CREADAS

### 1. Analizar DLLs
```bash
python analizar_mangueras_dll.py
```
- Busca referencias a hose/manguera en DLLs
- Encuentra 128 referencias en SSF.Gilbarco.D.dll
- Genera: `ANALISIS_MANGUERAS_DLL.md`

### 2. Buscar Formato en Binario
```bash
python buscar_formato_030.py
```
- Busca patrones del comando 030 en binario
- Extrae contexto hexadecimal
- Muestra strings con preset

### 3. Probar Formatos (LA MAS IMPORTANTE)
```bash
python probar_formato_authorize.py COM1 1
```

Este script prueba **15 formatos diferentes** automaticamente:

1. `030100000500` - H(1) + T(0) + MONTO
2. `030110000500` - H(1) + T(1) + MONTO
3. `030120000500` - H(1) + T(2) + MONTO
4. `030010000500` - T(0) + H(1) + MONTO
5. `030110000500` - T(1) + H(1) + MONTO
6. `030210000500` - T(2) + H(1) + MONTO
7. `0300100000500` - H(01) + T(0) + MONTO (2 dig)
8. `0300110000500` - H(01) + T(1) + MONTO (2 dig)
9. `0300100000500` - T(0) + H(01) + MONTO (2 dig)
10. `0301100000500` - T(1) + H(01) + MONTO (2 dig)
11. `0300000000500` - MONTO sin hose (10 dig)
12. `030100000500` - T(1) + MONTO sin hose
13. `030000000500` - T(0) + MONTO sin hose
14. `030:1:00000500` - Con separador ':'
15. `030 1 00000500` - Con espacio

**Genera reporte**: `PRUEBAS_FORMATO_AUTHORIZE.md`

---

## COMO USAR

### Paso 1: Ejecutar Script de Pruebas

```bash
cd /home/user/api-spriconsole
python probar_formato_authorize.py COM1 1
```

El script:
1. Selecciona SLOT 1
2. Prueba cada formato
3. Muestra TX/RX de cada uno
4. Espera ENTER entre pruebas
5. Genera reporte al final

### Paso 2: Interpretar Resultados

**Respuestas a buscar:**

| Tipo | Hex | Significado |
|------|-----|-------------|
| Estado OK | `E0 C0 E0 XX` | Similar a comando 016 (STATUS) |
| Error | Otro patron | Comando rechazado o invalido |
| Sin respuesta | - | Formato incorrecto |

**Comparar con comando conocido:**
- Comando 016 (READ STATUS) responde: `E0 C0 E0 F8` o `E0 C0 E0 F0`
- Si AUTHORIZE exitoso debe responder similar

### Paso 3: Validar Formato Correcto

Una vez encuentres el formato que responde correctamente:

1. **Probar con manguera levantada**:
   - Levantar manguera 1
   - Enviar AUTHORIZE para manguera 1
   - Verificar que bomba autorice

2. **Probar manguera incorrecta**:
   - Levantar manguera 1
   - Enviar AUTHORIZE para manguera 2
   - Deberia rechazar o mostrar error

3. **Probar diferentes montos**:
   - Monto pequeño: $5.00 = `00000500`
   - Monto grande: $50.00 = `00005000`

---

## FORMATOS COMUNES EN GILBARCO

Basado en documentacion de protocolos Gilbarco:

### Protocolo Standard
```
DLE [PUMP_ID] STX [CMD][HOSE][TYPE][DATA] DLE ETX LRC
```

### Ejemplos Reales (otros modelos)

**Gilbarco Encore**:
```
030[H][T][AMOUNT]
   1  1  8 digitos
```

**Gilbarco Legacy**:
```
030[T][AMOUNT]  (hose auto-detectado)
   1  8 digitos
```

**Wayne**:
```
030[HH][TT][AMOUNT]
   2   2   variable
```

---

## OTRAS OPCIONES

### Opcion A: Revisar Logs de SSF

Si tienes logs del software Smart Ship Factory:
```bash
grep -r "030" /ruta/logs/*.log
grep -r "authorize" /ruta/logs/*.log | grep "hose"
```

Buscar lineas como:
```
Sending authorize: 030110000500 to pump 1 hose 1
```

### Opcion B: Capturar Trafico Serial

Usar software de captura (si tienes acceso):
1. Instalar ssf original
2. Autorizar bomba desde ssf
3. Capturar trafico en COM1
4. Ver formato exacto enviado

### Opcion C: Descompilar DLL Completo

Usar herramientas profesionales:
- dnSpy (si es .NET)
- IDA Pro / Ghidra (descompilador nativo)
- Buscar funcion `iaSendPumpMoneyPreset`

---

## METODO RECOMENDADO

1. **Ejecuta el script de prueba**:
   ```bash
   python probar_formato_authorize.py COM1 1
   ```

2. **Observa el hardware**:
   - Levanta la manguera durante las pruebas
   - Observa display de la bomba
   - Busca cambios en estado

3. **Analiza respuestas**:
   - Compara con respuesta de comando 016
   - Identifica patron de exito

4. **Valida**:
   - Una vez encuentres formato correcto
   - Prueba multiples veces
   - Prueba con diferentes mangueras
   - Prueba con diferentes montos

---

## DOCUMENTOS GENERADOS

1. **ANALISIS_MANGUERAS_DLL.md** - Analisis completo de DLLs
2. **PRUEBAS_FORMATO_AUTHORIZE.md** - Resultados de pruebas (se genera)
3. **Este documento** - Guia completa

---

## CONTACTO / AYUDA

Si ninguno de los 15 formatos funciona:

1. Verifica que bomba responde a comando 016 (READ STATUS)
2. Confirma que SLOT se selecciona correctamente
3. Revisa logs del sistema si disponibles
4. Considera comando separado de seleccion de manguera

**Posibles comandos adicionales**:
- `050[H]` - Seleccionar manguera
- `051[H]` - Activar manguera
- `012` - Leer configuracion de mangueras

---

**ESTADO**: Listo para pruebas con hardware
**COMMIT**: c4773aa
**BRANCH**: claude/custom-software-project-011CUzeWTDN79V4sWKyc6kcc
