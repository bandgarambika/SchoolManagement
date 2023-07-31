<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String sr=request.getParameter("sr");
String holiday=request.getParameter("Holiday");
String day=request.getParameter("Day");
String date=request.getParameter("date");


try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	Statement st;
	ResultSet rs;
	st=con.createStatement();
	int i=st.executeUpdate("update holiday set sr='"+sr+"',holiday='"+holiday+"',hdate='"+date+"',hday='"+day+"' where sr='"+sr+"'");
	 if(i==0){
		  out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable to Update Record');");
			out.println("location='viewHoliday.jsp';");
			out.println("</script>");
	}
else
	 {
	out.println("<script type=\"text/javascript\">");
		out.println("alert('Information Is Updated Successfully');");
		out.println("location='viewHoliday.jsp';");
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