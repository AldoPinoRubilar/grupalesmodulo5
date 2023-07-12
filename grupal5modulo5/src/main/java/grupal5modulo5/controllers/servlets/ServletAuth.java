package grupal5modulo5.controllers.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import grupal5modulo5.controllers.LoginUserController;

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

		// Crear una instancia del controlador

		LoginUserController loginUserController = new LoginUserController();
		String username = request.getParameter("username");
		// String username = request.getParameter("usuario");
		String password = request.getParameter("password");
		// System.out.println(username);
		String result = loginUserController.login(username, password);
		String tipoUsuario = "";
		
		if (!result.equals("false")) {
			    if (username.equals("cliente")) {
			        tipoUsuario = "CLIENTE";
			    } else if (username.equals("admin")) {
			        tipoUsuario = "ADMIN";
			    } else if (username.equals("profesional")) {
			        tipoUsuario = "PROFESIONAL";
			        }
			// guardamos las credenciales
			guardarCredenciales(username, password, response);
			HttpSession session = request.getSession();
			session.setAttribute("usuario", tipoUsuario);
		}
		response.setContentType("text/html; charset-UTF-8");
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
		out.close();
	}

	private void guardarCredenciales(String username, String password, HttpServletResponse response) {
		// aqui voy a crear la cookie

		Cookie cookie = new Cookie("credenciales", username);
		cookie.setMaxAge(1000); // la edad la cookie "el tiempo que va durar"
		response.addCookie(cookie);

	}
}