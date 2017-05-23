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
			
			PreparedStatement pst = this.conexion.prepareStatement ("SELECT * FROM libro WHERE autor=?");
			pst.setString(1, autor);
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			
			Libro libro = new Libro();
			libro.setId_libro(rs.getInt("id_libro"));
			libro.setTitulo(rs.getString("titulo"));
			libro.setAutor(rs.getString("autor"));
			libro.setNum_pag(rs.getInt("num_pag"));
			libro.setEditorial(rs.getString("editorial"));
			libro.setCantidad(rs.getInt("cantidad"));
			
			libros.add(libro);
			
			return libros;
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return null;		
		
	}
	
	public ArrayList<Libro> seleccionarTodo(){
		
		ArrayList<Libro> libros = new ArrayList<Libro>();
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("SELECT * FROM libro");
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			
			Libro libro = new Libro();
			libro.setId_libro(rs.getInt("id_libro"));
			libro.setTitulo(rs.getString("titulo"));
			libro.setAutor(rs.getString("autor"));
			libro.setNum_pag(rs.getInt("num_pag"));
			libro.setEditorial(rs.getString("editorial"));
			libro.setCantidad(rs.getInt("cantidad"));
		
			
			libros.add(libro);
			
			return libros;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					
		return null;
		
	}
	
	public void insertar(Libro libro) {
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("INSERT INTO libro (titulo,autor,num_pag,editorial) VALUES(?,?,?,?)");
			pst.setString(1, libro.getTitulo());
			pst.setString(2, libro.getAutor());
			pst.setInt(3, libro.getNum_pag());
			pst.setString(4, libro.getEditorial());
			
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
