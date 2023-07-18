package grupal7modulo5.controllers.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import grupal7modulo5.controllers.UsuarioController;

/**
 * Servlet implementation class ServletUsuarioRegistrado
 */
@WebServlet("/ServletUsuarioRegistrado")
public class ServletUsuarioRegistrado extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletUsuarioRegistrado() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException {
    	UsuarioController usuarioController = new UsuarioController();
    	System.out.println("Servlet Last User inside");
    	
    	request.setAttribute("usuarios" , usuarioController.findLastUser());
    	getServletContext().getRequestDispatcher("/usuarioRegistrado.jsp").forward(request, response);
    	
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
