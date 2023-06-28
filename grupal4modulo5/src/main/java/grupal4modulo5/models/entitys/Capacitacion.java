package grupal4modulo5.models.entitys;

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

	private Long identificador;
	private String rutCliente;
	private String dia;
	private String hora;
	private String lugar;
	private String origen;
	private int cantidadAsistentes;

	// constructor vacio
	public Capacitacion() {
	}

	// constructor con parametros aptos para nuevos datos
	public Capacitacion(Long identificador, String rutCliente, String dia, String hora, String lugar, String origen,
			int cantidadAsistentes) {

		this.identificador = identificador;
		this.rutCliente = rutCliente;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.origen = origen;
		this.cantidadAsistentes = cantidadAsistentes;
	}

	// getters and setters
	public Long getIdentificador() {
		return identificador;
	}

	public void setIdentificador(Long identificador) {
		this.identificador = identificador;
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

	public String getOrigen() {
		return origen;
	}

	public void setOrigen(String origen) {
		this.origen = origen;
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
		return "Capacitacion [identificador=" + identificador + ", rutCliente=" + rutCliente + ", dia=" + dia
				+ ", hora=" + hora + ", lugar=" + lugar + ", origen=" + origen + ", cantidadAsistentes="
				+ cantidadAsistentes + "]";
	}

}
