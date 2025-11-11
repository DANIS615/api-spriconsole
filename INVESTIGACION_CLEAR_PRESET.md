# INVESTIGACION: COMANDO CLEAR PRESET

Busqueda de comandos para limpiar preset en bombas Gilbarco

---

## PROBLEMA

Despues de enviar AUTHORIZE (comando 030), la bomba tiene un preset activo.
Si intentamos autorizar nuevamente sin limpiar, puede fallar o mantener el preset anterior.

**Necesitamos**: Comando para limpiar/resetear el preset antes de nueva autorizacion.

---

## COMANDOS GILBARCO ESTANDAR RELACIONADOS

| Comando | Funcion | Probabilidad |
|---------|---------|-------------|
| **032** | CLEAR SALE - Limpia venta y preset | ALTA |
| **035** | Posible CLEAR PRESET dedicado | MEDIA |
| **036** | CANCEL AUTHORIZATION | MEDIA |
| **031** | STOP - Detener despacho | BAJA (solo detiene) |
| **000** | RESET - Reset total | BAJA (muy agresivo) |

---

## SECUENCIA RECOMENDADA

### Opcion 1: Usar CLEAR SALE (032)

```
1. SLOT 1:        01 00 -> FE 00
2. CLEAR SALE:    10 31 02 30 33 32 10 03 XX
3. Esperar 300ms
4. AUTHORIZE:     10 31 02 30 33 30 ... 10 03 XX
```

### Opcion 2: Verificar Estado Primero

```
1. SLOT 1:        01 00 -> FE 00
2. READ STATUS:   10 31 02 30 31 36 10 03 FC
3. Si RX indica preset activo:
   3a. CLEAR SALE: 10 31 02 30 33 32 10 03 XX
4. AUTHORIZE:     10 31 02 30 33 30 ... 10 03 XX
```

---

## COMO IDENTIFICAR PRESET ACTIVO

Respuesta de comando 016 (READ STATUS):

```
E0 C0 E0 F8  -> Idle (sin preset)
E0 C0 E0 F0  -> Manguera arriba (sin preset)
E0 C0 E0 XX  -> Posible preset activo (XX diferente)
```

Comparar byte 3 (ultimo byte):
- Bit cambios pueden indicar estado de autorizacion
- Si es diferente de F8/F0, posible preset activo

---

## SCRIPTS DE PRUEBA

1. **probar_clear_preset.py** - Prueba comandos 032, 035, 036
2. **probar_formato_authorize.py** - Incluye CLEAR antes de AUTHORIZE

---

## PROXIMO PASO

1. Ejecutar: `python probar_clear_preset.py`
2. Observar cual comando limpia el preset
3. Verificar con 016 que estado vuelve a idle
4. Integrar en secuencia de AUTHORIZE

