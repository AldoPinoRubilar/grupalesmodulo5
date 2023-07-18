package grupal7modulo5.controllers.servlets.crud;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal7modulo5.controllers.UsuarioController;
import grupal7modulo5.models.entitys.Usuario;

/**
 * Servlet implementation class ServletCrudUsuario
 */
@WebServlet("/ServletCrudUsuario")
public class ServletCrudUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		String option = request.getParameter("option");
		
		UsuarioController usuarioController = new UsuarioController();
		
		switch (option) {
		case "saveUser": {
			String nombreusuario = request.getParameter("nombreusuario");
			String run = request.getParameter("run");
			String fechanacimiento = request.getParameter("fechanacimiento");
			String tipousuario = request.getParameter("tipousuario");
			
			Usuario newUsuario = new Usuario(run, nombreusuario, fechanacimiento, tipousuario);
			
			usuarioController.saveUser(newUsuario);
			response.sendRedirect("ServletUsuarioRegistrado");
			break;
		}
		case "deleteUser": {
			String runDelete = request.getParameter("run");
			
			usuarioController.deleteUser(runDelete);
			response.sendRedirect("ServletListarUsuarios");
			break;
		}
		case "updateUser": {
			String run = request.getParameter("run");
			String nombreusuario = request.getParameter("nombreusuario");
			String fechanacimiento = request.getParameter("fechanamiciento");
			String tipousuario = request.getParameter("tipousuario");
			
			Usuario updateUsuario = new Usuario(run, nombreusuario, fechanacimiento, tipousuario);
			
			usuarioController.updateUser(updateUsuario);
			
			request.setAttribute("usuario", usuarioController.findAllUser());
			response.sendRedirect("ServletListarUsuarios");
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: "+option);
		}
	}
}
