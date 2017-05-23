<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<style>
.bg-1 {
	background-color: #1abc9c;
	color: #ffffff;
}

.bg-2 {
	background-color: #474e5d;
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff;
	color: #555555;
}

.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}
</style>
</head>
<body>
<%@ page import="es.starbooks.modelo.*" %>
<%@ page import="es.starbooks.conector.*" %>
<%@ page import="es.starbooks.clase.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	LibroModelo libroModelo = new LibroModelo();
	ArrayList<Libro> libros = libroModelo.seleccionarTodo();
	%>
	<p>
		<img src=C:\Users\Gorka\workspace\Starbooks\WebContent\Imagenes\starbooks1.jpg class="img-responsive img-circle" style="display: inline" width="120" height="120"> 		
	</p>
	<div class="container-fluid bg-1 text-center"> 
	<h1>Lista de Libros</h1>
	<table border="1" class="table">
		<thead>
			<tr>
				<th>Titulo</th>
				<th>Autor</th>
				<th>Num.Pag.</th>
				<th>Editorial</th>
				<th>Cantidad</th>
			</tr>
		</thead>
		<%
	for (Libro libro: libros){
		%>
		<tbody>
			<tr>
				<td><%=libro.getTitulo()%></td>
				<td><%=libro.getAutor()%></td>
				<td><%=libro.getNum_pag()%></td>
				<td><%=libro.getEditorial()%></td>
				<td><%=libro.getCantidad()%></td> 				
			</tr>		
		<%}%>
		</tbody>
	</table>
	</div>
</body>
</html>