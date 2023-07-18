package grupal7modulo5.controllers.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal7modulo5.controllers.CapacitacionController;
/**
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton Servlet
 *         implementation class ServletCapacitacion
 */
@WebServlet("/ServletCapacitacionRegistrada")
public class ServletCapacitacionRegistrada extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletCapacitacionRegistrada() {
		super();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CapacitacionController capacitacionController = new CapacitacionController();
		System.out.println("Servlet Last Capacitacion inside");

		request.setAttribute("capacitaciones", capacitacionController.findLastCapacitacion());
		getServletContext().getRequestDispatcher("/capacitacionRegistrada.jsp").forward(request, response);
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
