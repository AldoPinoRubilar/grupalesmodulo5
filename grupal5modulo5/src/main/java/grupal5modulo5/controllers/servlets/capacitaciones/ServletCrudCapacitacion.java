package grupal5modulo5.controllers.servlets.capacitaciones;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal5modulo5.controllers.CapacitacionController;
import grupal5modulo5.models.entitys.Capacitacion;

/**
 * Servlet implementation class ServeltCrudStudent
 */
@WebServlet("/ServletCrudCapacitacion")
public class ServletCrudCapacitacion extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String option = request.getParameter("option");
		// creo la instancia del controlador
		CapacitacionController capacitacionController = new CapacitacionController();

		switch (option) {
		case "saveCapacitacion": {

			String nombreCapacitacion = request.getParameter("nombreCapacitacion");
			String id = request.getParameter("id");
			String rutcliente = request.getParameter("rutCliente");
			String dia = request.getParameter("diaCapacitacion");
			String hora = request.getParameter("horaCapacitacion");
			String lugar = request.getParameter("lugarCapacitacion");
			String duracion = request.getParameter("duracionCapacitacion");
			int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));

			Capacitacion newCapacitacion = new Capacitacion(nombreCapacitacion, id, rutcliente, dia, hora, lugar,
					duracion, cantidadAsistentes);

			// Registro de capacitacion a la base de datos.
			capacitacionController.saveCapacitacion(newCapacitacion);
			response.sendRedirect("ServletListarCapacitacion");
			break;
		}
		case "deleteCapacitacion": {
			String idDelete = request.getParameter("idCapacitacion");
			// al controlador
			capacitacionController.deleteCapacitacionById(idDelete);
			response.sendRedirect("ServletListarCapacitacion");
			break;
		}

		case "formUpdateCapacitacion": {
			String idFormCapacitacion = request.getParameter("idCapacitacion");
			// llamar al controlador
			Capacitacion capacitacion = capacitacionController.findCapacitacionById(idFormCapacitacion); // ya tenemos
																											// al

			request.setAttribute("capacitaciones", capacitacion);
			response.sendRedirect("ServletListarCapacitacion");
			break;
		}

		case "updateCapacitacion": {
			// toda la logica para actualizar
			String nombreCapacitacion = request.getParameter("nombreCapacitacion");
			String id = request.getParameter("id");
			String rutcliente = request.getParameter("rutCliente");
			String dia = request.getParameter("dia");
			String hora = request.getParameter("hora");
			String lugar = request.getParameter("lugar");
			String duracion = request.getParameter("duracion");
			int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));

			Capacitacion updateCapacitacion = new Capacitacion(nombreCapacitacion, id, rutcliente, dia, hora, lugar,
					duracion, cantidadAsistentes);
			// llamar al controlador
			capacitacionController.updateCapacitacion(updateCapacitacion);

			request.setAttribute("capacitaciones", capacitacionController.findAllCapacitaciones());
			response.sendRedirect("ServletListarCapacitacion");
			break;
		}

		default:
			throw new IllegalArgumentException("Unexpected value: " + option);

		}
		// fin switch
		// request.getRequestDispatcher(url).forward(request, response);

	}

}
