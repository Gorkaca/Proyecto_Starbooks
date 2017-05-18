package es.starbooks.clase;

public class Pedido {
	
	//Atributos
		
	private int id_libro;
	private int id_usuario;
	private int cantidad;
	
	
	//Constructores
	
	public Pedido(int id_libro, int id_usuario, int cantidad) {
		super();
		this.id_libro = id_libro;
		this.id_usuario = id_usuario;
		this.cantidad = cantidad;
	}	
	
	//Getters & Setters
	
	public Pedido() {
		super();
	}

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
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	

}
