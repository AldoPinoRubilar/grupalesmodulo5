package test;

import java.sql.ResultSet;
import java.sql.Statement;

import grupal4modulo5.conexion.DBConnection;
import grupal4modulo5.models.entitys.User;

public class DBTestConnection {

	private static DBConnection instanceDbConnection;

	DBTestConnection() {
		instanceDbConnection = DBConnection.getInstance();
	}

	public static void main(String[] args) {
		new DBTestConnection();
		findAllLogin();

	}

	public static void findAllLogin() {

		String sql = "SELECT * FROM usuariosconlogueo";

		try {
			Statement statement = instanceDbConnection.getConnection().createStatement();
			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				// String run = resultSet.getString("run");
				String loginuser = resultSet.getString("nombreusuario");
				String clave = resultSet.getString("clave");

				User user = new User(loginuser, clave);
				System.out.println(user.toString());
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
