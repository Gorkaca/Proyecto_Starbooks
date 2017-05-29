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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid text-center">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav text-right">
			<li><a href="VerLibros.jsp">Ver Libros</a></li>
			<li><a href="AnadirLibro.jsp">Añadir Libro</a></li>
			<li><a href="VerPedidos.jsp">Ver pedidos</a></li>
			<li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			<li>kaixo<%=usuario.getNombre()%></li>
		</ul>
	</div>
	</nav>
	<img src=Imagenes/administrador.jpg>
</body>
</html>