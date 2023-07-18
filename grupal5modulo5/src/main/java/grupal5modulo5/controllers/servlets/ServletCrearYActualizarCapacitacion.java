package grupal5modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrearYActualizarCapacitacion
 */
@WebServlet("/ServletCrearYActualizarCapacitacion")
public class ServletCrearYActualizarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCrearYActualizarCapacitacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("crearYActualizarCapacitacion.jsp");
		dispatcher.forward(request, response);
	}
}