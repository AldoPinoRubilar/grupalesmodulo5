package grupal7modulo5.controllers.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrearYActualizarUsuario
 */
@WebServlet("/CrearYActualizarUsuario")
public class CrearYActualizarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CrearYActualizarUsuario() {
        super();
    }
    
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("crearYActualizarUsuario.jsp");
		dispatcher.forward(request, response);
	}

}
