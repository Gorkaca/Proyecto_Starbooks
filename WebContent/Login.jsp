<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="es.starbooks.clase.*"%>
<%@ page import="es.starbooks.modelo.*"%>
<%
//sesioneko luzera bardin 0 



	//parametroak jaso
/* 	int session_lenght = 0;
	session_lenght = session.getValueNames().length;
	if (session_lenght == 0) { */
		
	if (request.getParameter("nombre") != null || request.getParameter("contra") != null) {
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contra");
		//modeloak sortu eta deitu comprobarRegistrora
		UsuarioModelo usuarioModelo = new UsuarioModelo();
		Usuario usuario = usuarioModelo.comprobarRegistro(nombre, contrasena);
		/* response.sendRedirect("loginForm.jsp?error=datosmal"); */
		//hemen komprobatzen du erabiltzaile arrunta edo administradorea den.
		if (usuario != null) {
			out.print("erabiltzaile zuzena ");
			session.putValue("sesioa", usuario);
			if (usuario.getPerfil().equals("cliente")){
				response.sendRedirect("MainCliente.jsp");
			} else if (usuario.getPerfil().equals("administrador")) {
				response.sendRedirect("MainAdmin.jsp");
			}
		} else {
			out.print("erabiltzailea gaizki");
		}
	}
	
	/* session.setAttribute("usuario", null); 
	session.invalidate();
	response.sendRedirect("Login.jsp"); */
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form action="Login.jsp">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="Login.jsp">Logout</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
<div class="container text-center">
	<input type="text" name="nombre" id="nombre">
	<input type="text" name="contra" id="contra">
	<input type="submit" value="Login">
	<img src=Imagenes/starbooks1.jpg> 	
</div>
</form>
</body>
</html>