<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*"%>
<%@ page import ="java.util.Date,java.text.SimpleDateFormat"%>
<% 

String staff_id=request.getParameter("staff_id");
String name=request.getParameter("full_name");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String post=request.getParameter("post");
String salary=request.getParameter("salary");
//SimpleDateFormat dateformat=new SimpleDateFormat("dd-mm-yyyy");
//Date start_date=dateformat.parse(startdate);
//System.out.println("exam"+start_date);
//Date end_date=dateformat.parse(enddate);
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	Statement st;
	ResultSet rs;
	st=con.createStatement();
	int i=st.executeUpdate("update staff set staff_add='"+address+"',staff_email='"+email+"',staff_contact='"+phone+"',staff_post='"+post+"',staff_salary='"+salary+"' where staff_id='"+staff_id+"'");
	 if(i==0)
	 {	
		 out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable to Update Record');");
			out.println("location='#';");
			out.println("</script>");
	 }else{
	out.println("<script type=\"text/javascript\">");
		out.println("alert('Information Is Updated Successfully');");
		out.println("location='#';");
		out.println("</script>");
		}
	//response.sendRedirect("admin_Exam_Details.jsp");
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
	