<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "proyectoFinal.java.ConexionBaseDeDatos" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "proyectoFinal.java.ValorTickets" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="normalize.css">
     <link rel="stylesheet" href="MostrarTickets.css">
<title>Insert title here</title>
</head>
<body>
	
		<%ValorTickets vt = new ValorTickets();%>

	<div id="ticket">
		<h2>Informacion Del Ticket</h2>
		 	<table>
        	<tr>
            	<th>Nombre</th>
            	<td id="nombre"><%= vt.getNombre()%></td>
        	</tr>
        	<tr>
            	<th>Apellido</th>
            	<td id="apellido"><%=vt.getApellido()%></td>
        	</tr>
        	<tr>
            	<th>Email</th>
            	<td id="email"><%=vt.getEmail() %></td>
        	</tr>
        	<tr>
            	<th>Cantidad</th>
            	<td id="cantidad"><%=vt.getCantidad()%></td>
        	</tr>
        	<tr>
            	<th>Categoría</th>
            	<td id="categoria"><%= vt.getCategoria() %></td>
        	</tr>
    	</table>
    </div>
</body>
</html>