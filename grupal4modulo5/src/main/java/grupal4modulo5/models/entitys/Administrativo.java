package grupal4modulo5.models.entitys;

/**
 * 
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton
 * @version 1.0.0
 * 
 *          clase administrativo se extiende de usuario.
 */
public class Administrativo extends Usuario {

	private String area;
	private String experienciaPrevia;

	// Constructor vacio
	public Administrativo() {

	}

	// constructor con parametros aptos para nuevos datos
	public Administrativo(String run, String nombre, String fechaNacimiento, String observaciones, String area,
			String experienciaPrevia) {
		super(run, nombre, fechaNacimiento, observaciones);
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
	}

	// getters and setters
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperienciaPrevia() {
		return experienciaPrevia;
	}

	public void setExperienciaPrevia(String experienciaPrevia) {
		this.experienciaPrevia = experienciaPrevia;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experienciaPrevia=" + experienciaPrevia + "]";
	}
}
