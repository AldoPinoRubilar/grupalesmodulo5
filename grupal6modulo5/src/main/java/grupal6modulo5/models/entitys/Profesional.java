package grupal6modulo5.models.entitys;

/**
 * 
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton
 * @version 1.0.0
 *
 *          clase profesional se extiende de usuario.
 */
public class Profesional extends Usuario {

	private String titulo;
	private String fechaIngreso;

	// Constructor vacio
	public Profesional() {

	}

	// constructor con parametros aptos para nuevos datos
	public Profesional(String run, String nombre, String fechaNacimiento, String observaciones, String titulo,
			String fechaIngreso) {
		super(run, nombre, fechaNacimiento, observaciones);
		this.titulo = titulo;
		this.fechaIngreso = fechaIngreso;
	}

	// getters and setters
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFechaIngreso() {
		return fechaIngreso;
	}

	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Profesional [titulo=" + titulo + ", fechaIngreso=" + fechaIngreso + "]";
	}
}
