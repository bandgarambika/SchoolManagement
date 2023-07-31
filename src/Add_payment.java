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

public class Add_payment extends HttpServlet{
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	ResultSet rs;
	Connection connection;
	
	public Add_payment() {
		super();
		// TODO Auto-generated constructor stub
	}  
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("html");
		PrintWriter out=response.getWriter();
		try {
			String ConncetionUrl="jdbc:mysql://localhost:3306/sms";
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(ConncetionUrl,"root","");
			if(!connection.isClosed())
				System.out.println("successfully Connected");
			System.out.println("dsdsdsd");
		}catch(Exception e) {
			System.out.println("Unable to connect to database"+e);
		}
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String course=request.getParameter("course");
		String payment=request.getParameter("payment");
		String totalfee=request.getParameter("totalfee");
		String pendingfee=request.getParameter("pendingfee");
	try {
	
		ps=connection.prepareStatement("insert into payment(firstname,lastname,email,phone,course,paymode,totalfee,pendingfee)values(?,?,?,?,?,?,?,?)");
		ps.setString(1,first_name);
		ps.setString(2,last_name);
		ps.setString(3,email);
		ps.setString(4,phone);
		ps.setString(5,course);
		ps.setString(6,payment);
		ps.setString(7,totalfee);
		ps.setString(8,pendingfee);
		int i=ps.executeUpdate();
		if(i==0){
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable to insert record')");
			out.println("location='payment.jsp';");
			out.println("</script>");
		}else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Payment is submitted Sucessfully')");
			out.println("location='payment.jsp';");
			out.println("</script>");
		}
		
		
	}catch(Exception e) {
		System.out.println(e);
	}
		
		
		
		
	}

}
