package grupal4modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		String tipoUsuario = "";
		boolean validarUsuario = false;
		RequestDispatcher requestDispatcher;
		String usuarioIncorrecto = "";
		HttpSession session = request.getSession();

		while (!validarUsuario) {
			if (usuario.equals("cliente") && password.equals("1234")) {
				tipoUsuario = "CLIENTE";
				validarUsuario = true;
				session.setAttribute("usuario", tipoUsuario);
				response.sendRedirect("ServletHome");
			} else if (usuario.equals("admin") && password.equals("1234")) {
				tipoUsuario = "ADMINISTRATIVO";
				validarUsuario = true;
				session.setAttribute("usuario", tipoUsuario);
				response.sendRedirect("ServletHome");
			} else if (usuario.equals("profesional") && password.equals("1234")) {
				tipoUsuario = "PROFESIONAL";
				validarUsuario = true;
				session.setAttribute("usuario", tipoUsuario);
				response.sendRedirect("ServletHome");
			} else {
				usuarioIncorrecto = "Usuario no encontrado! intente nuevamente.";
				response.sendRedirect("ServletLogin");
				break;
			}
		}
	}
}