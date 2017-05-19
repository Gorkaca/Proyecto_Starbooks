<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="es.starbooks.clase.*" %>
<%@ page import="es.starbooks.modelo.*" %>
<%
//usuarioa sortu

//parametroak jaso
String izena = request.getParameter("izena");
String pasaitza = request.getParameter("pasaitza");
//
Usuario usuario = new Usuario();
UsuarioModelo usuarioModelo = new UsuarioModelo();
usuarioModelo.
//hemen komprobatzen du erabiltzaile arrunta edo administradorea den.
if( ){
	out.println("sisteman zaude");
	session.putValue("sesioa", usuario);
	session.getAttribute("sesioa");
	
}else
	out.println("ez zaude sisteman");
{
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
	<form action="Login.jsp" method="get">
	<div class="container-fluid bg-1 text-right">
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Estilo1</button>
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">Estilo2</a></li>
    </ul>
  </div>
		<div class="container-fluid bg-1 text-center">
		<p>
<img src=C:\Users\S\workspace\Proyecto\WebContent\Imagenes\starbooks1.jpg class="img-responsive img-circle" style="display: inline" alt="Bird"width="250" height="250"> 		
		</p>
			Izena:<input type="text"name="izena" id="izena"> <br/> 
			Pasaitza:<input type="text" name="pasaitza" id="pasaitza"><br/>
			<p>
				<input type="submit" name="login" value="login" id="login">
			</p>
	</form>
	</div>
</body>
</html>