<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
    <!DOCTYPE html>
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
height:50px;

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
.btn  {
  background-color:#61BA6D ;
  color: white;
 padding: 7px 25px;
  font-size: 14px;
  cursor: pointer;
}
input[type=submit]
{
	height:45px;
	width:140px;
	background:#61ba6d;
	color:white;
	font-weight:bold;
}
</style>
</head>

<body>
 <div style="text-align:center" class=cal-md-3 container-fluid>
<form>  <b style="font-size:25px">Department :</b>&nbsp;&nbsp;

  <select name="department" style="width:200px; height:40px; background: #f1f1f1;">
  		<option value="Select">Select Option</option>
  		 <option value="Science">Science</option>
   		  <option value="Commerce">Commerce</option>
    	  <option value="Arts">Arts</option>
    	    <option value="Mathematics">Mathematics</option>
         </select>
&nbsp;&nbsp;<input type="submit" value="SUBMIT">
</div>
 <h6> 
 <center><table border="1" cellpadding="10" cellspacing="12" width="120%">
  <tbody>
    <tr>
       <th width="7%" align="center"><strong>Staff Id</strong></th>
      <th width="15%" align="center"><strong>Name</strong></th>
       <th width="10%" align="center"><strong>Type</strong></th>
      <th width="12%" align="center"><strong>Education</strong></th>
       <th width="10%" align="center"><strong>Department</strong></th>
        <th width="10%" align="center"><strong>Post</strong></th>
        <th width="10%" align="center"><strong>Salary</strong></th>
         <th width="10%" align="center"><strong>Contact</strong></th>
              <th width="35%" align="left"><strong>Action</strong></th>      
    </tr>
 <%
try
{	
	String staff_depart= request.getParameter("department");	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select * from staff where staff_type='Non-Granted' && staff_depart=?");
	ps.setString(1,staff_depart);
	rs=ps.executeQuery();
	while(rs.next())
	{
%>
 <tr>
      <td><%=rs.getString("staff_id")%></td>
      <td><%=rs.getString("staff_name")%></td>
      <td><%=rs.getString("staff_type")%></td>
      <td><%=rs.getString("staff_education")%></td>
       <td><%=rs.getString("staff_depart")%></td>
         <td><%=rs.getString("staff_post")%></td>
          <td><%=rs.getString("staff_salary")%></td>
           <td><%=rs.getString("staff_contact")%></td></form>
        <td> <center> <a href='edit_Staff_Details.jsp?id=<%=rs.getString("staff_id")%>'><button class= "btn" href="html_images.asp" value="edit">edit</button></a>
        &nbsp;<a href='delete_Staff_Details.jsp?id=<%=rs.getString("staff_id")%>'><button class= "btn" href="html_images.asp" value="delete">delete</button></a></center></td>
    </tr>

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
</center>
</div>

</section>

 
</body>

</html>