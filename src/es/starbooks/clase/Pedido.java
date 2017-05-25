package es.starbooks.clase;

import java.util.ArrayList;

public class Pedido {
	
	//Atributos
		
	private int id_libro;
	private int id_usuario;
	private ArrayList<Libro> libros;
	
	//Constructores
	
	
	public Pedido() {
		super();
	}
		
	public Pedido(int id_libro, int id_usuario, ArrayList<Libro> libros) {
		super();
		this.id_libro = id_libro;
		this.id_usuario = id_usuario;
		this.libros = libros;
	}

	//Getters & Setters
		
	public int getId_libro() {
		return id_libro;
	}
	
	public void setId_libro(int id_libro) {
		this.id_libro = id_libro;
	}
	public int getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public ArrayList<Libro> getLibros() {
		return libros;
	}
	public void setLibros(ArrayList<Libro> libros) {
		this.libros = libros;
	}
		

}