import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class VerEstructuraPedidos {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("=== ESTRUCTURA DE LA TABLA PEDIDOS ===");
            ResultSet rs = stmt.executeQuery(
                "SELECT column_name, data_type, is_nullable " +
                "FROM information_schema.columns " +
                "WHERE table_name = 'pedidos' " +
                "ORDER BY ordinal_position"
            );
            
            while (rs.next()) {
                System.out.println(rs.getString("column_name") + " | " + 
                                 rs.getString("data_type") + " | " +
                                 "NULL: " + rs.getString("is_nullable"));
            }
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
