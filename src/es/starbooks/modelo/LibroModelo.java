package es.starbooks.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import es.starbooks.clase.Libro;
import es.starbooks.conector.Conector;

public class LibroModelo extends Conector{
	
	public ArrayList<Libro> seleccionarPorAutor(String autor){
		
		ArrayList<Libro> libros = new ArrayList<Libro>();
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement ("SELECT * FROM libro WHERE autor='" + autor + "'");
						
			ResultSet rs = pst.executeQuery();
			while (rs.next()){
				libros.add(new Libro(rs.getInt("id_libro"),rs.getString("titulo"),rs.getString("autor"),rs.getInt("num_pag"),rs.getString("editorial"),rs.getInt("cantidad")));
					
			}
			
			return libros;
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return libros;		
		
	}
	
	public ArrayList<Libro> seleccionarTodo(){
		
		ArrayList<Libro> libros = new ArrayList<Libro>();
				
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("SELECT * FROM libro");
			
			ResultSet rs = pst.executeQuery();
			while (rs.next()){
				libros.add(new Libro(rs.getInt("id_libro"),rs.getString("titulo"),rs.getString("autor"),rs.getInt("num_pag"),rs.getString("editorial"),rs.getInt("cantidad")));
					
			}
			
			return libros;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					
		return null;
		
	}
	
	public void insertar(Libro libro) {
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("INSERT INTO libro (titulo,autor,num_pag,editorial,cantidad) VALUES(?,?,?,?,?)");
			pst.setString(1, libro.getTitulo());
			pst.setString(2, libro.getAutor());
			pst.setInt(3, libro.getNum_pag());
			pst.setString(4, libro.getEditorial());
			pst.setInt(5, libro.getCantidad());
			
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void borrarPorId(int id_libro){
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("DELETE FROM libro WHERE id_libro=?");
			pst.setInt(1, id_libro);
			
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
}
