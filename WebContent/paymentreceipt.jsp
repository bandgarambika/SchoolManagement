


	
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
		PreparedStatement ps;
	ResultSet rs;
	Connection connection; 
		try {
			 String connectionURL = "jdbc:mysql://localhost:3306/sms";
		            connection = null; 
		            Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
		            connection = DriverManager.getConnection(connectionURL,"root","");
		            if(!connection.isClosed())
		                 System.out.println("Successfully connected");
		          //  connection.close();
		        }
		catch(Exception ex)
		{
		           System.out.println("Unable to connect to database"+ex);
		        }
		
		
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String course=request.getParameter("course");
		String payment=request.getParameter("payment");
		String totalfee=request.getParameter("totalfee");
		String pendingfee=request.getParameter("pendingfee");
		String sql ="insert into payment(firstName,lastName,email,phone,course,payment,totalfee,pendingfee)values(?,?,?,?,?,?,?,?)";	
		try
		{
			connection=null;
			String connectionURL = "jdbc:mysql://localhost:3306/sms";
            connection = null; 
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL,"root","");
		 if(first_name.length()==0||last_name.length()==0||email.length()==0||phone.length()==0|| course.length()==0||
				 payment.length()==0||totalfee.length()==0||pendingfee.length()==0)			
				 {
			 	
			 out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid input, all fields are required');");
				out.println("location='#';");
				out.println("</script>");
			}
		else
		{
			System.out.println("yoo");
			ps=connection.prepareStatement(sql);
			
		
			ps.setString(1,first_name);
			ps.setString(2,last_name);
			ps.setString(3,email);
			ps.setString(4,phone);
			ps.setString(5,course);
			ps.setString(6,payment);
			ps.setString(7,totalfee);
			ps.setString(8,pendingfee);
			
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
						out.println("location='#';");
						out.println("</script>");
				}
		
			}
	
	}
		catch(Exception e)
		{out.println(e);
			}
%>
