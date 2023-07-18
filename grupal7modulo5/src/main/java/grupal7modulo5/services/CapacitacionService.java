package grupal7modulo5.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import grupal7modulo5.conexion.DBConnection;
import grupal7modulo5.models.entitys.Capacitacion;

public class CapacitacionService {

	DBConnection conexion = DBConnection.getInstance();

	public List<Capacitacion> findAllCapacitaciones() {

		List<Capacitacion> capacitaciones = new ArrayList<>();
		DBConnection conexion = DBConnection.getInstance();
		String sql = "SELECT CONCAT('CAP-', id) AS identificador, nombrecapacitacion, rutcliente, dia, hora, lugar, duracion, cantidadasistentes FROM capacitaciones;";

		try {

			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				String nombrecapacitacion = rs.getString("nombrecapacitacion");
				String identificador = rs.getString("identificador");
				String rutcliente = rs.getString("rutcliente");
				String dia = rs.getString("dia");
				String hora = rs.getString("hora");
				String lugar = rs.getString("lugar");
				String duracion = rs.getString("duracion");
				int cantidadasistentes = rs.getInt("cantidadasistentes");

				Capacitacion capacitacion = new Capacitacion(nombrecapacitacion, identificador, rutcliente, dia, hora, lugar, duracion,
						cantidadasistentes);

				capacitaciones.add(capacitacion);
				// System.out.println(capacitaciones);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return capacitaciones;
	}
	
	
	public List<Capacitacion> findLastCapacitacion() {
	    List<Capacitacion> capacitaciones = new ArrayList<>();
	    DBConnection conexion = DBConnection.getInstance();
	    String sql = "SELECT CONCAT('CAP-', id) AS identificador, nombrecapacitacion, rutcliente, dia, hora, lugar, duracion, cantidadasistentes FROM capacitaciones ORDER BY id DESC LIMIT 1;";

	    try {
	        PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
	        ResultSet rs = statement.executeQuery();

	        if (rs.next()) {
	        	String nombrecapacitacion = rs.getString("nombrecapacitacion");
				String identificador = rs.getString("identificador");
				String rutcliente = rs.getString("rutcliente");
				String dia = rs.getString("dia");
				String hora = rs.getString("hora");
				String lugar = rs.getString("lugar");
				String duracion = rs.getString("duracion");
				int cantidadasistentes = rs.getInt("cantidadasistentes");

	            Capacitacion capacitacion = new Capacitacion(nombrecapacitacion, identificador, rutcliente, dia, hora, lugar, duracion,
						cantidadasistentes);

	            capacitaciones.add(capacitacion);
	        }
	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	    }

	    return capacitaciones;
	}
	

public Capacitacion saveCapacitacion(Capacitacion capacitacion) {
		
		String sql = "INSERT INTO capacitaciones(nombrecapacitacion, rutcliente, dia, hora, lugar, duracion, cantidadasistentes) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		try {
			
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);

			statement.setString(1, capacitacion.getNombreCapacitacion());
			statement.setString(2, capacitacion.getRutCliente());
			statement.setString(3, capacitacion.getDia());
			statement.setString(4, capacitacion.getHora());
			statement.setString(5, capacitacion.getLugar());
			statement.setString(6, capacitacion.getDuracion());
			statement.setInt(7, capacitacion.getCantidadAsistentes());
			
			statement.executeUpdate();
			return capacitacion;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}		
	}
	
	public boolean deleteCapacitacionById(String idCapacitacion) {

		DBConnection conexion = DBConnection.getInstance();
		String sql = "DELETE FROM capacitaciones WHERE id = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, idCapacitacion);
			int rowsAffected = statement.executeUpdate();

			return rowsAffected > 0;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	public Capacitacion findCapacitacionById(String idCapacitacion) {

		Capacitacion capacitacion = null;
		String sql = "SELECT * FROM capacitaciones WHERE id = ?";

		try {

			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(1, idCapacitacion);
			ResultSet rs = statement.executeQuery();

			if (rs.next()) {
				String nombrecapacitacion = rs.getString("nombrecapacitacion");
				String identificador = rs.getString("identificador");
				String rutcliente = rs.getString("rutcliente");
				String dia = rs.getString("dia");
				String hora = rs.getString("hora");
				String lugar = rs.getString("lugar");
				String duracion = rs.getString("duracion");
				int cantidadasistentes = rs.getInt("cantidadasistentes");

				capacitacion = new Capacitacion(nombrecapacitacion, identificador, rutcliente, dia, hora, lugar, duracion,
						cantidadasistentes);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return capacitacion;
	}

	public Capacitacion updateCapacitacion(Capacitacion capacitacion) {

		String sql = "UPDATE capacitaciones SET  rutcliente = ?, nombrecapacitacion = ?, dia = ?, hora = ?, lugar = ?, duracion = ?, cantidadasistentes = ? WHERE identificador = ?";

		try {
			PreparedStatement statement = conexion.getConnection().prepareStatement(sql);
			statement.setString(2, capacitacion.getNombreCapacitacion());
			statement.setString(3, capacitacion.getRutCliente());
			statement.setString(4, capacitacion.getDia());
			statement.setString(5, capacitacion.getHora());
			statement.setString(6, capacitacion.getLugar());
			statement.setString(7, capacitacion.getDuracion());
			statement.setInt(8, capacitacion.getCantidadAsistentes());

			statement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return capacitacion;
	}

}