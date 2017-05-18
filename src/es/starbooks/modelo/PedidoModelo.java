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
			ResultSet rs = st.executeQuery("SELECT p.id_usuario AS id, l.titulo AS titulo, l.autor AS autor, l.editorial AS editorial, p.cantidad AS cantidad FROM pedido p JOIN libro l ON (p.id_libro=l.id_libro) WHERE id_libro = '" + id_libro + "'");
			
			while(rs.next()){
				
				Libro libro = new Libro();
								
				Pedido pedido = new Pedido();
				pedido.setId_usuario(rs.getInt("id"));				
				pedido.setCantidad(rs.getInt("cantidad"));
				
				
				
			}
			

			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
		
	}
	

}
