package proyectoFinal.java;
import java.sql.*;

public class ValorTickets {
	
	private String nombre;
	private String apellido;
	private String email;
	private int cantidad =0;
	private String categoria;
	
	public ValorTickets() throws SQLException {
		
		ConexionBaseDeDatos cbd = new ConexionBaseDeDatos();
		Connection cn = cbd.conectar();
			
			PreparedStatement ps = null;
			ps = cn.prepareStatement("SELECT * FROM ticket WHERE Activo = '1'");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				 this.nombre = rs.getString(2);
				 this.apellido = rs.getString(3);
				 this.email = rs.getString(4);
				 this.cantidad = rs.getInt(5);
				 this.categoria = rs.getString(6);
				 int Activo = rs.getInt(7);
				}
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public String getEmail() {
		return email;
	}

	public int getCantidad() {
		return cantidad;
	}

	public String getCategoria() {
		return categoria;
	}
	
}
