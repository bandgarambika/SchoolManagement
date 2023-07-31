<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
     <%@ page import ="javax.sql.*" %>
    <%
try 
{	
	int confirm_admission=0;
	int i;
	String classname=request.getParameter("classname");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select count(*) from students");
	rs=ps.executeQuery();	
	if(rs.next())
	{
		confirm_admission=rs.getInt(1);
		System.out.println("count is"+confirm_admission);
	}
	try{
	 	int class_strength=60;
	 	int pending_admission=class_strength-confirm_admission;
		if(confirm_admission!=0)
		{
		ps=con.prepareStatement("insert into classes(class_name,confirm_admission,pending_admission,class_strength)values(?,?,?,60)");
		ps.setString(1,classname);
		ps.setInt(2,confirm_admission);
		ps.setInt(3,pending_admission);
		 i=ps.executeUpdate(); 
		}
	}catch(Exception e){
		System.out.println(e);
	}
	
}	    
catch(Exception e){
	
System.out.println(e);

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
class : <input type="text" name="classname"/>
<input type="submit" name="submit" value="ok"></form>
</body>
</html>