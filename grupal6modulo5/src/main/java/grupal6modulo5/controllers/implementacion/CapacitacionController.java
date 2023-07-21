package grupal6modulo5.controllers.implementacion;

import java.util.List;

import grupal6modulo5.controllers.interfaces.ICapacitacionController;
import grupal6modulo5.models.entitys.Capacitacion;
import grupal6modulo5.services.CapacitacionService;

public class CapacitacionController implements ICapacitacionController {

	CapacitacionService capacitacionService = new CapacitacionService();

	@Override
	public List<Capacitacion> findAllCapacitaciones() {
		return capacitacionService.findAllCapacitaciones();
	}

	@Override
	public Capacitacion saveCapacitacion(Capacitacion capacitacion) {
		Capacitacion savedCapacitacion = capacitacionService.saveCapacitacion(capacitacion);

	    if (savedCapacitacion != null) {
	        System.out.println("Capacitacion saved successfully");
	    } else {
	        System.out.println("Failed to save Capacitacion");
	    }

	    return savedCapacitacion;
	}

	@Override
	public void deleteCapacitacionById(String id) {
		boolean isDeleted = capacitacionService.deleteCapacitacionById(id);

		if (isDeleted) {
			System.out.println("Capacitacion deleted");
		} else {
			System.out.println("Failed to delete Capacitacion");
		}

	}

	@Override
	public Capacitacion updateCapacitacion(Capacitacion capacitacion) {
		return capacitacionService.updateCapacitacion(capacitacion);
	}

	@Override
	public Capacitacion findCapacitacionById(String id) {
		return capacitacionService.findCapacitacionById(id);
	}

}