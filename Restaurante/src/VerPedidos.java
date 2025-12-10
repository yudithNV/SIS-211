import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class VerPedidos {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_restaurante";
        String user = "postgres";
        String password = "admin";
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement()) {
            
            System.out.println("=== PEDIDOS ===");
            ResultSet rs = stmt.executeQuery("SELECT p.*, s.nombre as sala_nombre FROM pedidos p LEFT JOIN salas s ON p.id_sala = s.id ORDER BY p.id DESC");
            int count = 0;
            while (rs.next()) {
                count++;
                System.out.println("\nPedido #" + rs.getInt("id"));
                System.out.println("  Sala: " + rs.getString("sala_nombre") + " (ID: " + rs.getInt("id_sala") + ")");
                System.out.println("  Mesa: " + rs.getInt("num_mesa"));
                System.out.println("  Fecha: " + rs.getTimestamp("fecha"));
                System.out.println("  Total: Bs. " + rs.getDouble("total"));
                System.out.println("  Usuario: " + rs.getString("usuario"));
                System.out.println("  Estado: " + rs.getString("estado"));
            }
            
            if (count == 0) {
                System.out.println("No hay pedidos registrados en la base de datos.");
            } else {
                System.out.println("\n\nTotal de pedidos: " + count);
            }
            
            System.out.println("\n=== DETALLE DE PEDIDOS ===");
            rs = stmt.executeQuery("SELECT * FROM detalle_pedidos ORDER BY id_pedido DESC");
            count = 0;
            while (rs.next()) {
                count++;
                System.out.println("Pedido " + rs.getInt("id_pedido") + " - " + 
                                 rs.getString("nombre") + " x" + rs.getInt("cantidad") + 
                                 " = Bs. " + (rs.getDouble("precio") * rs.getInt("cantidad")));
            }
            
            if (count == 0) {
                System.out.println("No hay detalles de pedidos.");
            }
            
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
