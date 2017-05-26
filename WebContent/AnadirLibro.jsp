 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ page import="es.starbooks.modelo.*" %>
<%@ page import="es.starbooks.conector.*" %>
<%@ page import="es.starbooks.clase.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

	Libro libro = new Libro();

	if(request.getParameter("titulo") != null || request.getParameter("autor") != null || request.getParameter("numero_pag") != null 
	|| request.getParameter("editorial") != null || request.getParameter("cantidad") != null){
		
		String titulo= request.getParameter("titulo");
		String autor= request.getParameter("autor");
		String num_pag= request.getParameter("numero_pag");
		String editorial= request.getParameter("editorial");
		String cantidad= request.getParameter("cantidad");
		
		libro.setTitulo(titulo);
		libro.setAutor(autor);
		libro.setNum_pag(Integer.parseInt(num_pag));
		libro.setEditorial(editorial);
		libro.setCantidad(Integer.parseInt(cantidad));
		
		LibroModelo libroModelo = new LibroModelo();
		libroModelo.insertar(libro);
		
	}
	
%>

	<form action="AnadirLibro.jsp" method="get">
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav text-right">
      <li><a href="Login.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
  		<h1>Añadir Libro</h1>

		<table style="width:100%">
			<tr>
				<th>Titulo:</th>
				<td><input type="text" name="titulo" id="titulo"/></td>
			</tr>
			<tr>
				<th>Autor:</th>
				<td><input type="text" name="autor" id="autor"/></td>
			</tr>
			<tr>
				<th>Numero Pag.:</th>
				<td><input type="text" name="numero_pag" id="numero_pag"/></td>
			</tr>
			<tr>
				<th>Editorial:</th>
				<td><input type="text" name="editorial" id="editorial"/></td>					
			</tr>
			<tr>
				<th>Cantidad:</th>
				<td><input type="text" name="cantidad" id="cantidad"/></td>
			</tr>			
		</table>
			<input type ="submit" name="añadir" value="Añadir" />
			<div class= "text-center">
			<img src=Imagenes\anadir_libro.jpg>
			</div>
	</form>
</body>
</html>