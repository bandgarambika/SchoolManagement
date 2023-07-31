<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Title -->
    <title>School Management System </title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
<style>
td,th{
text-align:center;

}
tr{
height:30px;

}
th{
height:40px;
background:#a9d0f5;
}
table{margin-top:40px;}
body{background:#ffffff0d;}
</style>
</head>

<body>
 
 <h6> 
 <center><form><table border="1" cellpadding="10" cellspacing="12" width="80%">
  <tbody>
    <tr>
       <th width="7%" align="center"><strong>Sr No.</strong></th>
      <th width="15%" align="center"><strong>Staff Name</strong></th>
       <th width="10%" align="center"><strong>Leave Type</strong></th>
      <th width="12%" align="center"><strong>From_Date</strong></th>
       <th width="15%" align="center"><strong>To_Date</strong></th>
    </tr>
 <%
try
{	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select * from leaves_details");
	rs=ps.executeQuery();
	while(rs.next())
	{
%> 
  <tr>
      <td><%=rs.getString("leave_id")%></td>
      <td><%=rs.getString("staff_name")%></td>
      <td><%=rs.getString("leave_type")%></td>
      <td><%=rs.getString("from_date")%></td>
       <td><%=rs.getString("to_date")%></td>  
    </tr>
</form>
<%
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}


	%>  
  </tbody>
</table>
<br>
</form>
</center>
</div>

</section>

 
</body>

</html>