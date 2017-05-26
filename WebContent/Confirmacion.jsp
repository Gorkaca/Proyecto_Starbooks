<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="es.starbooks.modelo.*" %>
<%@ page import="es.starbooks.conector.*" %>
<%@ page import="es.starbooks.clase.*" %>	
	
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	

	Usuario usuario = (Usuario)session.getAttribute("sesioa");
	int id_usuario = usuario.getId_usuario();
	
	String id_libro = request.getParameter("id");
	
	Pedido pedido = new Pedido();
	
	pedido.setId_usuario(id_usuario);
	pedido.setId_libro(Integer.parseInt(id_libro));
	
	PedidoModelo pedidoModelo = new PedidoModelo();
	pedidoModelo.insertarPedido(Integer.parseInt(id_libro), id_usuario);
	
%>

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
	<form action="MainCliente.jsp" method="get">
		<div class="container-fluid bg-1 text-center">
			<br> <strong>compra </strong> realizada con exito! </br> <img
				src=Imagenes\ok2.png
				class="img-responsive img-circle" style="display: inline" alt="Bird"
				width="250" height="250">
			<p>
				Quieres seguir comprando? <a href="MainCliente.jsp">si</a> <a
					href="Login.jsp">logout</a>
			</p>
			<!-------aqui tenemos que hacer una operacion para comparar la respuesta de la pregunta de esta pagina ---------->
</body>
</form>
</div>
</html>