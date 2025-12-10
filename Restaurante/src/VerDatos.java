import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class VerDatos {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("=== USUARIOS ===");
            ResultSet rs = stmt.executeQuery("SELECT * FROM usuarios");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id") + 
                                 " | Nombre: " + rs.getString("nombre") + 
                                 " | Correo: " + rs.getString("correo") + 
                                 " | Rol: " + rs.getString("rol"));
            }
            
            System.out.println("\n=== SALAS ===");
            rs = stmt.executeQuery("SELECT * FROM salas");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id") + 
                                 " | Nombre: " + rs.getString("nombre"));
            }
            
            System.out.println("\n=== PLATOS ===");
            rs = stmt.executeQuery("SELECT * FROM platos");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id") + 
                                 " | Nombre: " + rs.getString("nombre") + 
                                 " | Precio: " + rs.getDouble("precio") + 
                                 " | Fecha: " + rs.getDate("fecha"));
            }
            
            System.out.println("\n=== RESTAURANTE ===");
            rs = stmt.executeQuery("SELECT * FROM restaurante");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id") + 
                                 " | Nombre: " + rs.getString("nombre") + 
                                 " | RUC: " + rs.getString("ruc") + 
                                 " | Teléfono: " + rs.getString("telefono") + 
                                 " | Dirección: " + rs.getString("direccion"));
            }
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
