package grupal7modulo5.controllers.interfaces;

import java.util.List;

import grupal7modulo5.models.entitys.Capacitacion;

//cree una interface para la clase Capacitacion
public interface CapacitacionDAO {
	/*
	 * En ella deben estar declarados dos métodos: uno que retorne una lista de
	 * objetos de tipo Capacitacion (no deberecibir ningún parámetro), y otro que
	 * reciba un objeto de tipo Capacitacion y lo “registre” en sistema (no se pide
	 * que almacene nada, solo se simulará una acción).
	 */
	
	// Lista de objetos de tipo Capacitacion
	List<Capacitacion> obtenerCapacitaciones();
	// Otro que reciba un objeto de tipo Capacitacion
	void registrarCapacitacion(Capacitacion capacitacion);
	
}
