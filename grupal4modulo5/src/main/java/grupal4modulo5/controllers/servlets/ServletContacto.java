package grupal4modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Aldo Pino, Sebastian Hernandez, Freddy Yevenes, Nestor Leyton Servlet
 *         implementation class ServletContacto
 */

@WebServlet("/ServletContacto")
public class ServletContacto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletContacto() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("contactoCliente.jsp");
		dispatcher.forward(request, response);
	}
}