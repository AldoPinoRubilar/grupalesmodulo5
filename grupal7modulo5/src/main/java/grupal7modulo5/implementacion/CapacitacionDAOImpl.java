package grupal7modulo5.implementacion;

import java.util.ArrayList;
import java.util.List;

import grupal7modulo5.controllers.interfaces.CapacitacionDAO;
import grupal7modulo5.models.entitys.Capacitacion;

public class CapacitacionDAOImpl implements CapacitacionDAO {
	
	public List<Capacitacion> obtenerCapacitaciones(){
	//Generamos una lista de capacitaciones
		List<Capacitacion> capacitaciones = new ArrayList<>();
		capacitaciones.add(new Capacitacion
	               ("Capacitacion de prueba 01", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", 2));
		capacitaciones.add(new Capacitacion
				   ("Capacitacion de prueba 01", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", 2));
		capacitaciones.add(new Capacitacion
				   ("Capacitacion de prueba 01", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", "datosSimulados", 2));
		
		return capacitaciones;
	}
	//Simulamos el registro imprimiendo los datos de la capacitacion
	@Override
	public void registrarCapacitacion(Capacitacion capacitacion) {
		System.out.println("Registrando capacitacion: ");
		System.out.println("Nombre"+capacitacion.getNombreCapacitacion());
		System.out.println("Rut Cliente: "+capacitacion.getRutCliente());
	}

}
