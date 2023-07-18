package grupal7modulo5.controllers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.google.gson.Gson;

import grupal7modulo5.conexion.DBConnection;
import grupal7modulo5.controllers.interfaces.ILoginUserController;
import grupal7modulo5.models.entitys.LoginUser;

public class LoginUserController implements ILoginUserController {

	@Override
	public String login(String nombreusuario, String clave) {

		Gson gson = new Gson();
		DBConnection conexion = DBConnection.getInstance();

		String sql = "SELECT * FROM usuariosconlogueo WHERE nombreusuario = ? and clave = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, nombreusuario);
			statement.setString(2, clave);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				String name = rs.getString("nombreusuario");
				String pass = rs.getString("clave");

				LoginUser loginuser = new LoginUser(name, pass);
				return gson.toJson(loginuser);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "false";
	}

}
