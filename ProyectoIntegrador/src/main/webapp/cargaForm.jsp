<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "proyectoFinal.java.ConexionBaseDeDatos" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "proyectoFinal.java.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  	
  	<%
  		String nombre =  request.getParameter("nombre");
	  	String apellido = request.getParameter("apellido");	
	  	String email = request.getParameter("email");	
	  	String cantidad = request.getParameter("cantidad");
	  	String categoria = request.getParameter("Categoria");
	  	
	  	
	  	
  		//out.print(nombre+apellido+cantidad+categoria);
  		String sql = "INSERT INTO ticket(`nombre`, `apellido`, `mail`, `cantidad`, `categoria`) VALUES ('"+nombre+"','"+apellido+"','"+email+"','"+cantidad+"','"+categoria+"')";
  		
  		ConexionBaseDeDatos conexion = new ConexionBaseDeDatos();
  		
  		Connection cn = conexion.conectar();
  		System.out.println("Conexión: " + cn);
  		try{
  		Statement stm = cn.createStatement();
  		
  		stm.executeUpdate(sql);
  		}catch(SQLException e){
  			e.printStackTrace();
  			 out.println("Error al ejecutar la consulta: " + e.getMessage());
  		}
  	%>
  	
  	<jsp:include page="comprarTickets.jsp"></jsp:include>
  	  	
  	
</body>
</html>