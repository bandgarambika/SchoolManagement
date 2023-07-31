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
    <title>Academy - Education Course Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>
<style>


table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  margin-top:40px;
}
th {
  padding: 20px;
  text-align: center; 
  background-color:#61BA6D ;
}
td{
height: 40px;
width:25px;
text-align:center;
font-weight:bold;
}
body{background:#ffffff0d;}

.btn  {
  background-color:#61BA6D ;
  color: white;
 padding: 7px 25px;
  font-size: 14px;
  cursor: pointer;
 

}
</style>
<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

<div>
<center>
<table>
<table border="1" cellpadding="10" cellspacing="10" width=60%">
<tr>
<th>Categories</th>
<th>Primary </th>
<th>Secondary</th>
<th>Higher Secondary</th>

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
      <td><%=rs.getString("fee_category")%></td>
      <td><%=rs.getString("primary_fee")%></td>
      <td><%=rs.getString("secondary_fee")%></td>
      <td><%=rs.getString("hsecondary_fee")%></td>   
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
	      <th>Total = <%=total%></th>
	        <th>Total = <%=total1%></th>
	         <th>Total = <%=total2%></th>
	         
	    </tr>
	    <%	
}
catch(Exception e)
{
	e.printStackTrace();
}


	%>  

</center>
</div>
</section>
    </header>
    <!-- ##### Header Area End ##### -->
    
    

 
    <!-- ##### Footer Area Start ##### -->
    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>