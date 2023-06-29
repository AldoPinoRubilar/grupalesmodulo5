package grupal5modulo5.controllers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.google.gson.Gson;

import grupal5modulo5.conexion.DBConnection;
import grupal5modulo5.controllers.interfaces.ILoginUserController;
import grupal5modulo5.models.entitys.LoginUser;

public class LoginUserController implements ILoginUserController {

	@Override
	public String login(String username, String password) {

		Gson gson = new Gson();
		DBConnection conexion = DBConnection.getInstance();

		String sql = "SELECT * FROM usuariosconlogueo WHERE username = ? and password = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				String name = rs.getString("username");
				String pass = rs.getString("password");

				LoginUser loginuser = new LoginUser(name, pass);
				return gson.toJson(loginuser);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "false";
	}

}
