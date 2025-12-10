package db_clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import proyecto_cvs.factura;

public class facturaDB {
	private Connection conexion;
	
	public facturaDB() {
        try {
            Conexion cn = new Conexion();
            conexion = cn.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	//Creación de una nueva propiedad
	public void agregarFactura(factura prop) {
		String sql="INSERT INTO facturas(f_emision,monto_total,id_pedido,id_itemPedido) VALUES(?,?,?,?)";
		try (PreparedStatement parametro=conexion.prepareStatement(sql)){
			parametro.setString(1, prop.getF_emision());
			parametro.setDouble(2, prop.getMonto_total());
			parametro.setInt(3, prop.getId_pedido());
			parametro.setInt(4, prop.getId_itemPedido());
			parametro.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//Edición de propiedad
	public void editarFactura(factura prop, int id) {
        String sql = "UPDATE facturas SET f_emision=?, monto_total=?, id_pedido=?, id_itemPedido=? WHERE id = ?";
        try (PreparedStatement parametro = conexion.prepareStatement(sql)) {
        	parametro.setString(1, prop.getF_emision());
			parametro.setDouble(2, prop.getMonto_total());
			parametro.setInt(3, prop.getId_pedido());
			parametro.setInt(4, prop.getId_itemPedido());
            parametro.setInt(5, id);
            parametro.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
    // Eliminar una propiedad
    public void eliminarFactura(int id) {
        String sql = "DELETE FROM facturas WHERE id = ?";
        try (PreparedStatement parametro = conexion.prepareStatement(sql)) {
            parametro.setInt(1, id);
            parametro.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    // Obtener lista de propiedades
    public factura obtenerFactura(int id) {
        String sql = "SELECT * FROM facturas WHERE id_factura = ?";
        try (PreparedStatement parametro = conexion.prepareStatement(sql)) {
            parametro.setInt(1, id);
            ResultSet rs = parametro.executeQuery();
            if (rs.next()) {
                return new factura(rs.getString("f_emision"),rs.getDouble("monto_total"),rs.getInt("id_pedido"),rs.getInt("id_itemPedido"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}