package es.starbooks.modelo;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import es.starbooks.clase.Pedido;
import es.starbooks.conector.Conector;

public class PedidoModelo extends Conector{
	
	public ArrayList<Pedido> seleccionarPorId_libro(int id_libro){
		
		ArrayList<Pedido> pedidos = new ArrayList<Pedido>();
		
				
		try {
			
			Statement st = this.conexion.createStatement();
			ResultSet rs = st.executeQuery("SELECT p.id_usuario, l.titulo, l.autor, l.editorial, l.cantidad FROM pedido p JOIN libro l ON (p.id_libro=l.id_libro) WHERE id_libro = '" + id_libro + "'");
			
			while(rs.next()){
													
				Pedido pedido = new Pedido();
				pedido.setId_usuario(rs.getInt("id_usuario"));
				
				
			
			
				
				
				
			}
			

			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
		
	}
	

}
