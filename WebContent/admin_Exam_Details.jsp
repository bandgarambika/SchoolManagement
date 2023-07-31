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
<script language="javascript"> 
function editRecord(id){
var f=document.form;
f.method="post";
f.action='edit_Exam_Details.jsp?id='+id;
f.submit();
}
function deleteRecord(id){
	var f=document.form;
	f.method="post";
	f.action='delete_Exam_Schedule.jsp?id='+id;
	f.submit();
	}
</script>
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
.btn1  {
  background-color:#61BA6D;
  color: white;
 padding: 8px 25px;
  font-size: 20px;
  cursor: pointer;
}
</style>
</head>
<body>
 <center><a href="admin_Add_Exam_Schedule.jsp"><button class= "btn1" value="add">Add</button></a>

 </center>
 <h6> 
 <center>
  <tbody>
  <form method="post" name="form"><table border="1" cellpadding="10" cellspacing="12" width="80%">
    <tr>
       <th width="7%" align="center"><strong>Sr No.</strong></th>
      <th width="15%" align="center"><strong>Class Name</strong></th>
       <th width="10%" align="center"><strong>Exam Name</strong></th>
      <th width="12%" align="center"><strong>Start Date</strong></th>
       <th width="15%" align="center"><strong> End Date</strong></th>
         <th width="15%" align="center"><strong>Action</strong></th>   
    </tr>
 <%
try
{	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select * from exam_schedule");
	
	rs=ps.executeQuery();

	while(rs.next())
	{
%> 
  <tr>
      <td><%=rs.getString("exam_id")%></td>
      <td><%=rs.getString("classname")%></td>
      <td><%=rs.getString("exam_name")%></td>
      <td><%=rs.getString("start_date")%></td>
       <td> <%=rs.getString("end_date")%> </td>
       </form>  
<td> <center> <button class= "btn" href="html_images.asp" value="edit" onclick="editRecord(<%= rs.getString("exam_id")%>)">Edit</button>
&nbsp;<button class= "btn" value="delete" onclick="deleteRecord(<%= rs.getString("exam_id")%>)">Delete</button></center></td>
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