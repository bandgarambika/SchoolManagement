

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Abc
 */
@WebServlet("/update_Fee_Details")
public class update_Fee_Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int i = 0;
		PreparedStatement ps;
		Connection connection = null;
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
		String category=request.getParameter("category");
		String primary=request.getParameter("primary");
		String secondary=request.getParameter("secondary");
		String hsecondary=request.getParameter("hsecondary");
	try {
		ps=connection.prepareStatement("update fee_format set primary_fee=?,secondary_fee=?, hsecondary_fee=? where fee_category=?");
		ps.setString(1,primary);	
		ps.setString(2,secondary);
		ps.setString(3,hsecondary);
		ps.setString(4,category);
		 i=ps.executeUpdate();
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	if(i==0)
	{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Unable to Update Record');");
		out.println("location='fee_Structure_Details.jsp';");
		out.println("</script>");
	}
	else
	{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Information is Updated successfully');");
		out.println("location='fee_Structure_Details.jsp';");
		out.println("</script>");
	}
	}
	
}
