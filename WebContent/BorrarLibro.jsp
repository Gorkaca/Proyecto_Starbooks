<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar Libro</title>
</head>
<body>
<%@ page import="es.starbooks.modelo.*" %>
<%@ page import="es.starbooks.conector.*" %>
<%@ page import="es.starbooks.clase.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<% 
	String id_libro= request.getParameter("id");
	LibroModelo libroModelo = new LibroModelo();
	libroModelo.borrarPorId(Integer.parseInt(id_libro));
	out.println("Libro borrado");
	response.sendRedirect("VerLibros.jsp");
%>


</body>
</html>