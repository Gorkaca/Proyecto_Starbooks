package es.starbooks.clase;

public class Libro {
	
	//Atributos
		
	private int id_libro;
	private String titulo;
	private String autor;
	private int num_pag;
	private String editorial;
	
	
	//Constructores	

	public Libro(int id_libro, String titulo, String autor, int num_pag, String editorial) {
		super();
		this.id_libro = id_libro;
		this.titulo = titulo;
		this.autor = autor;
		this.num_pag = num_pag;
		this.editorial = editorial;
	}
		
	
	//Getters & Setters
	
	public int getId_libro() {
		return id_libro;
	}
	public void setId_libro(int id_libro) {
		this.id_libro = id_libro;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public int getNum_pag() {
		return num_pag;
	}
	public void setNum_pag(int num_pag) {
		this.num_pag = num_pag;
	}
	public String getEditorial() {
		return editorial;
	}
	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}
	
}
