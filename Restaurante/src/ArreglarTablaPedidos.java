import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ArreglarTablaPedidos {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        String[] sqlCommands = {
            // Eliminar tabla vieja y recrearla con la estructura correcta
            "DROP TABLE IF EXISTS facturas CASCADE",
            "DROP TABLE IF EXISTS detalle_pedidos CASCADE",
            "DROP TABLE IF EXISTS pedidos CASCADE",
            
            // Recrear pedidos con la estructura que espera el código
            "CREATE TABLE pedidos (" +
            "id SERIAL PRIMARY KEY, " +
            "id_sala INTEGER NOT NULL REFERENCES salas(id), " +
            "num_mesa INTEGER NOT NULL, " +
            "fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP, " +
            "total DECIMAL(10,2) NOT NULL, " +
            "usuario VARCHAR(100) NOT NULL, " +
            "estado VARCHAR(20) DEFAULT 'PENDIENTE')",
            
            // Recrear detalle_pedidos
            "CREATE TABLE detalle_pedidos (" +
            "id SERIAL PRIMARY KEY, " +
            "nombre VARCHAR(100) NOT NULL, " +
            "precio DECIMAL(10,2) NOT NULL, " +
            "cantidad INTEGER NOT NULL, " +
            "comentario TEXT, " +
            "id_pedido INTEGER NOT NULL REFERENCES pedidos(id))",
            
            // Recrear facturas
            "CREATE TABLE facturas (" +
            "id SERIAL PRIMARY KEY, " +
            "f_emision VARCHAR(50), " +
            "monto_total DECIMAL(10,2) NOT NULL, " +
            "id_pedido INTEGER REFERENCES pedidos(id), " +
            "id_itemPedido INTEGER REFERENCES detalle_pedidos(id))"
        };
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("Arreglando tabla de pedidos...");
            
            for (int i = 0; i < sqlCommands.length; i++) {
                try {
                    stmt.execute(sqlCommands[i]);
                    System.out.println("✓ Comando " + (i+1) + " ejecutado correctamente");
                } catch (Exception e) {
                    System.out.println("✗ Error en comando " + (i+1) + ": " + e.getMessage());
                }
            }
            
            System.out.println("\n¡Tabla de pedidos arreglada correctamente!");
            System.out.println("Ahora puedes generar pedidos desde el sistema.");
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
