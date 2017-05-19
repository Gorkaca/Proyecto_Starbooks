package es.starbooks.modelo;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import es.starbooks.clase.Libro;
import es.starbooks.clase.Pedido;
import es.starbooks.conector.Conector;

public class PedidoModelo extends Conector{
	
	public ArrayList<Pedido> seleccionarPorId_libro(int id_libro){
		
		ArrayList<Pedido> pedidos = new ArrayList<Pedido>();
		ArrayList<Libro> libros = new ArrayList<Libro>();
				
		try {
			
			Statement st = this.conexion.createStatement();
			ResultSet rs = st.executeQuery("SELECT p.id_usuario, l.titulo, l.autor, l.editorial, l.cantidad FROM pedido p JOIN libro l ON (p.id_libro=l.id_libro) WHERE id_libro = '" + id_libro + "'");
			
			while(rs.next()){
				
				Libro libro = new Libro();
				libro.setTitulo(rs.getString("titulo"));
				libro.setAutor(rs.getString("autor"));
				libro.setEditorial(rs.getString("editorial"));
				libro.setCantidad(rs.getInt("cantidad"));
				
				libros.add(libro);
								
				Pedido pedido = new Pedido();
				pedido.setId_usuario(rs.getInt("id_usuario"));
				pedido.setLibros(libros);
				
				pedidos.add(pedido);
											
			}
			
			return pedidos;
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
		
		
	}
	

}