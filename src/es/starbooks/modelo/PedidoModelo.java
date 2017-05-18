package es.starbooks.modelo;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import es.starbooks.clase.Pedido;
import es.starbooks.conector.Conector;

public class PedidoModelo extends Conector{
	
	public ArrayList<Pedido> seleccionarPorId_libro(int id_libro){
		
		ArrayList<Pedido> pedidos = new ArrayList<Pedido>();
		Pedido pedido = new Pedido();
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("SELECT p.id_usuario, p.cantidad, l.* FROM pedido p JOIN libro l ON (p.id_libro=l.id_libro) WHERE id_libro=?");
			pst.setInt(1, id_libro);
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			
			
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
		
	}
	

}
