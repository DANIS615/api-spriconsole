# PROBLEMA CON AUTHORIZE - ANALISIS Y SOLUCIONES

**Fecha**: 11 Noviembre 2025
**Estado**: AUTHORIZE no funciona correctamente - Investigacion en curso

---

## PROBLEMA DETECTADO

### Sintomas

Usuario reporta: "no hizo nada lo que dice el test"

**Evidencia del test**:
```
1. Respuesta de AUTHORIZE: e0e0e0fe
   - Byte 3 = FE (valor NUEVO, no documentado)

2. Status despues de AUTHORIZE oscila:
   - e0c0e0f0 (sin preset, manguera levantada)
   - e0c0e0f8 (sin preset, manguera colgada)
   - e0e0e0f0 (con preset, manguera levantada)
   - e0e0e0f8 (con preset, manguera colgada)

3. Preset inestable:
   - Aparece y desaparece aleatoriamente
   - No se mantiene activo

4. Byte 3 cambia erraticamente:
   - Cambia entre F8/F0/FE sin razon aparente
   - Usuario no esta moviendo la manguera
```

### Conclusion

**El formato del comando AUTHORIZE es INCORRECTO**

El comando que estamos enviando (`030110000500`) NO es el formato correcto, o:
- Los parametros estan en orden diferente
- Falta algun parametro
- El codigo base no es 030
- Requiere secuencia previa especial

---

## ANALISIS DEL PROBLEMA

### Hipotesis 1: Formato Incorrecto

**Formato que probamos**: `030[H][T][MONTO]`
- Ejemplo: `030110000500` = Hose 1, Tipo 1, $5.00

**Posibles formatos alternativos**:
1. `030[T][H][MONTO]` - Tipo antes de hose
2. `030[H][MONTO]` - Sin tipo, solo hose y monto
3. `031[H][T][MONTO]` - Codigo diferente
4. `030[HH][T][MONTO]` - Hose con 2 digitos
5. Formato completamente diferente

### Hipotesis 2: Respuesta FE

**Byte 3 = FE (11111110)** es un valor nuevo

**Comparacion**:
```
F8 (11111000) = Manguera colgada (conocido)
F0 (11110000) = Manguera levantada (conocido)
FE (11111110) = DESCONOCIDO

Diferencias:
  FE vs F8: Bits 1 y 2
  FE vs F0: Bits 1, 2 y 3
```

**Posibles significados de FE**:
1. **ACK/Confirmacion** - No es status, es confirmacion de comando
2. **Error** - Comando rechazado
3. **Estado transitorio** - Bomba procesando
4. **Multiples mangueras** - Conflicto de estado
5. **Respuesta diferente** - Formato especial para AUTHORIZE

### Hipotesis 3: Secuencia Incorrecta

**Quizas AUTHORIZE requiere**:
- Configuracion previa de bomba
- Comando especial antes de AUTHORIZE
- Parametros en registro/memoria primero
- Modo especial de operacion

---

## SOLUCIONES CREADAS

### 1. test_authorize_formatos_sistematico.py

**Proposito**: Probar sistematicamente diferentes formatos de AUTHORIZE

**Que hace**:
- Prueba 15 formatos diferentes
- Para cada formato:
  1. CLEAR PRESET
  2. Envia AUTHORIZE con formato de prueba
  3. Lee status 5 veces
  4. Analiza si preset queda activo y estable
  5. Clasifica: EXITOSO / PARCIAL / FALLIDO

**Formatos que prueba**:
1. `030110000500` - H(1) + T(1) + MONTO (original)
2. `030110000500` - T(1) + H(1) + MONTO (invertido)
3. `030100000500` - H(1) + MONTO (sin tipo)
4. `0300100000500` - H(01) + MONTO (hose 2 digitos)
5. `030100500` - MONTO 6 digitos
6. `0301050` - MONTO 4 digitos
7. `031110000500` - Codigo 031
8. `032110000500` - Codigo 032
9. `AUT110000500` - Formato Wayne
10. `030,1,1,00000500` - Con comas
11. `030 1 1 00000500` - Con espacios
12. Con bytes directos
13. Formato corto
14. Tipo 0 (full)
15. Tipo 2 (volume)

**Uso**:
```bash
python test_authorize_formatos_sistematico.py COM1 1
```

**Resultado esperado**:
- Identifica cual formato funciona
- Preset queda ESTABLE al 100%
- Bomba autoriza correctamente

---

### 2. analizar_respuesta_fe.py

**Proposito**: Investigar el significado de la respuesta `e0e0e0fe`

**Que hace**:
- Envia multiples comandos
- Analiza respuesta de cada uno
- Compara patrones de bytes
- Analiza bits de byte 3 = FE
- Compara FE con F8 y F0
- Genera hipotesis sobre significado

**Comandos que prueba**:
- 016 (READ STATUS)
- 033 (CLEAR PRESET)
- 030 (AUTHORIZE)
- 031-035 (Comandos adicionales)

**Uso**:
```bash
python analizar_respuesta_fe.py COM1 1
```

**Resultado esperado**:
- Entender que significa FE
- Identificar si es ACK, error, o estado
- Comparar respuestas entre comandos

---

### 3. sniffer_serial_gpbox.py

**Proposito**: **CAPTURAR TRAFICO DEL SOFTWARE SSF ORIGINAL**

**Que hace**:
- Lee puerto serial en tiempo real
- Captura todos los frames
- Identifica comandos SLOT y DLE-STX-ETX
- Analiza LRC
- **Detecta automaticamente AUTHORIZE**
- Decodifica parametros
- Guarda todo a archivo

