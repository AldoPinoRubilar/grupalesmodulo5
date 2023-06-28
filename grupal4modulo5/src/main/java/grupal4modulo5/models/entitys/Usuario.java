package grupal4modulo5.models.entitys;

/**
 * 
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton
 * @version 1.0.0
 *
 *          clase usuario que contiene los datos escenciales para todos los
 *          tipos de usuario
 *
 */

public class Usuario {

	private String run;
	private String nombre;
	private String fechaNacimiento;
	private String observaciones;

	// Constructor vacio
	public Usuario() {

	}

	// constructor con parametros aptos para nuevos datos
	public Usuario(String run, String nombre, String fechaNacimiento, String observaciones) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.observaciones = observaciones;
	}

	// getters and setters
	public String getRun() {
		return run;
	}

	public void setRut(String run) {
		this.run = run;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Usuario [run=" + run + ", nombre=" + nombre + ", fechaNacimiento=" + fechaNacimiento
				+ ", observaciones=" + observaciones + "]";
	}
}