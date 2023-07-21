package grupal6modulo5.models.entitys;

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

	private String id;
	private String run;
	private String nombre;
	private String fechaNacimiento;
	private String tipoUsuario;

	// Constructor vacio
	public Usuario() {

	}

	public Usuario(String run, String nombre, String fechaNacimiento, String tipoUsuario) {
		super();
		this.run = run;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.tipoUsuario = tipoUsuario;
	}

	// constructor con parametros aptos para nuevos datos
	public Usuario(String id, String run, String nombre, String fechaNacimiento, String tipoUsuario) {
		super();
		this.id = id;
		this.run = run;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.tipoUsuario = tipoUsuario;
	}

	// getters and setters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRun() {
		return run;
	}

	public void setRun(String run) {
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

	public String getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", run=" + run + ", nombre=" + nombre + ", fechaNacimiento=" + fechaNacimiento
				+ ", tipoUsuario=" + tipoUsuario + "]";
	}
}