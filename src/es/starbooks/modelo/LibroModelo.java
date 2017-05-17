package es.starbooks.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import es.starbooks.clase.Libro;
import es.starbooks.conector.Conector;

public class LibroModelo extends Conector{
	
	public ArrayList<Libro> seleccionarPorTitulo(String titulo){
		
		ArrayList<Libro> libros = new ArrayList<Libro>();
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement ("SELECT * FROM libro WHERE titulo=?");
			pst.setString(1, titulo);
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			
			Libro libro = new Libro();
			libro.setId_libro(rs.getInt("id_libro"));
			libro.setTitulo(rs.getString("titulo"));
			libro.setAutor(rs.getString("autor"));
			libro.setNum_pag(rs.getInt("num_pag"));
			libro.setEditorial(rs.getString("editorial"));
			
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
			
			libros.add(libro);
			
			return libros;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					
		return null;
		
	}
	
	public void insertar (Libro libro) {
		
		try {
			
			PreparedStatement pst = this.conexion.prepareStatement("INSERT INTO libro(id_libro, titulo, autor, num_pag, editorial) VALUES(?,?,?,?,?)");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
