package mite.isc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EnrollServlet
 */
@WebServlet("/inserting")
public class EnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollServlet() {
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
		String a=request.getParameter("regno");
		String b=request.getParameter("stu_name");
		String c=request.getParameter("address");
		String d=request.getParameter("contact");
		String e=request.getParameter("email");
		String f=request.getParameter("gender");
		String g=request.getParameter("career");
		String h=request.getParameter("cgpa");
		String i=request.getParameter("puc");
		String j=request.getParameter("dept");
		String k=request.getParameter("skills");
		
		long reg=Long.parseLong(a);
		long cont=Long.parseLong(d);
		double cg=Double.parseDouble(h);
		double pu=Double.parseDouble(i);
		
		try {
			// Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			// connection: url, username,pass
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mite","root","");
			// writing query
			String qry="insert into student(regno,name,gender,dept,address,email,contact,cgpa,puc,career,skills) values(?,?,?,?,?,?,?,?,?,?,?)";
			// Writing statement
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setLong(1, reg);ps.setString(2, b);ps.setString(3, f);ps.setString(4, j);ps.setString(5, c);
			ps.setString(6, e);ps.setLong(7, cont);ps.setDouble(8, cg);ps.setDouble(9, pu);
			ps.setString(10, g);ps.setString(11, k);
			
			//execute 
			int ack=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("enroll.jsp");
			if(ack!=0)
			{
				System.out.println("REcord inserted");
				request.setAttribute("info", b+" has enrolled successfully");
			}
			else
			{
				System.out.println("Record not ionserted");
				request.setAttribute("info", b+" hasn't enrolled");
			}
			dis.forward(request, response);
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
