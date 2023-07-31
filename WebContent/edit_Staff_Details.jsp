<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.Date,java.text.SimpleDateFormat"%>
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
                  <form  action="update_Staff_Details.jsp" method="POST" >
                   <%
                  ResultSet rs=null;
                   String id=request.getParameter("id");
                   int no=Integer.parseInt(id);
                   System.out.print(id);
                  try
                  {	
                  	Class.forName("com.mysql.jdbc.Driver");
                  	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
                  	PreparedStatement ps=con.prepareStatement("select * from staff where staff_id='"+no+"'");
                  	rs=ps.executeQuery();
                  	while(rs.next())
                  	{
                  %> 
                   <center><h2 class="title"><font color="black">Add Details</h2></center>
                   <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Staff Id</label>
                                    <input class="input--style-4" type="text" name="staff_id" value="<%=rs.getString("staff_id")%>" placeholder="Full Name" required>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="full_name" value="<%=rs.getString("staff_name")%>" placeholder="Full Name" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Address</label>
                                 <input class="input--style-4" type="text" name="address" value="<%=rs.getString("staff_add")%>" placeholder="Current Address" required>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" value="<%=rs.getString("staff_email")%>" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Phone</label>
                                    <input class="input--style-4" type="text" name="phone" value="<%=rs.getString("staff_contact")%>"  maxlength="10" pattern="[7-9]{1}[0-9]{9}" required>
                                </div>
                            </div>
                        </div>     
                        <div class="row row-space">
                            <div class="col-2">
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                             <label class="label">Post</label>
                                <select name="post" required>
                                    <option value="<%=rs.getString("staff_post")%>"><%=rs.getString("staff_post")%></option>
                                    <option value="Teacher">Teacher</option>
                                    <option value="Head OF Department">Head OF Department</option>
                                    <option value="Head Clerk">Head Clerk</option>
                                     <option value="Registrar">Registrar</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        </div>
                         <div class="col-2">
                              <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search" required>
                             <label class="label">Salary</label>
                                <select name="salary" required>
                                    <option value="<%=rs.getString("staff_salary")%>"><%=rs.getString("staff_salary")%></option>
                                    <option value="Between 10,000/- to 19,999/-">Between 10,000/- to 19,999/-</option>
                                    <option value="Between 20,000/- to 39,999/-">Between 20,000/- to 39,999/-</option>
                                     <option value="Between 40,000/- to 60,000/-">Between 40,000/- to 60,000/-</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>   
                            </div>
                        </div>
                       <div class="p-t-15">
                           <center> <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button> </form> 
                             <%
						}                 	 	
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
							%>  
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <button class="btn btn--radius-2 btn--blue" type="submit"><a href="head_GrantedStaff_Details.jsp" style="color:white; text-decoration: none;">Cancel</a></button> 
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