package mite.isc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String alpha=request.getParameter("user");
		String beta=request.getParameter("passkey");
		
		if(alpha.equals("information")&&beta.equals("zerone"))
		{
			RequestDispatcher dispatch=request.getRequestDispatcher("home.jsp");
			request.setAttribute("info", "success login");
			dispatch.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatch=request.getRequestDispatcher("index.jsp");
			request.setAttribute("info", "Invalid credentials");
			dispatch.forward(request, response);
		}
	}

}
