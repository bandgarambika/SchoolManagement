
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
 * Servlet implementation class admin_Add_Leaves
 */
@WebServlet("/admin_Add_Leaves")
public class admin_Add_Leaves extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	ResultSet rs;
	Connection connection;  
    /**
     * @see HttpServlet#HttpServlet()     */
 public admin_Add_Leaves() {
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
		String staff_name=request.getParameter("staff_name");
		String type=request.getParameter("type");
		String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		try
		{
		 if(staff_name.length()==0||type.length()==0||fromdate.length()==0||todate.length()==0)
			{
			 out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid input, all fields are required');");
				out.println("location='#';");
				out.println("</script>");
			}
		else{
			System.out.println("yoo");
			ps=connection.prepareStatement("insert into leaves_details(staff_name,leave_type,from_date,to_date)values(?,?,DATE_FORMAT(?,'%d-%m-%y'),DATE_FORMAT(?,'%d-%m-%y'))");
			System.out.println("yoo");
		//	ps.setInt(1,PatientID);
			ps.setString(1,staff_name);
			ps.setString(2,type);
			ps.setString(3,fromdate);
			ps.setString(4,todate);
			
			int i=ps.executeUpdate();

			if(i==0)
			{
					//JOptionPane.showMessageDialog(null,"unable to insert record!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Unable to Insert Record');");
					out.println("location='#';");
					out.println("</script>");
			}
			else
			{
				// JOptionPane.showMessageDialog(null,"information is save successfully!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Information is Save Successfully');");
					out.println("location='admin_Add_Leaves.jsp';");
					out.println("</script>");
			
			}
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
		
	}

}