**Como usar**:

**Opcion 1: Puerto libre**
```bash
# Cierra software SSF
python sniffer_serial_gpbox.py COM1 60

# Abre software SSF
# Ejecuta autorizacion en SSF
# Sniffer captura comandos
```

**Opcion 2: Puerto virtual (recomendado)**
```
1. Instalar com0com (emulador de puerto)
2. Crear par: COM5<->COM6
3. SSF -> COM5
4. Sniffer -> COM6
5. Captura trafico real sin interferir
```

**Opcion 3: Splitter hardware**
```
Usar splitter RS232 fisico
```

**Uso**:
```bash
python sniffer_serial_gpbox.py COM1 60
```

**Resultado esperado**:
- **Captura AUTHORIZE real del software SSF**
- **Descubre formato EXACTO**
- Guarda archivo con todos los comandos capturados

---

## PLAN DE ACCION

### Paso 1: Probar Formatos Sistematicamente

```bash
python test_authorize_formatos_sistematico.py COM1 1
```

**Objetivo**: Encontrar formato correcto por fuerza bruta

**Tiempo estimado**: 15-20 minutos

**Si encuentra formato exitoso**:
- Documentar formato correcto
- Actualizar todos los scripts
- Probar despacho completo
- **PROTOCOLO 100% COMPLETO**

**Si NO encuentra formato**:
- Pasar a Paso 2

---

### Paso 2: Analizar Respuesta FE

```bash
python analizar_respuesta_fe.py COM1 1
```

**Objetivo**: Entender que significa FE

**Tiempo estimado**: 5 minutos

**Si FE es confirmacion (ACK)**:
- Modificar interpretacion
- El comando SI esta funcionando
- Status se lee despues con 016

**Si FE es error**:
- Comando incorrecto o rechazado
- Pasar a Paso 3

---

### Paso 3: Capturar Trafico Original (DEFINITIVO)

**ESTA ES LA SOLUCION MAS CONFIABLE**

```bash
# Opcion A: Puerto libre
python sniffer_serial_gpbox.py COM1 60

# Opcion B: Puerto virtual (mejor)
# 1. Instalar com0com
# 2. Configurar COM5<->COM6
# 3. SSF en COM5
python sniffer_serial_gpbox.py COM6 60
# 4. Ejecutar autorizacion en SSF
```

**Objetivo**: Capturar comando AUTHORIZE real

**Tiempo estimado**: 10 minutos

**Resultado**: **FORMATO EXACTO CONFIRMADO AL 100%**

---

## HIPOTESIS ADICIONALES

### Posibilidad 1: Bomba Requiere Configuracion

Tal vez la bomba necesita:
- Estar en modo "remoto" (vs "local")
- Precio configurado previamente
- Productos configurados
- Estado inicial especifico

**Como verificar**:
- Revisar display de bomba
- Buscar menu de configuracion
- Manual de bomba Gilbarco

---

### Posibilidad 2: GPBox en Modo Especial

Tal vez el GPBox necesita:
- Comando de inicializacion
- Modo de operacion especial
- Configuracion de bombas

**Como verificar**:
- Manual de GPBox
- Comandos de configuracion
- Software de diagnostico de GPBox

---

### Posibilidad 3: Protocolo Diferente

Tal vez:
- No es protocolo Gilbarco standard
- Es protocolo custom del GPBox
- Versiones diferentes de protocolo

**Como verificar**:
- Capturar trafico original (Paso 3)
- Manual tecnico
- Contactar fabricante

---

## RECOMENDACION INMEDIATA

**EJECUTAR EN ESTE ORDEN**:

1. **test_authorize_formatos_sistematico.py** (15 min)
   - Rapido, puede encontrar formato correcto

2. **Si no funciona**: **sniffer_serial_gpbox.py** (10 min)
   - **SOLUCION DEFINITIVA**
   - Captura formato real del software SSF

3. **analizar_respuesta_fe.py** (5 min)
   - Para entender mejor el protocolo

---

## ARCHIVOS CREADOS

1. **test_authorize_formatos_sistematico.py**
   - Prueba 15 formatos diferentes
   - Analiza estabilidad de preset
   - Identifica formato correcto

2. **analizar_respuesta_fe.py**
   - Investiga respuesta FE
   - Compara con F8/F0
   - Genera hipotesis

3. **sniffer_serial_gpbox.py**
   - Captura trafico real
   - Decodifica comandos
   - Guarda a archivo
   - **SOLUCION DEFINITIVA**

4. **PROBLEMA_AUTHORIZE_Y_SOLUCIONES.md** (este archivo)
   - Analisis completo
   - Plan de accion
   - Documentacion

---

## ESTADO ACTUAL DEL PROTOCOLO

**Antes de este problema**: 95% completo

**Ahora**: 90% completo
- Comunicacion basica: 100%
- READ STATUS: 100%
- CLEAR PRESET: 100%
- **AUTHORIZE: 50%** (comando existe, formato incorrecto)
- Despacho: 70%

**Despues de resolver**: 100% completo

---

## PROXIMA SESION

**Objetivo**: Encontrar formato correcto de AUTHORIZE

**Herramientas**:
1. test_authorize_formatos_sistematico.py
2. sniffer_serial_gpbox.py
3. analizar_respuesta_fe.py

**Resultado esperado**: PROTOCOLO 100% FUNCIONAL

---

**FIN DEL DOCUMENTO**

**ACCION INMEDIATA**: Ejecutar test_authorize_formatos_sistematico.py o sniffer_serial_gpbox.py
