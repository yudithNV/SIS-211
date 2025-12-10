# Bits & Grills (Panel Administrativo)

Proyecto: Bits & Grills (Panel Administrativo) — aplicación Java Swing para gestión de restaurante.

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

Usa exactamente este comando (cmd.exe):

```bat
cd "c:\Users\noa_y\Desktop\proyecto_Est\ProyectoInf113-prueba\Restaurante" && java -cp "bin;bin\librerias\*" restaurante.Restaurante
```

Si no tienes `bin` actualizado, compila primero desde `src`:

```bat
cd "c:\Users\noa_y\Desktop\proyecto_Est\ProyectoInf113-prueba\Restaurante\src"
javac --release 21 -encoding UTF-8 -cp ".;../bin/librerias/*" -d ../bin Vista/Sistema.java db_clases/*.java proyecto_cvs/*.java interfaces/*.java restaurante/*.java
```

---

Si quieres que agregue instrucciones para crear o restaurar `bd_restaurante.sql` dentro de este README, dímelo y lo añado.

