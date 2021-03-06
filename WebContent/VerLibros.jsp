<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	int session_lenght = session.getValueNames().length;
	if (session_lenght == 0) {
		response.sendRedirect("Login.jsp");
	}

	Usuario usuario = (Usuario) session.getAttribute("sesioa");
%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="es.starbooks.modelo.*"%>
<%@ page import="es.starbooks.clase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	LibroModelo libroModelo = new LibroModelo();
	ArrayList<Libro> libros = libroModelo.seleccionarTodo();
	%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Login.jsp">Logout</a></li>
      <li>kaixo<%=usuario.getNombre()%></li>
    </ul>
  </div>
</nav>
  
	<div class="container-fluid bg-1 text-center"> 
		<img src=Imagenes/starbooks1.jpg class="img-responsive img-circle" style="display: inline" width="120" height="120"> 		
	
	
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
				<td><a href="BorrarLibro.jsp?id=<%=libro.getId_libro()%>">Borrar</a></td>			
			</tr>	
		<%}%>
		</tbody>
	</table>
	</div>
</body>
</html>