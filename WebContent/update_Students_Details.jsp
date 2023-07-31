<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String student_id=request.getParameter("student_id");
String name=request.getParameter("full_name");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String classname=request.getParameter("classname");

try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	Statement st;
	ResultSet rs;
	st=con.createStatement();
	int i=st.executeUpdate("update students set address='"+address+"',email='"+email+"',phone='"+phone+"',classname='"+classname+"' where student_id='"+student_id+"'");
	 if(i==0){
		  out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable to Update Record');");
			out.println("location='head_Students_Details.jsp';");
			out.println("</script>");
	}
else
	 {
	out.println("<script type=\"text/javascript\">");
		out.println("alert('Information Is Updated Successfully');");
		out.println("location='head_Students_Details.jsp';");
		out.println("</script>");
		}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>