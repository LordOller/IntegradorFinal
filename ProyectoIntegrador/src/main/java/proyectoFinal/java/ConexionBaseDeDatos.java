package proyectoFinal.java;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

	public class ConexionBaseDeDatos {

		private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
		private static final String URL = "jdbc:mysql://localhost:3306/trabajo_final";
		private static final String USEER = "root";
		private static final String PASS = "";

		static {
			try {
				Class.forName(CONTROLADOR);
				//System.out.println("Se cargo el controlador correctamente");
			} catch (ClassNotFoundException e) {
				System.out.println("Error al cargar el controlador");
				e.printStackTrace();
			}
		}

		public Connection conectar() {
			
			Connection conexion = null;
			
			try {
				conexion = DriverManager.getConnection(URL, USEER, PASS);
				//System.out.println("Conexión con la DB exitosa");
			} catch (SQLException e) {
				System.out.println("Error al establecer la conexión");
				e.printStackTrace();
			}
			return conexion;
		}
		
	}


