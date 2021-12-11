package mite.isc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/showall")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Student> store=new ArrayList<Student>();// dynamic storage to keep objects
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mite","root","");
			String qry="select * from student";
			PreparedStatement ps=con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			Student tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new Student();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setName(rs.getString("name"));tmp.setAddress(rs.getString("address"));
				tmp.setCareer(rs.getString("career"));tmp.setCgpa(rs.getDouble("cgpa"));
				tmp.setContact(rs.getLong("contact"));tmp.setDept(rs.getString("dept"));
				tmp.setEmail(rs.getString("email"));tmp.setGender(rs.getString("gender"));
				tmp.setPlaced(rs.getString("placed"));tmp.setPuc(rs.getDouble("puc"));
				tmp.setRegno(rs.getLong("regno"));tmp.setSkills(rs.getString("skills"));
				tmp.setStatus(rs.getString("status"));
				store.add(tmp);
			}
			RequestDispatcher dis=request.getRequestDispatcher("list.jsp");
			request.setAttribute("data", store);
			dis.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
