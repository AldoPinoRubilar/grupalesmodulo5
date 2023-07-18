package grupal5modulo5.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import grupal5modulo5.conexion.DBConnection;
import grupal5modulo5.models.entitys.Usuario;

public class UsuarioService {

	DBConnection conexion = DBConnection.getInstance();

	public List<Usuario> findAllUsuarios() {

		List<Usuario> usuarios = new ArrayList<>();
		DBConnection conexion = DBConnection.getInstance();
		String sql = "SELECT * FROM usuarios;";

		try {

			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				String identificador = rs.getString("id");
				String run = rs.getString("run");
				String nombre = rs.getString("nombre");
				String fechaNacimiento = rs.getString("fechaNacimiento");
				String tipoUsuario = rs.getString("tipoUsuario");
				Usuario usuario = new Usuario(identificador, run, nombre, fechaNacimiento, tipoUsuario);
				usuarios.add(usuario);
				// System.out.println(usuarios);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return usuarios;
	}

	public Usuario saveUsuario(Usuario usuario) {

		String sql = "INSERT INTO usuarios(run, nombre, fechanacimiento, tipousuario) VALUES (?, ?, ?, ?)";

		try {

			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);

			statement.setString(1, usuario.getRun());
			statement.setString(2, usuario.getNombre());
			statement.setString(3, usuario.getFechaNacimiento());
			statement.setString(4, usuario.getTipoUsuario());

			statement.executeUpdate();
			return usuario;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public boolean deleteUsuarioById(int idUsuario) {

		DBConnection conexion = DBConnection.getInstance();
		String sql = "DELETE FROM usuarios WHERE id = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setInt(1, idUsuario);
			int rowsAffected = statement.executeUpdate();

			return rowsAffected > 0;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	public Usuario findUsuarioById(int idUsuario) {

		Usuario usuario = null;
		String sql = "SELECT * FROM usuarios WHERE id = ?";

		try {

			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setInt(1, idUsuario);
			ResultSet rs = statement.executeQuery();

			if (rs.next()) {
				String identificador = rs.getString("id");
				String run = rs.getString("run");
				String nombre = rs.getString("nombre");
				String fechaNacimiento = rs.getString("fechaNacimiento");
				String tipoUsuario = rs.getString("tipoUsuario");

				usuario = new Usuario(identificador, run, nombre, fechaNacimiento, tipoUsuario);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return usuario;
	}

	public Usuario updateUsuario(Usuario usuario) {

		String sql = "UPDATE usuarios SET  run = ?, nombre = ?, fechanacimiento = ?, tipousuario = ? WHERE run = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(2, usuario.getRun());
			statement.setString(3, usuario.getNombre());
			statement.setString(4, usuario.getFechaNacimiento());
			statement.setString(5, usuario.getTipoUsuario());

			statement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return usuario;
	}

}