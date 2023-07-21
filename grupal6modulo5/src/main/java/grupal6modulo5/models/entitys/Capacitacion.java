package grupal6modulo5.models.entitys;

/**
 * 
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton
 * @version 1.0.0
 *
 *          clase capacitacion contiene el constructor para crear sus
 *          instancias.
 * 
 */
public class Capacitacion {

	private String nombreCapacitacion;
	private String id;
	private String rutCliente;
	private String dia;
	private String hora;
	private String lugar;
	private String duracion;
	private int cantidadAsistentes;

	// constructor vacio
	public Capacitacion() {
	}

	// constructor con parametros aptos para nuevos datos

	public Capacitacion(String nombreCapacitacion, String id, String rutCliente, String dia, String hora, String lugar, String duracion,
			int cantidadAsistentes) {
		
		this.nombreCapacitacion = nombreCapacitacion;
		this.id = id;
		this.rutCliente = rutCliente;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantidadAsistentes = cantidadAsistentes;
	}

	// getters and setters
	public String getNombreCapacitacion() {
		return nombreCapacitacion;
	}

	public void setNombreCapacitacion(String nombreCapacitacion) {
		this.nombreCapacitacion = nombreCapacitacion;
	}

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(String rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public int getCantidadAsistentes() {
		return cantidadAsistentes;
	}

	public void setCantidadAsistentes(int cantidadAsistentes) {
		this.cantidadAsistentes = cantidadAsistentes;
	}

	// metodo utilizado para desplegar los datos por pantalla
	@Override
	public String toString() {
		return "Capacitacion [identificador=" + id + ", rutCliente=" + rutCliente + ", dia=" + dia
				+ ", hora=" + hora + ", lugar=" + lugar + ", duracion=" + duracion + ", cantidadAsistentes="
				+ cantidadAsistentes + "]";
	}

}
