package grupal7modulo5.controllers;

import java.util.List;

import grupal7modulo5.controllers.interfaces.ICapacitacionController;
import grupal7modulo5.models.entitys.Capacitacion;
import grupal7modulo5.services.CapacitacionService;

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

	@Override
	public List<Capacitacion> findLastCapacitacion() {
		return capacitacionService.findLastCapacitacion();
	}


}