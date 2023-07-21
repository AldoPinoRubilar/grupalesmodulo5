package grupal6modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal6modulo5.controllers.implementacion.UsuarioController;

/**
 * Servlet implementation class ServletListarUsuarios
 */
@WebServlet("/ServletListarUsuarios")
public class ServletListarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletListarUsuarios() {
		super();

	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UsuarioController usuarioController = new UsuarioController();
		System.out.println("Servlet Listar Usuarios inside");

		request.setAttribute("usuarios", usuarioController.findAllUsuarios());
		getServletContext().getRequestDispatcher("/listarUsuarios.jsp").forward(request, response);
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
