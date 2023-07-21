package test;

import java.sql.ResultSet;
import java.sql.Statement;

import grupal6modulo5.conexion.DBConnection;
import grupal6modulo5.models.entitys.LoginUser;

public class DBTestConnection {

	private static DBConnection instanceDbConnection;

	DBTestConnection() {
		instanceDbConnection = DBConnection.getInstance();
	}

	public static void main(String[] args) {
		new DBTestConnection();
		findAllLoginUser();

	}

	public static void findAllLoginUser() {

		String sql = "SELECT * FROM usuariosconlogueo";

		try {
			Statement statement = instanceDbConnection.getConnection().createStatement();
			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				// String run = resultSet.getString("run");
				String nombreUsuario = resultSet.getString("username");
				String clave = resultSet.getString("password");

				LoginUser loginuser = new LoginUser(nombreUsuario, clave);
				System.out.println(loginuser.toString());
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
