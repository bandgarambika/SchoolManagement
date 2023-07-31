

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addStudent
 */
@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addStudent() {
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
		PrintWriter out=response.getWriter();
		doGet(request, response);
		String id =request.getParameter("id");
		String name =request.getParameter("name");
		String district =request.getParameter("district");
		String state =request.getParameter("state");
		String date =request.getParameter("date");
		String gender =request.getParameter("gender");
		String email =request.getParameter("email");
		String phone=request.getParameter("phone");
		String classname=request.getParameter("classname");
		String age=request.getParameter("age");
		String blood=request.getParameter("blood");
		String mname=request.getParameter("mname");
		String address=request.getParameter("address");
		System.out.println(name);
		
		

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "vijay");
		            if(!connection.isClosed())
		            System.out.println("Successfully connected");
		          PreparedStatement  ps=connection.prepareStatement("insert into sms.students(student_id, student_name, district, state, birthdate, gender, email, phone, classname, age, blood_group, mother_name, address)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
					ps.setString(1,id);
					ps.setString(2,name);
					ps.setString(3,district);
					ps.setString(4,state);
					ps.setString(5,date);
					ps.setString(6,gender);
					ps.setString(7,email);
					ps.setString(8,phone);
					ps.setString(9,classname);
					ps.setString(10,age);
					ps.setString(11,blood);
					ps.setString(12,mname);
					ps.setString(13,address);
				     ps.execute();
					System.out.println("Data Stored");
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Information is Save Successfully');");
					out.println("location='#';");
					out.println("</script>");
//					if(rs.next())
//					{
//						RequestDispatcher rd=request.getRequestDispatcher("AddStudent.jsp"); 
//						rd.forward(request, response);	
//						
//					}
//					else
//					{
//						System.out.println("vv");
//					}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
