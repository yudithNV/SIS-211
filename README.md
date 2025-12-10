# Bits & Grills (Panel Administrativo)

Proyecto: Gestión de restaurante (Panel Administrativo) 
## Requisitos

- Java: JDK 21 instalado.
- PostgreSQL: servidor local (ej. `localhost:5432`).
- JDBC driver: `postgresql-42.7.1.jar` en `librerias` o `bin/librerias`.
- Compilador: `javac` (incluido en JDK).
- Herramienta cliente: `psql` o `pgAdmin` para ejecutar el script SQL.

## Archivos importantes

- `bd_restaurante.sql` : volcado/backup de la base de datos que quieres restaurar.
- `init_db_postgres.sql` : (opcional) script con esquema y datos de ejemplo.
- `bin/` : carpeta con clases compiladas.
- `bin/librerias/` : debe contener `postgresql-42.7.1.jar` y otras librerías.
- `src/` : código fuente Java.
- `src/db_clases/Conexion.java` : configuración de conexión JDBC (ajusta usuario/clave si es necesario).

## Ejecutar la aplicación (Windows)


1.  **Abre la terminal (cmd.exe)** en la carpeta del proyecto **Restaurante**.
2.  **Ejecuta:**

```bat
cd Restaurante
java -cp "bin;bin\librerias\*" restaurante.Restaurante
```




