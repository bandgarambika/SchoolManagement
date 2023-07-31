<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,java.util.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.ResultSet" %>    
 <%
 ResultSet rs=null;
 String id=request.getParameter("id");
 int no=Integer.parseInt(id);
 System.out.print(id);
try
{	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	Statement st;
	st=con.createStatement();
	int i=st.executeUpdate("delete from exam_schedule where exam_id='"+no+"'");
	 System.out.print(i);	 
     if(i==0)
     {
    	 	out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable to Delete Record');");
			out.println("location='admin_Exam_Details.jsp';");
			out.println("</script>");
	 }
     else
     {
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Information Is Deleted Successfully');");
		out.println("location='admin_Exam_Details.jsp';");
		out.println("</script>");
		}  
    }
 catch(Exception ex){
    out.println("Unable to connect to database"+ex);
 }
%>