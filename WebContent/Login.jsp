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

</head>
<body>
<form action="Login.jsp">

<img src="C:\Users\Gorka\workspace\starbooks1.1\WebContent\Imagenes\starbooks1.jpg"> 	
	<input type="text" name="nombre" id="nombre">
	<input type="text" name="contra" id="contra">
	<input type="submit" value="Login">

</form>
</body>
</html>