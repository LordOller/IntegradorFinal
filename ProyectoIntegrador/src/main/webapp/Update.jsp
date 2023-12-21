<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "proyectoFinal.java.ConexionBaseDeDatos" %>
    <%@ page import = "java.sql.*" %>
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
  		
  		
  		ConexionBaseDeDatos conexion = new ConexionBaseDeDatos();
  	
  		Connection cn = null;
  		Statement stm = null;
  		ResultSet rsId = null;
  		
  		try{
  			 cn = conexion.conectar();
  			 stm = cn.createStatement();
  	  		 rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
  	  		 
  	  		while(rsId.next()){
  	  			int id = rsId.getInt(1);
  	  		    
  	  			String query = "UPDATE ticket SET nombre='"+nombre+"', apellido='"+apellido+"',mail='"+email+"',cantidad='"+cantidad+"',categoria='"+categoria+"' WHERE id = "+id+"";
  	  			stm.executeUpdate(query);
  	  		}
  	  		
  		}catch(SQLException e){
  			e.printStackTrace();
  		}
  		
  		try{
  			if(cn != null){
  				cn.close();
  			}
  			if(stm != null){
  				stm.close();
  			}
  			if(rsId != null){
  				rsId.close();
  			}
  		}catch(SQLException e){
  			e.printStackTrace();
  		}
  	%>
</body>
	<jsp:include page="comprarTickets.jsp"></jsp:include>
</html>