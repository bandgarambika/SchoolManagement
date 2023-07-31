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
padding-right:100px;
padding-top:2px;
}
.card-body
{background:#A9D0F5;}
  </style>
</head>
<body bgcolor="">
    <div class="page-wrapper p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4"  style="background:#ffffff0d; width:100%;">
                <div class="card-body">
                  <form action="update_Exam_Details.jsp" method="POST" >
                  <%
                  ResultSet rs=null;
                  String id=request.getParameter("id");
                  int no=Integer.parseInt(id);
                  int sum=0;
                  try
                  {	
                  	Class.forName("com.mysql.jdbc.Driver");
                  	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","vijay");
                  
                  	String classnm=null;
                  	PreparedStatement ps=con.prepareStatement("select * from exam_schedule where exam_id='"+no+"'");
                  	rs=ps.executeQuery();
                  	while(rs.next())
                  	{
                  %> 
                        <div class="row row-space">
                            <div class="input-group">
                             <label class="label">Class Name</label>
                                    <input class="input--style-4" type="text"  value="<%=rs.getString("classname")%>" name="classname"required>  
                                </div>
                             <div class="input-group">
                              <label class="label">Exam Name</label>
                                    <input class="input--style-4" type="text" name="examname" value="<%=rs.getString("exam_name")%>" required>
                                </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="input-group-icon">
                                     <label class="label">Start Date</label>
                                        <input type="date" name="startdate" title="Date of Start"  value="<%=rs.getString("start_date")%>"required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="input-group-icon">
                                     <label class="label">End Date</label>
                                        <input type="date" name="enddate"  title="Date Of end"  value="<%=rs.getString("end_date")%>"required>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <div class="p-t-15">
                          <button class="btn btn--radius-2 btn--blue" type="submit">Update</button></form>
                          <%
						}                 	 	
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
							%>  
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <button class="btn btn--radius-2 btn--blue" type="submit"><a href="admin_Exam_Details.jsp" style="color:white; text-decoration: none;">Cancel</a></button>
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