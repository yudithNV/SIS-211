# Manual de Usuario - Sistema de Gestión de Restaurante "Bits & Grills"

## Guía Rápida de Uso

### 📋 Menú Principal (Panel Izquierdo)

El sistema tiene 5 secciones principales accesibles desde el panel lateral:

---

## 🍽️ **PLATOS**
**Función:** Gestionar el menú de platos del día

### ¿Qué puedes hacer aquí?
- **Agregar nuevos platos** al menú del día
- **Editar** precios y nombres de platos existentes
- **Eliminar** platos que ya no se ofrecen
- **Ver lista** de todos los platos disponibles

### Cómo usar:
1. **Para AGREGAR un plato nuevo:**
   - Escribe el nombre del plato (ej: "Hamburguesa Clásica")
   - Escribe el precio (ej: 35.00)
   - Haz clic en el botón **Guardar** (icono de diskette)

2. **Para EDITAR un plato:**
   - Haz clic sobre el plato en la tabla de la derecha
   - Los datos aparecerán en el formulario de la izquierda
   - Modifica el nombre o precio
   - Haz clic en el botón **Actualizar** (icono de lápiz)

3. **Para ELIMINAR un plato:**
   - Haz clic sobre el plato en la tabla
   - Haz clic en el botón **Eliminar** (icono de tacho de basura)
   - Confirma la eliminación

4. **Para LIMPIAR el formulario:**
   - Haz clic en el botón **Nuevo** (icono de documento)

### Columnas de la tabla:
- **ID:** Número único del plato
- **DESCRIPCIÓN:** Nombre del plato
- **PRECIO:** Precio en Bs. (Bolivianos)

---

## 🏛️ **SALAS**
**Función:** Ver y gestionar las salas/áreas del restaurante

### ¿Qué puedes hacer aquí?
- **Ver todas las salas** disponibles (Sala Principal, Sala VIP, Terraza)
- **Ver las mesas** de cada sala
- **Crear nuevas salas**
- **Tomar pedidos** haciendo clic en una mesa

### Cómo usar:
1. **Vista Principal:**
   - Verás botones grandes con el nombre de cada sala
   - Cada botón muestra cuántas mesas tiene la sala

2. **Para TOMAR un PEDIDO:**
   - Haz clic en una sala (ej: "Sala Principal")
   - Se abrirá la vista de mesas
   - Haz clic en el número de mesa donde está el cliente
   - Se abrirá la pantalla para agregar platos al pedido

3. **Para AGREGAR una sala nueva:**
   - Completa el formulario en la parte inferior
   - Nombre de la sala (ej: "Terraza 2")
   - Cantidad de mesas (ej: 6)
   - Haz clic en **Registrar**

---

## 🛎️ **PEDIDOS** (Historial de Ventas)
**Función:** Ver el historial completo de todos los pedidos realizados

### ¿Qué puedes hacer aquí?
- **Ver todos los pedidos** (pendientes y finalizados)
- **Ver detalles** de un pedido específico
- **Generar PDF** de un pedido
- **Finalizar pedidos** pendientes

### Columnas de la tabla:
- **Id:** Número único del pedido
- **Sala:** En qué sala se realizó
- **Atendido:** Usuario que tomó el pedido
- **N° Mesa:** Número de mesa
- **Fecha:** Fecha y hora del pedido
- **Total:** Monto total en Bs.
- **Estado:** PENDIENTE o FINALIZADO

### Cómo usar:
1. **Para ver detalles de un pedido:**
   - Haz clic sobre el pedido en la tabla
   - Se abrirá automáticamente la pestaña "Finalizar Pedido" con los detalles

2. **Para finalizar un pedido:**
   - Haz clic en el pedido en la tabla
   - Revisa los detalles en "Finalizar Pedido"
   - Haz clic en el botón **Finalizar**
   - Se generará automáticamente el PDF

3. **Para generar PDF de un pedido:**
   - Selecciona el pedido
   - Haz clic en el botón **PDF** (icono rojo)
   - El PDF se guardará en tu carpeta "Documentos"

---

## ⚙️ **CONFIG** (Configuración)
**Función:** Configurar los datos del restaurante

### ¿Qué puedes hacer aquí?
- **Editar información** del restaurante (nombre, RUC, teléfono, dirección)
- **Personalizar mensaje** que aparece en los tickets/facturas

