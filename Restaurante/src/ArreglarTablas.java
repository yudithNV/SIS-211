import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ArreglarTablas {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        String[] sqlCommands = {
            // Agregar columna mesas a la tabla salas
            "ALTER TABLE salas ADD COLUMN IF NOT EXISTS mesas INTEGER DEFAULT 4"
        };
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("Arreglando tablas...");
            
            for (int i = 0; i < sqlCommands.length; i++) {
                try {
                    stmt.execute(sqlCommands[i]);
                    System.out.println("✓ Comando " + (i+1) + " ejecutado correctamente");
                } catch (Exception e) {
                    System.out.println("✗ Error en comando " + (i+1) + ": " + e.getMessage());
                }
            }
            
            System.out.println("\n¡Tablas arregladas correctamente!");
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
