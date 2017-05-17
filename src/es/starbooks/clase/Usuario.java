package es.starbooks.clase;

public class Usuario {
	
	//Atributos
		
	
	private int id_usuario;
	private String contrasena;
	private String nombre;
	private String apellido;
	private String dni;
	private String perfil;
	private String poblacion;
	private String direccion;
	private String provincia;
	
	//Constructores
	
	public Usuario() {
		super();
	}
	
	public Usuario(int id_usuario, String contrasena, String nombre, String apellido, String dni, String perfil,
			String poblacion, String direccion, String provincia) {
		super();
		this.id_usuario = id_usuario;
		this.contrasena = contrasena;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.perfil = perfil;
		this.poblacion = poblacion;
		this.direccion = direccion;
		this.provincia = provincia;
	}

	//Getters y Setters
	
	public int getId_usuario() {
		return id_usuario;
	}
	
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	
	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	public String getPoblacion() {
		return poblacion;
	}
	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	
	
}
