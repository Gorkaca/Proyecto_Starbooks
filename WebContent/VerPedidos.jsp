<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%@ page import="es.starbooks.modelo.*" %>
<%@ page import="es.starbooks.conector.*" %>
<%@ page import="es.starbooks.clase.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%	
	String id_libro = request.getParameter("id");
	ArrayList<Pedido> pedidos = new ArrayList<Pedido>();
	PedidoModelo pedidoModelo = new PedidoModelo();
	pedidoModelo.seleccionarPorId_libro(Integer.parseInt(id_libro));
	
%>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav text-right">
      <li><a href="Login.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid bg-1 text-center"> 
<h1>Lista de pedidos</h1>
<p>
<img src=Imagenes\starbooks1.jpg class="img-responsive img-circle" style="display: inline" width="120" height="120"> 		

		</p>
		
		<table class="table ">
    		<thead>
      			<tr>
			        <th>Id_Cliente</th>
			        <th>Titulo</th>
			        <th>Autor</th>
			       	<th>Cantidad</th>
			    </tr>
    		</thead>
    	<%
    	for(Pedido pedido:pedidos){
    	%>
   
  			<tbody>
  				<tr>
        			<td><%=%></td>
					<td><%=%></td>
					<td><%=%></td>
					<td><%=%></td>
					<td><%=%></td>
      			</tr>
      			<%}%>  				
  			</tbody>
  		</table>
  	</div>    
</body>
</html>