# Plantilla para Documentar Comandos Descubiertos

Usa esta plantilla para documentar cada comando que captures.

---

## Comando: [NOMBRE DEL COMANDO]

### 📋 Información General

**Operación**: [Descripción de lo que hace]
**Archivo de captura**: `capturas/XX_nombre_archivo.log`
**Timestamp**: [Fecha y hora de la captura]
**Bomba probada**: [Número de bomba]

### 📤 COMANDO (Master → GPBox)

#### Captura Raw (Hex)
```
10 02 01 XX YY [...datos...] ZZ 10 03
```

#### Desglose
```
10       : DLE (Data Link Escape)
02       : STX (Start of Text)
01       : ADDR (Dirección de bomba = 1)
XX       : CMD (Código de comando)
YY       : LEN (Longitud de datos)
[...]    : DATA (Datos del comando)
ZZ       : CHECKSUM (XOR de ADDR hasta último DATA)
10       : DLE
03       : ETX (End of Text)
```

#### Interpretación de DATA
```
Byte[0] = 0xXX : [Descripción]
Byte[1] = 0xYY : [Descripción]
Byte[2-5] = 0xZZZZZZZZ : [Descripción] (formato: big-endian, little-endian, BCD, etc.)
...
```

### 📥 RESPUESTA (GPBox → Master)

#### Captura Raw (Hex)
```
10 02 01 XX YY [...datos...] ZZ 10 03
```

#### Desglose
```
10       : DLE
02       : STX
01       : ADDR (Dirección de bomba)
XX       : CMD (Código de comando - mismo que request)
YY       : LEN (Longitud de respuesta)
[...]    : DATA (Datos de respuesta)
ZZ       : CHECKSUM
10       : DLE
03       : ETX
```

#### Interpretación de DATA
```
Byte[0] = 0xXX : [Descripción]
  Posibles valores:
  - 0x06 (ACK) : Éxito
  - 0x15 (NAK) : Error
  - Otros: [Describir]

[Si hay más datos...]
```

### 💻 Implementación Python

```python
def [nombre_funcion](self, pump_address: int, [parametros]) -> [tipo_retorno]:
    """
    [Descripción de la función]

    Args:
        pump_address: Dirección de la bomba (1-16)
        [otros parámetros]: [descripción]

    Returns:
        [Descripción del retorno]
    """
    # Construir datos del comando
    data = struct.pack('[formato]',
        [valores]
    )

    # Enviar comando
    message = self.build_message(
        pump_address,
        GilbarcoCommands.[COMANDO],
        data
    )

    if self.send_message(message):
        response = self.receive_message()
        if response:
            parsed = self.parse_response(response)
            if parsed and len(parsed['data']) >= [tamaño_esperado]:
                # Parsear respuesta
                [extraer_datos]
                return [resultado]

    return None  # o False, según corresponda
```

### ✅ Testing

**Resultado del test**:
- [ ] ✓ Comando enviado correctamente
- [ ] ✓ Respuesta recibida
- [ ] ✓ Checksum válido
- [ ] ✓ Operación exitosa en hardware

**Observaciones**:
- [Nota 1]
- [Nota 2]

### ⚠️ Casos de Error

**Error 1**: [Descripción]
- **Causa**: [Por qué ocurre]
- **Solución**: [Cómo resolverlo]

**Error 2**: [Descripción]
- **Causa**: [Por qué ocurre]
- **Solución**: [Cómo resolverlo]

### 📝 Notas Adicionales

- [Nota importante 1]
- [Nota importante 2]
- [Consideraciones especiales]

---

## Ejemplo Completo: Comando AUTHORIZE_PUMP

### 📋 Información General

**Operación**: Autorizar bomba para despachar con preset de monto
**Archivo de captura**: `capturas/01_autorizar_bomba1_50pesos.log`
**Timestamp**: 2025-11-10 10:23:45
**Bomba probada**: 1

### 📤 COMANDO (Master → GPBox)

#### Captura Raw (Hex)
```
10 02 01 05 0A 01 01 00 00 13 88 00 00 00 00 9A 10 03
```

