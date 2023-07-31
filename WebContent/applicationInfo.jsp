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
<form>  <b style="font-size:25px">Class :</b>&nbsp;&nbsp;

  <select name="cname" style="width:200px; height:40px; background: #f1f1f1;">
  		<option value="Select">Select Option</option>
  		 <option value="Nursery">Nursery</option>
   		  <option value="Jr.Kg">Jr.Kg</option>
    	  <option value="Sr.Kg">Sr.Kg</option>
         <!-- <option value="Standard I">Standard I</option>
          <option value="Standard II">Standard II</option>
          <option value="Standard III">Standard III</option>
          <option value="Standard IV">Standard IV</option>
          <option value="Standard V">Standard V</option>
          <option value="Standard VI">Standard VI</option>
          <option value="Standard VII">Standard VII</option>
          <option value="Standard VIII">Standard VIII</option>
          <option value="Standard IX">Standard IX</option>
          <option value="Standard X">Standard X</option>--></select>
               <!-- <b class="academy-buttons-area mb-500">
<!-- <a href="#" class="btn academy-btn btn-3 m-4">Select Class</a></b>-->
&nbsp;&nbsp;<input type="submit" value="SUBMIT">
</div>
 <h6> 
 <center><table border="1" cellpadding="10" cellspacing="10" width="150%">
  <tbody>
    <tr>
       <th width="10%" align="center"><strong>Sr.No</strong></th>
      <th width="10%" align="center"><strong>First Name</strong></th>
      <th width="10" align="left"><strong>Last Name</strong></th>
       <th width="10%" align="left"><strong>Gender</strong></th>
       <th width="10%" align="left"><strong>Birth Date</strong></th>
      <th width="15%" align="left"><strong>Contact</strong></th>
      <th width="20%" align="left"><strong>Email</strong></th>
         <th width="10%" align="left"><strong>Course</strong></th>
    
    </tr>   
<%
try
{	String classname= request.getParameter("cname");	
	System.out.println(classname);
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select * from applicationform where course=?");
	ps.setString(1,classname);
	rs=ps.executeQuery();
	while(rs.next())
	{
%>
 
  <tr>
      <td><%=rs.getString("application_id")%></td>
      <td><%=rs.getString("fname")%></td>
      <td><%=rs.getString("lname")%></td>
       <td><%=rs.getString("gender")%></td>
      <td><%=rs.getString("bdate")%></td>
       <td><%=rs.getString("phone")%></td>
         <td><%=rs.getString("email")%></td>
          <td><%=rs.getString("course")%></td>
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
</center>
</div>

</section>

 
</body>

</html>