package es.starbooks.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import es.starbooks.clase.Libro;
import es.starbooks.clase.Pedido;
import es.starbooks.conector.Conector;

public class PedidoModelo extends Conector {

	public ArrayList<Pedido> selectAll() {

		ArrayList<Pedido> pedidos = new ArrayList<Pedido>();

		try {

			Statement st = this.conexion.createStatement();
			ResultSet rs = st
					.executeQuery("SELECT p.id_usuario, l.* FROM pedido p JOIN libro l ON (p.id_libro=l.id_libro)");
			while (rs.next()) {//pedido guztiak errekorritu

				Libro libro = new Libro();
				libro.setTitulo(rs.getString("titulo"));
				libro.setAutor(rs.getString("autor"));
				libro.setCantidad(rs.getInt("cantidad"));
				
				Pedido pedido = new Pedido();
				pedido.setId_usuario(rs.getInt("id_usuario"));
				pedido.setLibro(libro);

				pedidos.add(pedido);
			}

			return pedidos;

		} catch (

		SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;

	}

	public void insertarPedido(int id_libro, int id_usuario) {

		try {

			PreparedStatement pst = this.conexion.prepareStatement("INSERT INTO pedido'" + id_libro + id_usuario + "'");
			pst.setInt(1, id_libro);
			pst.setInt(2, id_usuario);

			pst.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}