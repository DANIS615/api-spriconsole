# 🎯 OPCIÓN HÍBRIDA - PLAN DE ACCIÓN

## 📊 SITUACIÓN ACTUAL

### Descubrimientos:
1. ✅ GPBox usa COM1 @ 115200 bps
2. ✅ DLL es C++ 32-bit
3. ✅ Tienes Python 32-bit disponible
4. ✅ Python actual (64-bit) puede capturar tráfico serial
5. ❌ Protocolo GPBox es desconocido (no es Gilbarco directo)

---

## 🚀 PLAN HÍBRIDO: 2 CAMINOS EN PARALELO

### CAMINO A: Usar DLL 32-bit (Funciona YA)

**Requisitos:**
- Python 32-bit
- ctypes (incluido en Python)
- DLL: `SSF.FC.Comm.GPBox.D.dll`

**Pasos:**
```bash
# 1. Ubicar Python 32-bit
# ¿Dónde está instalado tu Python 32-bit?

# 2. Con Python 32-bit, ejecutar:
python explorar_dll_gpbox_ctypes.py

# 3. Si funciona, crear wrapper
python wrapper_dll_gpbox_32bit.py

# 4. Probar operaciones básicas
python test_dll_autorizar_bomba.py
```

---

### CAMINO B: Capturar Protocolo (Aprender para futuro)

**Requisitos:**
- Python cualquier arquitectura
- pyserial
- Smart Ship Factory funcionando

**Pasos:**
```bash
# 1. Ejecutar capturador (con Python 64-bit actual)
python capturar_protocolo_gpbox.py

# 2. En otra ventana, abrir Smart Ship Factory

# 3. Realizar operaciones:
   - Autorizar bomba 1 con $50
   - Leer estado de bomba 1
   - Detener bomba 1
   - Reset bomba 1
   - Cambiar precio

# 4. Analizar capturas
ls capturas_protocolo/
```

---

## 📋 RECOMENDACIÓN: HACER AMBOS

### Fase 1: CAMINO A (HOY - 2 horas)

**Objetivo:** Tener sistema funcionando con DLL

1. **Identificar Python 32-bit**
   ```bash
   # Buscar instalaciones de Python
   dir /s /b C:\Python*.exe
   # O
   dir /s /b "C:\Program Files (x86)\Python*.exe"
   ```

2. **Probar DLL con Python 32-bit**
   ```bash
   # Usar ruta completa a Python 32-bit
   C:\ruta\a\python32\python.exe explorar_dll_gpbox_ctypes.py
   ```

3. **Si funciona: crear wrapper simple**
   ```python
   # wrapper_gpbox.py
   import ctypes

   dll = ctypes.CDLL("SSF.FC.Comm.GPBox.D.dll")

   # Inicializar
   init = dll.ssfPIInitialize
   init.restype = ctypes.c_int
   init.argtypes = [ctypes.c_char_p]

   result = init(b"C:\\Windows\\CEM44\\gpbox.ini")
   print(f"Init: {result}")
   ```

4. **Probar con bomba real**

---

### Fase 2: CAMINO B (PARALELO - mientras pruebas DLL)

**Objetivo:** Entender el protocolo para independencia futura

1. **Ejecutar capturador**
   ```bash
   python capturar_protocolo_gpbox.py
   # Puerto: COM1
   # Baudrate: 115200
   ```

2. **Usar Smart Ship Factory**
   - Autorizar bomba → Captura guardada
   - Leer estado → Captura guardada
   - Cada operación → Nueva captura

3. **Analizar capturas**
   ```bash
   # Ver archivo de captura
   type capturas_protocolo\captura_gpbox_*.log
   ```

4. **Documentar protocolo**
   - Comando autorizar: `XX XX XX ...`
   - Respuesta: `YY YY YY ...`
   - Patrón identificado

---

## 🎯 QUÉ HACER AHORA

### Opción 1: Si sabes dónde está Python 32-bit

```bash
# Ejecutar con Python 32-bit
"C:\ruta\python32\python.exe" explorar_dll_gpbox_ctypes.py
```

### Opción 2: Si no sabes dónde está Python 32-bit

```bash
# Buscar Python 32-bit
dir /s /b C:\Python*.exe 2>nul
dir /s /b "C:\Program Files (x86)\Python*\python.exe" 2>nul

# Ver arquitectura de cada uno encontrado
python.exe -c "import sys; print(sys.maxsize > 2**32 and '64-bit' or '32-bit')"
```

### Opción 3: Empezar con captura (no requiere Python 32-bit)

```bash
# Usar Python 64-bit actual para capturar
python capturar_protocolo_gpbox.py

# Luego usar Smart Ship Factory
# Todo el tráfico se captura automáticamente
```

---

## 📊 VENTAJAS DE CADA CAMINO

### CAMINO A (DLL):
- ✅ Funciona inmediatamente
- ✅ No necesitas entender el protocolo
- ✅ Ya probado y estable
- ❌ Dependencia de DLL 32-bit
- ❌ Solo Windows

### CAMINO B (Captura):
- ✅ Aprendes el protocolo real
- ✅ Independencia futura
- ✅ Funciona en cualquier OS
- ❌ Requiere análisis manual
- ❌ Toma más tiempo (días)

---

## 🔧 SCRIPTS DISPONIBLES

1. **`explorar_dll_gpbox_ctypes.py`**
   - Explora DLL con Python 32-bit
   - Identifica funciones disponibles

2. **`capturar_protocolo_gpbox.py`**
   - Captura tráfico serial
   - Funciona con Python 64-bit

3. **`diagnostico_bomba_auto.py`**
   - Ya ejecutado
   - Identificó COM1 @ 115200 bps

4. **`usar_dll_ssf.py`** (ya existe)
   - Ejemplo de uso de DLLs
   - Revisar para ideas

---

## 💡 PRÓXIMO PASO INMEDIATO

**DIME:**
1. ¿Dónde está instalado tu Python 32-bit?
2. ¿O prefieres empezar con captura de protocolo?

**ENTONCES:**
- **Si tienes Python 32-bit:** → Probar DLL (CAMINO A)
- **Si no lo encuentras:** → Capturar protocolo (CAMINO B)
- **¿Quieres ambos?:** → Captura mientras buscas Python 32-bit

---

## 📝 RESUMEN

```
SITUACIÓN:
  [✓] Protocolo GPBox identificado (COM1, 115200 bps)
  [✓] DLL disponible (32-bit)
  [✓] Capturador de protocolo creado
  [?] Python 32-bit - ubicación desconocida

OPCIONES:
  A) Usar DLL con Python 32-bit → Funciona HOY
  B) Capturar protocolo → Independencia FUTURA
  ★) AMBAS → Lo mejor de dos mundos

SIGUIENTE PASO:
  → Encontrar Python 32-bit
  → O empezar con captura de protocolo
```

---

**Creado:** 2025-11-10
**Estado:** Listo para implementar
**Decisión pendiente:** ¿Cuál camino seguir primero?
