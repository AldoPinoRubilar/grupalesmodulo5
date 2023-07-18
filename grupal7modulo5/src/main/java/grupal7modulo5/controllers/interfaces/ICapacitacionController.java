package grupal7modulo5.controllers.interfaces;

import java.util.List;

import grupal7modulo5.models.entitys.Capacitacion;

public interface ICapacitacionController {
	
	//Listar capacitacion
	public List<Capacitacion> findAllCapacitaciones();
	
	//Mostrar la ultima capacitacion registrada
	public List<Capacitacion> findLastCapacitacion();
	
	// crear capacitacion
	public Capacitacion saveCapacitacion(Capacitacion capacitacion);

	// eliminar capacitacion por id
	public void deleteCapacitacionById(String id);

	// actualizar capacitacion
	public Capacitacion updateCapacitacion(Capacitacion capacitacion);

	// para poder buscar por id
	public Capacitacion findCapacitacionById(String id);

}
