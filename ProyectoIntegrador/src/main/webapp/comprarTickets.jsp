<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="normalize.css">
    <title>Document</title>
</head>
<body>
	 <header>
        <div class="logo">
            <h2>Conf Bs As</h2>
        </div>
        <nav class="nav">
            <a href="index.html" id="Conferencia">La Conferencia</a>
            <a href="index.html" id="Oradores">Los Oradores</a>
            <a href="#" id="Fecha">El lugar y la Fecha</a>
            <a href="#">Conviertete en Orador</a>
            <a class="comprarT" href="comprarTickets.html">Comprar Tickets</a>
        </nav>
    </header>

    <main class="contenedor-tickets">
        <div class="oferta">
            <div class="tipo">
                <h3>Estudiante</h3>
                <p>Tiene un descuento</p>
                <p><b>80%</b></p>
                <p>*presentar documentacion</p> 
            </div>
            <div class="tipo">
                <h3>Trainer</h3>
                <p>Tiene un descuento</p>
                <p><b>50%</b></p>
                <p>*presentar documentacion</p> 
            </div>
            <div class="tipoDos">
                <h3>Junior</h3>
                <p>Tiene un descuento</p>
                <p><b>15%</b></p>
                <p>*presentar documentacion</p> 
            </div>
        </div>

        <p>Venta</p>
        <h2>VALOR DE TICKET $200</h2>

    <div class="formularioComprar">
        <form id="miFormulario" action="Update.jsp" method="post">
            <div class="formularioContenido">
               <div class="formularioDatos datos">
                <label for="Nombre" ></label>
                <input type="Nombre" id="nombre" value="<%= request.getParameter("nombre") %>" name="nombre" placeholder="Nombre" required pattern="[A-Za-zÁ-ÿ\s]+">
                <label for="Apellido"></label>
                <input type="Apellido" placeholder="Apellido" value="<%= request.getParameter("apellido") %>" name="apellido" id="apellido" required pattern="[A-Za-zÁ-ÿ\s]+">
            </div > 
                <label for="Correo"></label>
                <input class="Correo" id="mail" name="email" value="<%= request.getParameter("email") %>" type="email" placeholder="Correo">
            </div>
            <div class="formularioCantidad">
            <div class="formularioDatos datos">
             <div class="cantidad">
              <p>Cantidad</p> 
            <label for="Cantidad"></label>
            <input type="Cantidad" placeholder="Cantidad" name="cantidad" value="<%= request.getParameter("cantidad") %>" id="cantidad" required>
        </div> 
        <div class="categoria">
            <p>Categoria</p>  
            <label for="Categoria"></label>
            <select name="Categoria"  id="selector">
                <option selected><%= request.getParameter("Categoria") %></option>
                <option value="Estudiante">Estudiante</option>
                <option value="Trainer">Trainer</option>
                <option value="Junior">Junior</option>
            </select>
        </div>
        </div>
        </div>
        <p class="script">Total a pagar: <span id="span"></span> $</p>
        <div class="boton-comprar">
            <button  class="boton-click" id="borrar" type="button">Eliminar</button>
            <button class="boton-click" id="resumen" type="submit">Modificar</button>
            <button class="boton-click" id="resumen" onclick="location.href='index.html'" type="button">Confirmar</button>
            <button class="boton-click" id="resumen" onclick="location.href='MostrarTicktes.jsp'" type="button">Mostrar Tickets</button>
        </div>
        </form>
        
    </div>
   
    </main>

    <footer>
        <a href="">Preguntas Frecuentes</a>
        <a href="">Contactanos</a>
        <a href="">Prensa</a>
        <a href="">Conferencia</a>
        <a href="">Términos y Condiciones</a>
        <a href="">Privacidad</a>
        <a href="">Estudiantes</a>
    </footer>

    <script src="./index.js"></script>
    <script src="./script.js"></script>
</body>
</html>