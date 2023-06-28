package grupal4modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton Servlet
 *         implementation class ServletCapacitacion
 */
@WebServlet("/ServletCrearCapacitacion")
public class ServletCrearCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletCrearCapacitacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String nombreCapacitacion = request.getParameter("nombreCapacitacion");
		String idCapacitacion = request.getParameter("idCapacitacion");
		String diaCapacitacion = request.getParameter("diaCapacitacion");
		String horaCapacitacion = request.getParameter("horaCapacitacion");
		String lugarCapacitacion = request.getParameter("lugarCapacitacion");
		String duracionCapacitacion = request.getParameter("duracionCapacitacion");
		String cantidadAsistentes = request.getParameter("cantidadAsistentes");
		String observacionesCapacitacion = request.getParameter("observacionesCapacitacion");

		System.out.println(nombreCapacitacion + " " + idCapacitacion + " " + diaCapacitacion + horaCapacitacion + " "
				+ lugarCapacitacion + " " + duracionCapacitacion + " " + cantidadAsistentes + "\n"
				+ observacionesCapacitacion);

	}

}
