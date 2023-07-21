package grupal6modulo5.controllers.interfaces;

import java.util.List;

import grupal6modulo5.models.entitys.Capacitacion;

public interface ICapacitacionController {

	public List<Capacitacion> findAllCapacitaciones();

	// crear
	public Capacitacion saveCapacitacion(Capacitacion capacitacion);

	// eliminar por id
	public void deleteCapacitacionById(String id);

	// actualizar
	public Capacitacion updateCapacitacion(Capacitacion capacitacion);

	// para poder buscar por id
	public Capacitacion findCapacitacionById(String id);

}
