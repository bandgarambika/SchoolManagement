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
f.action='edit_Fee_Details.jsp?id='+id;
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
 <h6> 
 <center><form method="post" name="form"><table border="1" cellpadding="10" cellspacing="12" width="80%">
  <tbody>
    <tr>
       <th width="7%" align="center"><strong>Sr No.</strong></th>
      <th width="15%" align="center"><strong>Categories</strong></th>
       <th width="10%" align="center"><strong>Primary Fee</strong></th>
      <th width="12%" align="center"><strong>Secondary Fee</strong></th>
       <th width="15%" align="center"><strong>Hsecondary Fee</strong></th>
         <th width="15%" align="center"><strong>Action</strong></th>   
    </tr>
 <%
try
{	
	String total=null,total1=null,total2=null;
	int count=0,sum;
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
	ResultSet rs;
	PreparedStatement ps=con.prepareStatement("select * from fee_format");
	rs=ps.executeQuery();
	while(rs.next())
	{
%> 
  <tr>
      <td><%=rs.getString("fee_id")%></td>
      <td><%=rs.getString("fee_category")%></td>
      <td><%=rs.getString("primary_fee")%></td>
      <td><%=rs.getString("secondary_fee")%></td>
       <td><%=rs.getString("hsecondary_fee")%></td>  
<td> <center><button class= "btn" href="html_images.asp" value="edit" onclick="editRecord(<%= rs.getString("fee_id")%>)">edit</button></center></td>
    </tr>
</form>
<%
}
	 ps=con.prepareStatement("select sum(primary_fee),sum(secondary_fee),sum(hsecondary_fee) from fee_format");
	 rs=ps.executeQuery();
	 while(rs.next()){
	total=rs.getString(1); 
	 total1=rs.getString(2); 
	total2=rs.getString(3); 
	
	 }
	System.out.println(total);
	%>
	 <tr>
	    <td></td>
	    <td></td>
	      <th>Total = <%=total%></th>
	        <th>Total = <%=total1%></th>
	         <th>Total = <%=total2%></th>
	         <td></td>
	         
	    </tr>
	    <%	
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