#### Desglose
```
10       : DLE
02       : STX
01       : ADDR (Bomba 1)
05       : CMD (AUTHORIZE_PUMP)
0A       : LEN (10 bytes de datos)
01       : DATA[0] - Tipo preset
01       : DATA[1] - Nivel de precio
00 00 13 88 : DATA[2-5] - Monto (5000 centavos = $50.00)
00 00 00 00 : DATA[6-9] - Volumen (0 = sin límite)
9A       : CHECKSUM (XOR de 01 05 0A 01 01 00 00 13 88 00 00 00 00)
10       : DLE
03       : ETX
```

#### Interpretación de DATA
```
Byte[0] = 0x01 : Tipo de preset
  - 0x00 = Sin preset (full tank)
  - 0x01 = Preset por monto
  - 0x02 = Preset por volumen
  - 0x03 = Preset por monto Y volumen

Byte[1] = 0x01 : Nivel de precio (1-4)

Byte[2-5] = 0x00001388 : Monto en centavos (big-endian)
  5000 centavos = $50.00

Byte[6-9] = 0x00000000 : Volumen en décimas de litro (big-endian)
  0 = sin límite de volumen
```

### 📥 RESPUESTA (GPBox → Master)

#### Captura Raw (Hex)
```
10 02 01 05 01 06 03 10 03
```

#### Desglose
```
10       : DLE
02       : STX
01       : ADDR (Bomba 1)
05       : CMD (AUTHORIZE_PUMP)
01       : LEN (1 byte de datos)
06       : DATA[0] - ACK (éxito)
03       : CHECKSUM (XOR de 01 05 01 06)
10       : DLE
03       : ETX
```

#### Interpretación de DATA
```
Byte[0] = 0x06 : ACK - Autorización exitosa
  Otros valores posibles:
  - 0x15 (NAK) : Error en autorización
  - 0x?? : Otros códigos de error (por descubrir)
```

### 💻 Implementación Python

```python
def authorize_pump(self, pump_address: int, preset_amount: float = 0,
                  preset_volume: float = 0, price_level: int = 1) -> bool:
    """
    Autorizar bomba para despachar

    Args:
        pump_address: Dirección de la bomba (1-16)
        preset_amount: Monto preset en pesos (0 = sin límite)
        preset_volume: Volumen preset en litros (0 = sin límite)
        price_level: Nivel de precio (1-4)

    Returns:
        True si se autorizó correctamente, False en caso contrario
    """
    # Determinar tipo de preset
    preset_type = 0
    if preset_amount > 0:
        preset_type |= 1
    if preset_volume > 0:
        preset_type |= 2

    # Convertir valores
    amount_cents = int(preset_amount * 100)
    volume_tenths = int(preset_volume * 10)

    # Construir datos del comando
    data = struct.pack('>BB I I',
        preset_type,
        price_level,
        amount_cents,
        volume_tenths
    )

    # Enviar comando
    message = self.build_message(
        pump_address,
        GilbarcoCommands.AUTHORIZE_PUMP,
        data
    )

    if self.send_message(message):
        response = self.receive_message()
        if response:
            parsed = self.parse_response(response)
            if parsed and len(parsed['data']) >= 1:
                # Verificar ACK
                return parsed['data'][0] == 0x06

    return False
```

### ✅ Testing

**Resultado del test**:
- [x] ✓ Comando enviado correctamente
- [x] ✓ Respuesta recibida (ACK)
- [x] ✓ Checksum válido
- [x] ✓ Bomba autorizó correctamente en hardware
- [x] ✓ Display mostró el preset de $50.00

**Observaciones**:
- La bomba debe estar en estado IDLE
- Manguera debe estar colgada
- Si ya está autorizada, retorna NAK (0x15)

### ⚠️ Casos de Error

**Error 1**: Respuesta NAK (0x15)
- **Causa**: Bomba ya autorizada o en uso
- **Solución**: Enviar RESET primero, luego reintentar

**Error 2**: No hay respuesta
- **Causa**: Bomba desconectada o dirección incorrecta
- **Solución**: Verificar conexión física y dirección

**Error 3**: Manguera no se desbloquea
- **Causa**: Precio no configurado en esa manguera
- **Solución**: Configurar precio primero con WRITE_PRICE

### 📝 Notas Adicionales

- El preset se puede cancelar con RESET
- Si el despacho supera el preset, se detiene automáticamente
- El nivel de precio (1-4) corresponde a diferentes precios configurados
- Formato de monto y volumen es big-endian (MSB first)
