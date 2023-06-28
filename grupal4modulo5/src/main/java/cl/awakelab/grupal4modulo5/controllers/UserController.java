package cl.awakelab.grupal4modulo5.controllers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.google.gson.Gson;

import cl.awakelab.grupal4modulo5.conexion.DBConnection;
import cl.awakelab.grupal4modulo5.controllers.interfaces.IUserController;
import cl.awakelab.grupal4modulo5.models.entitys.User;

public class UserController implements IUserController {

	@Override
	public String login(String username, String password) {

		Gson gson = new Gson();
		DBConnection conexion = DBConnection.getInstance();

		String sql = "SELECT * FROM usuariosconlogueo WHERE nombreusuario = ? and clave = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				String name = rs.getString("nombreusuario");
				String pass = rs.getString("clave");

				User user = new User(name, pass);
				return gson.toJson(user);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "false";
	}

}
