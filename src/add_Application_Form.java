

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class add_Application_Form
 */
@WebServlet("/add_Application_Form")
public class add_Application_Form extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	ResultSet rs;
	Connection connection;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_Application_Form() {
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
		response.setContentType("html");
		PrintWriter out=response.getWriter();
		try {
			 String connectionURL = "jdbc:mysql://localhost:3306/sms";
		            connection = null; 
		            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		            connection = DriverManager.getConnection(connectionURL, "root", "vijay");
		            if(!connection.isClosed())
		                 System.out.println("Successfully connected");
		          //  connection.close();
		        }catch(Exception ex){
		           System.out.println("Unable to connect to database"+ex);
		        }
		
	//	int staff_id=Integer.parseInt(request.getParameter("staff_id"));
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String birthday=request.getParameter("birthday");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String course=request.getParameter("course");
		try
		{
		 
			System.out.println("yoo");
			ps=connection.prepareStatement("insert into applicationform(fname,lname,bdate,gender,email,phone,course)values(?,?,DATE_FORMAT(?,'%d-%m-%y'),?,?,?,?)");
			System.out.println("yoo");
		//	ps.setInt(1,PatientID);
			ps.setString(1,first_name);
			ps.setString(2,last_name);
			ps.setString(3,birthday);
			ps.setString(4,gender);
			ps.setString(5,email);
			ps.setString(6,phone);
			ps.setString(7,course);
			int i=ps.executeUpdate();
			if(i==0)
			{
					//JOptionPane.showMessageDialog(null,"unable to insert record!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Unable to Insert Record');");
					out.println("location='admissionform.jsp';");
					out.println("</script>");
			}
			else
			{
				// JOptionPane.showMessageDialog(null,"information is save successfully!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Information is Submitted Successfully');");
					out.println("location='admissionform.jsp';");
					out.println("</script>");
			
			}
			
		
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
	}

}
