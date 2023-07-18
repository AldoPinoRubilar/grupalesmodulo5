package grupal7modulo5.services;

import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import grupal7modulo5.conexion.DBConnection;
import grupal7modulo5.models.entitys.Usuario;

public class UsuarioService {
	
	DBConnection conexion = DBConnection.getInstance();
	
	public List<Usuario> findAllUser(){
		
		List<Usuario> usuarios = new ArrayList<>();
		DBConnection conexion = DBConnection.getInstance();
		
		String sql = "SELECT nombre, run, fechanacimiento, tipousuario FROM usuarios;";
		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				String nombreusuario = rs.getString("nombre");
				String run = rs.getString("run");
				String fechanacimiento = rs.getString("fechanacimiento");
				String tipousuario = rs.getString("tipousuario");
				
				Usuario usuario = new Usuario(nombreusuario, run, fechanacimiento, tipousuario);
				
				usuarios.add(usuario);
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return usuarios;
		
		}
		public List<Usuario> findLastUser(){
			List<Usuario> usuarios = new ArrayList<>();
			DBConnection conexion = DBConnection.getInstance();
			//SE DEBE AÑADIR ID AUTO INCREMENT A TABLA USUARIOS, PARA ASI MOSTRAR AL ULTIMO REGISTRADO
			String sql = "SELECT nombre, run, fechanacimiento, tipousuario FROM usuarios ORDER BY id DESC LIMIT 1;";
			
			try {
				PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				
				if(rs.next()) {
					String nombreusuario = rs.getString("nombre");
					String run = rs.getString("run");
					String fechanacimiento = rs.getString("fechanacimiento");
					String tipousuario = rs.getString("tipousuario");
					
					Usuario usuario = new Usuario(nombreusuario, run, fechanacimiento, tipousuario);
					
					usuarios.add(usuario);
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return usuarios;
		}
		
		public Usuario saveUser(Usuario usuario) {
			String sql = "INSERT INTO usuarios(run, nombre, fechanacimiento, tipousuario) VALUES (?, ?, ?, ?);";
			 
			try {
				PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
				
				statement.setString(2, usuario.getRun());
				statement.setString(1, usuario.getNombreUsuario());
				statement.setString(3, usuario.getFechaNacimiento());
				statement.setString(4, usuario.getTipoUsuario());
				
				statement.executeUpdate();
				return usuario;
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return null;
			}
		}
	public boolean deleteUser(String run) {
		DBConnection conexion = DBConnection.getInstance();
		String sql = "DELETE FROM usuarios WHERE run = ?;";
		
		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, run);
			int rowsAffected = statement.executeUpdate();
			
			return rowsAffected>0;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	public Usuario findUserRun(String run) {
		Usuario usuario = null;
		String sql = "SELECT * FROM usuarios WHERE run = ?;";
		
		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, run);
			ResultSet rs = statement.executeQuery();
			
			if(rs.next()) {
				String nombreusuario = rs.getString("nombre");
				String fechanacimiento = rs.getString("fechanacimiento");
				String tipousuario = rs.getString("tipousuario");
				
				usuario = new Usuario(nombreusuario, run, fechanacimiento, tipousuario);
			} 
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return usuario;
	}
	
	public Usuario updateUser(Usuario usuario) {
		String sql = "UPDATE usuarios SET run = ?, nombre = ?, fechanacimiento = ?, tipousuario = ? WHERE id = ?;";
		
		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, usuario.getRun());
			statement.setString(2, usuario.getNombreUsuario());
			statement.setString(3, usuario.getFechaNacimiento());
			statement.setString(4, usuario.getTipoUsuario());
			
			statement.executeUpdate();
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return usuario;
	}
}
