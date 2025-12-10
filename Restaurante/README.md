# Sistema de Gestión de Restaurante

## Configuración de Base de Datos

El sistema está configurado para conectarse a PostgreSQL con los siguientes parámetros:
- **Base de datos:** `bd_restaurante`
- **Host:** `localhost`
- **Puerto:** `5432`
- **Usuario:** `postgres`
- **Contraseña:** `admin`

## Estructura del Proyecto

```
Restaurante/
├── bin/                    # Clases compiladas
│   └── librerias/         # Librerías JAR necesarias
├── src/                   # Código fuente
│   ├── db_clases/        # Clases de acceso a datos
│   ├── proyecto_cvs/     # Modelos de negocio
│   ├── Vista/            # Interfaz gráfica (Swing)
│   ├── restaurante/      # Clase principal
│   └── librerias/        # Librerías JAR (fuente)
└── run.bat               # Script para ejecutar la aplicación
```

## Dependencias

- **PostgreSQL JDBC Driver** (postgresql-42.7.1.jar)
- **iText PDF** (itextpdf-5.5.1.jar) - para generación de reportes
- **AbsoluteLayout** (AbsoluteLayout.jar) - para componentes NetBeans

## Cómo Ejecutar

### Opción 1: Usar el script run.bat
```cmd
cd Restaurante
run.bat
```

### Opción 2: Línea de comandos
```cmd
cd Restaurante
java -cp "bin;bin\librerias\*" restaurante.Restaurante
```

### Verificar Conexión a Base de Datos
```cmd
cd Restaurante
testconn.bat
```

## Compilación

Si necesitas recompilar el proyecto:
```cmd
cd Restaurante
dir /b /s src\*.java > sources.txt
javac --release 21 -cp "bin;bin\librerias\*" -d bin @sources.txt
```

## Notas Importantes

1. **Base de Datos:** Asegúrate de que PostgreSQL esté corriendo y que la base de datos `bd_restaurante` exista con las tablas necesarias:
   - `usuarios`
   - `platos`
   - `pedidos`
   - `detalle_pedidos`
   - `salas`
   - `restaurante` (o `config`)
   - `facturas`

2. **Credenciales:** Las credenciales están configuradas en `src/db_clases/Conexion.java`. Para mayor seguridad, considera moverlas a un archivo de configuración externo.

3. **Java Version:** El proyecto requiere Java 21 o superior.

## Migración desde MySQL

El proyecto fue migrado de MySQL a PostgreSQL. Los cambios principales incluyen:
- URL JDBC actualizada de `jdbc:mysql://` a `jdbc:postgresql://`
- Driver actualizado de `mysql-connector` a `postgresql`
- Unificación de conexiones para usar la clase `Conexion` centralizada

## Troubleshooting

- **"No suitable driver":** Verifica que `postgresql-42.7.1.jar` esté en `bin\librerias\`
- **"Connection refused":** Verifica que PostgreSQL esté corriendo en el puerto 5432
- **"Authentication failed":** Revisa las credenciales en `Conexion.java`
- **"Database does not exist":** Crea la base de datos `bd_restaurante` en PostgreSQL
