import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class InitDatabase {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        String[] sqlCommands = {
            // Tabla usuarios
            "CREATE TABLE IF NOT EXISTS usuarios (" +
            "id SERIAL PRIMARY KEY, " +
            "nombre VARCHAR(100) NOT NULL, " +
            "correo VARCHAR(100) NOT NULL UNIQUE, " +
            "pass VARCHAR(100) NOT NULL, " +
            "rol VARCHAR(50) NOT NULL)",
            
            // Tabla restaurante
            "CREATE TABLE IF NOT EXISTS restaurante (" +
            "id SERIAL PRIMARY KEY, " +
            "ruc VARCHAR(50), " +
            "nombre VARCHAR(100) NOT NULL, " +
            "telefono VARCHAR(20), " +
            "direccion VARCHAR(200), " +
            "mensaje TEXT)",
            
            // Tabla salas
            "CREATE TABLE IF NOT EXISTS salas (" +
            "id SERIAL PRIMARY KEY, " +
            "nombre VARCHAR(100) NOT NULL)",
            
            // Tabla platos
            "CREATE TABLE IF NOT EXISTS platos (" +
            "id SERIAL PRIMARY KEY, " +
            "nombre VARCHAR(100) NOT NULL, " +
            "precio DECIMAL(10,2) NOT NULL, " +
            "fecha DATE NOT NULL)",
            
            // Tabla pedidos
            "CREATE TABLE IF NOT EXISTS pedidos (" +
            "id SERIAL PRIMARY KEY, " +
            "id_sala INTEGER NOT NULL REFERENCES salas(id), " +
            "num_mesa INTEGER NOT NULL, " +
            "fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP, " +
            "total DECIMAL(10,2) NOT NULL, " +
            "usuario VARCHAR(100) NOT NULL, " +
            "estado VARCHAR(20) DEFAULT 'PENDIENTE')",
            
            // Tabla detalle_pedidos
            "CREATE TABLE IF NOT EXISTS detalle_pedidos (" +
            "id SERIAL PRIMARY KEY, " +
            "nombre VARCHAR(100) NOT NULL, " +
            "precio DECIMAL(10,2) NOT NULL, " +
            "cantidad INTEGER NOT NULL, " +
            "comentario TEXT, " +
            "id_pedido INTEGER NOT NULL REFERENCES pedidos(id))",
            
            // Tabla facturas
            "CREATE TABLE IF NOT EXISTS facturas (" +
            "id SERIAL PRIMARY KEY, " +
            "f_emision VARCHAR(50), " +
            "monto_total DECIMAL(10,2) NOT NULL, " +
            "id_pedido INTEGER REFERENCES pedidos(id), " +
            "id_itemPedido INTEGER REFERENCES detalle_pedidos(id))",
            
            // Insertar usuario de prueba
            "INSERT INTO usuarios (nombre, correo, pass, rol) " +
            "VALUES ('Felipe Admin', 'felipe@gmail.com', 'felipe', 'ADMINISTRADOR') " +
            "ON CONFLICT (correo) DO NOTHING",
            
            // Insertar configuración
            "INSERT INTO restaurante (ruc, nombre, telefono, direccion, mensaje) " +
            "VALUES ('123456789', 'Restaurante El Buen Sabor', '591-12345678', 'Av. Principal #123', 'Gracias por su preferencia!') " +
            "ON CONFLICT DO NOTHING",
            
            // Insertar salas
            "INSERT INTO salas (nombre) VALUES ('Sala Principal') ON CONFLICT DO NOTHING",
            "INSERT INTO salas (nombre) VALUES ('Sala VIP') ON CONFLICT DO NOTHING",
            "INSERT INTO salas (nombre) VALUES ('Terraza') ON CONFLICT DO NOTHING",
            
            // Insertar platos
            "INSERT INTO platos (nombre, precio, fecha) VALUES ('Hamburguesa Clásica', 35.00, CURRENT_DATE) ON CONFLICT DO NOTHING",
            "INSERT INTO platos (nombre, precio, fecha) VALUES ('Pizza Margarita', 45.00, CURRENT_DATE) ON CONFLICT DO NOTHING",
            "INSERT INTO platos (nombre, precio, fecha) VALUES ('Ensalada César', 28.00, CURRENT_DATE) ON CONFLICT DO NOTHING",
            "INSERT INTO platos (nombre, precio, fecha) VALUES ('Pasta Carbonara', 40.00, CURRENT_DATE) ON CONFLICT DO NOTHING",
            "INSERT INTO platos (nombre, precio, fecha) VALUES ('Lomo Saltado', 50.00, CURRENT_DATE) ON CONFLICT DO NOTHING"
        };
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("Conectado a PostgreSQL correctamente.");
            System.out.println("Creando tablas...");
            
            for (int i = 0; i < sqlCommands.length; i++) {
                try {
                    stmt.execute(sqlCommands[i]);
                    System.out.println("✓ Comando " + (i+1) + " ejecutado correctamente");
                } catch (Exception e) {
                    System.out.println("✗ Error en comando " + (i+1) + ": " + e.getMessage());
                }
            }
            
            System.out.println("\n¡Base de datos inicializada correctamente!");
            System.out.println("Usuario de prueba:");
            System.out.println("  Correo: felipe@gmail.com");
            System.out.println("  Contraseña: felipe");
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
