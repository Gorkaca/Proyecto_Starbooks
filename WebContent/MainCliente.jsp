<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="es.starbooks.modelo.*"%>
<%@ page import="es.starbooks.clase.*"%>

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
<%
ArrayList<Libro> libros = new ArrayList<Libro>();
	if (request.getParameter("titulo") != null) {
		//hemen utzik ez badao topatuko du  autorearengatik liburuak.
		LibroModelo libroModelo = new LibroModelo();
		libros = libroModelo.seleccionarTodo();
	} else {
		String autor = request.getParameter("autor");
		LibroModelo libroModelo = new LibroModelo();
		libros = libroModelo.seleccionarPorAutor(autor);
	}
%>


<!--esto tenemos que meterlo debajo del else que nose muy bien como se hace XD-->

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
	<form action="MainCliente.jsp">
		<span class="glyphicon glyphicon-search"></span> <input type="text"
			name="autor" id="autor"> <input type="submit" value="Buscar">
			
		
		<table style="width: 100%">
			<tr>
				<th>Titulo</th>
				<th>Autor</th>
				<th>Numero Pag.</th>
				<th>Editorial</th>
				<th>Cantidad</th>
			</tr>
			<!-- dentro de un for -->
		<%
			for (Libro libro : libros) {
		%>

			<tr>
				<td><%=libro.getTitulo()%></td>
				<td><%=libro.getAutor()%></td>
				<td><%=libro.getNum_pag()%></td>
				<td><%=libro.getEditorial()%></td>
				<td><%=libro.getCantidad()%></td>
				<td><a href="FormularioCompra.jsp?id=<%=libro.getId_libro()%>">Comprar</a></td> 
			</tr>
			<%
				}
			%>
		</table>
	</form>
</body>
</html>