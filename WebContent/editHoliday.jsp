<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Admission form</title>

    <!-- Icons font CSS-->
    <link href="colorlib-regform-4/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-4/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="colorlib-regform-4/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="colorlib-regform-4/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="colorlib-regform-4/css/main.css" rel="stylesheet" media="all">
  <style>
input[type="date"]::before {
	color:grey;
	font-size:17px;
	content: attr(placeholder);
}
input[type="date"] {
	color: #ffffff;
}
input[type="date"]:focus,
input[type="date"]:valid {
	color: #666666;
}
input[type="date"]:focus::before,
input[type="date"]:valid::before {
	content: "" !important;
}
  
.page-wrapper
{
padding-right:500px;
padding-top:2px;
}
.card-body
{background:#A9D0F5;}
  </style>
</head>
<body bgcolor="">
    <div class="page-wrapper p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4"  style="background:#ffffff0d; width:130%;">
                <div class="card-body">
                  <form  action="updateHoliday.jsp" method="POST" >
                   <%
                  ResultSet rs=null;
                   String id=request.getParameter("sr");
                   int no=Integer.parseInt(id);
                  // System.out.print(id);
                  try
                  {	
                  	Class.forName("com.mysql.jdbc.Driver");
                  	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
                  	PreparedStatement ps=con.prepareStatement("select * from holiday where sr='"+no+"'");
                  	rs=ps.executeQuery();
                  	while(rs.next())
                  	{
                  %> 
                  
						<center>
							<h2 class="title">
								<font color="black">Edite Details
							</h2>
						</center>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
								
									<input class="input--style-4" type="Text" name="sr" placeholder="sr"
										placeholder="sr"value="<%=rs.getString("sr")%>" required>
								</div>
							</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
								
									<input class="input--style-4" type="Text" name="Holiday" placeholder="Holiday"
										placeholder="Holiday"value="<%=rs.getString("holiday")%>" required>
								</div>
							</div>
							
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="Day"value="<%=rs.getString("hday")%>" required>
											<option value="">Choose Day</option>
											<option value="Sunday">Sunday</option>
											<option value="Monday">Monday</option>
											<option value="Tuesday">Tuesday</option>
											<option value="Wendesday">Wendesday</option>
											<option value="Thursday">Thursday</option>
											<option value="Friday">Friday</option>
											<option value="Saturday">Saturday</option>
											
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">

									<div class="input-group-icon">
									
										<input type="date" name="date" placeholder=" Date"
											title="Date Of 	Holiday"value="<%=rs.getString("hdate")%>" required>
									</div>
								</div>
					 </div>
							
							
						<div class="p-t-15">
							<center>
								<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
					</form>
                   
                            <%
						}                 	 	
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
							%>  
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <button class="btn btn--radius-2 btn--blue" type="submit"><a href="head_Students_Details.jsp" style="color:white; text-decoration: none;">Cancel</a></button> 
                            </div>  
                            </div>  
                               </div>
         					   </div>                 
                       </div>

    <!-- Jquery JS-->
    <script src="colorlib-regform-4/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="colorlib-regform-4/vendor/select2/select2.min.js"></script>
    <script src="colorlib-regform-4/vendor/datepicker/moment.min.js"></script>
    <script src="colorlib-regform-4/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="colorlib-regform-4/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->