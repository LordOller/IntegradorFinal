package proyectoFinal.java;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String USUARIO = "root";
	private static final String PASS = "";
	private static final String URL = "jdbc:mysql://localhost:3306/trabajo_final";
	
	static {
		try {
			Class.forName(CONTROLADOR);	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection conectar() throws SQLException {
		
		Connection conexion = null;
		
		conexion = DriverManager.getConnection(URL,USUARIO,PASS);
		
		return conexion;
	}
	
	public static void main(String[] args) throws SQLException {
		Conexion cn = new Conexion();
		
		System.out.println(cn.conectar());
	}
	
}
