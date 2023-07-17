package cl.awakelab.grupal2modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletAuth
 */
@WebServlet("/ServletAuth")
public class ServletAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usuario = request.getParameter("nombreUsuario");
		String password = request.getParameter("claveUsuario");

		// RequestDispatcher requestDispatcher;

		if (usuario.equals("admin") && password.equals("1234")) {
			HttpSession session = request.getSession();

			session.setAttribute("usuario", usuario); // le acabo de añadir un atributo adicional a la session que es el
														// nombre usuario
			response.sendRedirect("contactoCliente.jsp");
			// requestDispatcher = request.getRequestDispatcher("home.jsp");

		} else {
			response.sendRedirect("login.jsp");
			// requestDispatcher = request.getRequestDispatcher("login.jsp");
		}
		// requestDispatcher.forward(request, response);
	}
}