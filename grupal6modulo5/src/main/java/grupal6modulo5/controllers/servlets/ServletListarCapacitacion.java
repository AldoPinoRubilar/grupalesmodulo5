package grupal6modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal6modulo5.controllers.implementacion.CapacitacionController;

/**
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton Servlet
 *         implementation class ServletCapacitacion
 */
@WebServlet("/ServletListarCapacitacion")
public class ServletListarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletListarCapacitacion() {
		super();

	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CapacitacionController capacitacionController = new CapacitacionController();
		System.out.println("Servlet Listar Capacitacion inside");

		request.setAttribute("capacitaciones", capacitacionController.findAllCapacitaciones());
		getServletContext().getRequestDispatcher("/listarCapacitacion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}