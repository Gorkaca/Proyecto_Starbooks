package es.starbooks.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import es.starbooks.clase.Usuario;
import es.starbooks.conector.Conector;

public class UsuarioModelo extends Conector{
	
	public Usuario comprobarRegistro(String perfil,String nombre,String contrasena){
		
		try {
						
			PreparedStatement pst= this.conexion.prepareStatement("SELECT * FROM usuario WHERE perfil=? AND nombre=? AND contrasena=?");
			pst.setString(1, perfil);
			pst.setString(2, nombre);
			pst.setString(3, contrasena);
			
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
			
			return usuario;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return null;
		
	}
	
}
