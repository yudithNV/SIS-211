import db_clases.Conexion;
import java.sql.Connection;
public class TestConn {
    public static void main(String[] args) {
        Conexion c = new Conexion();
        Connection conn = c.getConnection();
        if (conn != null) {
            System.out.println("Connection OK: " + conn);
            try { conn.close(); } catch (Exception e) {}
        } else {
            System.out.println("Connection is null");
        }
    }
}
