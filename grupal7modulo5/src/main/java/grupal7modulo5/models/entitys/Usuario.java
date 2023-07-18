package grupal7modulo5.models.entitys;

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
	
	private String tipousuario;
	private String run;
	private String nombreusuario;
	private String fechaNacimiento;

	// Constructor vacio
	public Usuario() {

	}

	// constructor con parametros aptos para nuevos datos
	public Usuario(String nombreusuario, String run, String fechaNacimiento, String tipousuario) {
		super();
		this.nombreusuario = nombreusuario;
		this.run = run;
		this.fechaNacimiento = fechaNacimiento;
		this.tipousuario=tipousuario;
	}

	// getters and setters
		
	public String getRun() {
		return run;
	}

	public void setRun(String run) {
		this.run = run;
	}

	public String getNombreUsuario() {
		return nombreusuario;
	}

	public void setNombre(String nombreusuario) {
		this.nombreusuario = nombreusuario;
	}
	
	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	public String getTipoUsuario() {
		return tipousuario;
	}
	
	public void setTipoUsuario(String tipousuario) {
		this.tipousuario=tipousuario;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Usuario [tipousuario" + tipousuario + "run=" + run + ", nombreusuario=" + nombreusuario + ", fechaNacimiento=" + fechaNacimiento
				+ "]";
	}

}