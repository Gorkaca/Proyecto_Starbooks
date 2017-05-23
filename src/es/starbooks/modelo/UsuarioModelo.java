package es.starbooks.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import es.starbooks.clase.Usuario;
import es.starbooks.conector.Conector;


public class UsuarioModelo extends Conector{
	
	public UsuarioModelo(){
		super();
	}
	
	public Usuario comprobarRegistro(String nombre,String contrasena){
		
		try {
						
			PreparedStatement pst= this.conexion.prepareStatement("SELECT * FROM usuario WHERE nombre=? AND contrasena=?");

			pst.setString(1, nombre);
			pst.setString(2, contrasena);
			
			ResultSet rs = pst.executeQuery();
			
			rs.next();
			Usuario usuario = new Usuario();
			usuario.setId_usuario(rs.getInt("id_usuario"));
			usuario.setContrasena(rs.getString("contrasena"));
			usuario.setNombre(rs.getString("nombre"));
			usuario.setApellido(rs.getString("apellido"));
			usuario.setDni(rs.getString("dni"));
			usuario.setPoblacion(rs.getString("poblacion"));
			usuario.setProvincia(rs.getString("provincia"));
			usuario.setPerfil(rs.getString("perfil"));
			
			return usuario;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return null;
		
	}
	
	
}