### Datos que puedes configurar:
- **RUC:** Número de identificación tributaria
- **Nombre:** Nombre del restaurante
- **Teléfono:** Número de contacto
- **Dirección:** Ubicación del restaurante
- **Mensaje:** Mensaje de despedida en los tickets (ej: "¡Gracias por su preferencia!")

### Cómo usar:
1. Modifica los campos que desees cambiar
2. Haz clic en el botón **Actualizar**
3. Los cambios se verán reflejados en los PDFs generados

---

## 👥 **USUARIOS**
**Función:** Gestionar usuarios que pueden acceder al sistema

### ¿Qué puedes hacer aquí?
- **Ver lista** de todos los usuarios
- **Crear nuevos usuarios** (meseros, administradores)
- **Asignar roles** (Administrador o Asistente)

### Roles disponibles:
- **ADMINISTRADOR:** Acceso total al sistema
- **ASISTENTE:** Acceso limitado (no puede editar salas ni configuración)

### Cómo usar:
1. **Para CREAR un usuario:**
   - Completa el formulario (nombre, correo, contraseña, rol)
   - Haz clic en **Registrar**

2. **Ver usuarios existentes:**
   - Todos los usuarios aparecen en la tabla de la derecha

---

## 🔄 Flujo de Trabajo Típico

### Escenario: Tomar un pedido de un cliente

1. **Ir a SALAS** (botón lateral izquierdo)
2. **Seleccionar la sala** donde está el cliente (ej: "Sala Principal")
3. **Hacer clic en el número de mesa** (ej: Mesa 3)
4. Se abre la pantalla "Realizar Pedido"
5. **Buscar y agregar platos:**
   - En la parte superior izquierda aparecen los platos disponibles
   - Haz clic en el plato que el cliente quiere
   - Se agregará a la tabla de "Pedido Actual"
   - Puedes agregar comentarios (ej: "Sin cebolla")
6. **Revisar el pedido:**
   - La tabla central muestra todos los items
   - Se calcula automáticamente el total
7. **Generar el pedido:**
   - Haz clic en **Generar Pedido**
   - El pedido quedará registrado como "PENDIENTE"
8. **Cuando el cliente pague:**
   - Ir a **PEDIDOS**
   - Buscar el pedido en la lista
   - Hacer clic sobre él
   - Hacer clic en **Finalizar**
   - Se generará automáticamente el PDF del ticket

---

## 💡 Consejos y Buenas Prácticas

### Para Platos:
- ✅ Actualiza los platos cada día según lo que haya disponible
- ✅ Usa nombres descriptivos (ej: "Hamburguesa con Queso" en vez de solo "Hamburguesa")
- ✅ Verifica los precios antes de agregarlos

### Para Pedidos:
- ✅ Siempre verifica el número de mesa antes de confirmar
- ✅ Usa el campo "Comentario" para notas especiales del cliente
- ✅ Finaliza los pedidos cuando el cliente pague para mantener el historial limpio

### Para Salas:
- ✅ Crea salas que correspondan a áreas físicas reales del restaurante
- ✅ Indica correctamente la cantidad de mesas de cada sala

---

## ❓ Problemas Comunes

### "No veo platos en la lista"
**Solución:** Los platos se filtran por fecha. Solo se muestran los platos del día actual. Ve a "PLATOS" y agrega platos nuevos.

### "No puedo editar Salas o Config"
**Solución:** Solo los usuarios con rol ADMINISTRADOR pueden acceder a estas funciones. Si eres Asistente, pide a un administrador que te cambie el rol.

### "El PDF no se genera"
**Solución:** Verifica que el pedido esté seleccionado (haz clic sobre él en la tabla). El PDF se guarda automáticamente en tu carpeta "Documentos" con el nombre "pedido.pdf".

---

## 🔐 Credenciales de Acceso

### Usuario de prueba:
- **Correo:** felipe@gmail.com
- **Contraseña:** felipe
- **Rol:** ADMINISTRADOR

---

## 📞 Soporte

Si tienes dudas adicionales sobre el uso del sistema, contacta al administrador del sistema o consulta la documentación técnica en el archivo README.md del proyecto.

---

**Última actualización:** 10 de Diciembre, 2025
