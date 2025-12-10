# RESTAURAR BD (bd_restaurante.sql)

Guía ultra-rápida para importar `bd_restaurante.sql`.

1. ⚙️ Preparación

- Crea BD Vacía: crea una nueva base de datos vacía en tu PostgreSQL (ej.: `bd_restaurante`).

2. 💻 Opción A: Terminal (`psql`)

- Navega: abre la terminal en la carpeta donde está el archivo `bd_restaurante.sql`.

- Comando: ejecuta la importación (reemplaza usuario/nombre de BD si es necesario):

```bat
psql -U [tu_usuario] -d [nombre_bd] < bd_restaurante.sql
```

Ejemplo (usuario `postgres`, BD `bd_restaurante`):

```bat
psql -U postgres -d bd_restaurante < bd_restaurante.sql
```

3. 🖥️ Opción B: pgAdmin (interfaz visual)

- Clic Derecho: en pgAdmin, haz clic derecho sobre la BD vacía.
- Selecciona: elige "Restore..."
- Configura:
  - **Filename:** selecciona `bd_restaurante.sql` (ruta al archivo).
  - **Format:** selecciona "Plain" (Plano).
- Ejecuta: haz clic en "Restore" o "OK" para iniciar la importación.

---

Notas rápidas:

- Si tu servidor PostgreSQL requiere host/puerto, añade `-h <host> -p <port>` al comando `psql`.
- Si el archivo `bd_restaurante.sql` fue exportado con privilegios o roles, puede ser necesario ejecutar la restauración con un usuario con permisos suficientes (ej.: `postgres`).
- Si hay errores de encoding, añade `--encoding=UTF8` o ajusta el cliente.

Si quieres, guardo también este contenido en `README.md` o en otro nombre que prefieras.