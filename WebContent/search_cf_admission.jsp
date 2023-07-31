<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
     <%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: black;
  padding: 10px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.buttons{background-color:white;} /* Red */
.s{
width:200px;
}; 
</style>
<meta charset="ISO-8859-1">
</head>
<body bgcolor="#01DFA5">
<center><br>
<form><h2 style="color:white;">Admission Details</h2>
<h3>Class Name: <select name="classname" id="select1" style="width:13%; height:34px;">
<option >Select An Option</option> 
<option value="nursery">nursery</option>
<option value="1st A">1st A</option>
<option value="2nd">2nd</option></select>
<br><br>
	<input type="submit" value="OK">
<%
try{
String classname=request.getParameter("classname");
session.setAttribute("name",classname);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
ResultSet rs;
PreparedStatement ps=con.prepareStatement("select * from confirm_admission where class=?");
ps.setString(1,classname);
rs=ps.executeQuery();

System.out.println("In try");
if(rs.next())
{


%>

	<h1>assdffghj,</h1>
</form>
<form action="Abc" method="post">
	<input type="text" name="admission" value="<%=rs.getString(2)%>">
	<input type="text" name="status" value="<%=rs.getString(3)%>">
	<input type="submit" value="update">
	</form>


<%}}catch(Exception e){out.println(e);} %>
 
</body>
</html>