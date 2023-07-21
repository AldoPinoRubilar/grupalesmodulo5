package grupal6modulo5.controllers.servlets.capacitaciones;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal6modulo5.controllers.implementacion.UsuarioController;
import grupal6modulo5.models.entitys.Usuario;

/**
 * Servlet implementation class ServletCrudUsuario
 */
@WebServlet("/ServletCrudUsuario")
public class ServletCrudUsuario extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String option = request.getParameter("option");
		// creo la instancia del controlador
		UsuarioController usuarioController = new UsuarioController();

		switch (option) {
		case "saveUsuario": {

			String id = request.getParameter("id");
			String run = request.getParameter("rutUsuario");
			String nombre = request.getParameter("nombreUsuario");
			String fechanacimiento = request.getParameter("fechaNacimiento");
			String tipousuario = request.getParameter("tipoUsuario");

			Usuario newUsuario = new Usuario(id, run, nombre, fechanacimiento, tipousuario);

			// Registro de capacitacion a la base de datos.
			usuarioController.saveUsuario(newUsuario);
			response.sendRedirect("ServletListarUsuarios");
			break;
		}
		case "deleteUsuario": {
			int idDelete = Integer.parseInt(request.getParameter("id"));
			// al controlador
			usuarioController.deleteUsuarioById(idDelete);
			response.sendRedirect("ServletListarUsuarios");
			break;
		}

		case "formUpdateUsuario": {
			int idFormUsuario = Integer.parseInt(request.getParameter("idCapacitacion"));
			// llamar al controlador
			Usuario usuario = usuarioController.findUsuarioById(idFormUsuario); // ya tenemos
																				// al

			request.setAttribute("usuarios", usuario);
			response.sendRedirect("ServletListarUsuarios");
			break;
		}

		case "updateUsuario": {
			// toda la logica para actualizar
			String run = request.getParameter("run");
			String nombre = request.getParameter("nombre");
			String fechanacimiento = request.getParameter("fechanacimiento");
			String tipousuario = request.getParameter("tipousuario");

			Usuario updateUsuario = new Usuario(run, nombre, fechanacimiento, tipousuario);
			// llamar al controlador
			usuarioController.updateUsuario(updateUsuario);

			request.setAttribute("usuarios", usuarioController.findAllUsuarios());
			response.sendRedirect("ServletListarUsuarios");
			break;
		}

		default:
			throw new IllegalArgumentException("Unexpected value: " + option);

		}
		// fin switch
		// request.getRequestDispatcher(url).forward(request, response);

	}

}
