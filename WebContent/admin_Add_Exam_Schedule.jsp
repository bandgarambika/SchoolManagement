<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                  <form  action="admin_Add_Exam_Schedule" method="POST" >
                   <center><h2 class="title"><font color="black">Add Details</h2></center>
                        <div class="row row-space">
                             <div class="col-2">
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="classname" required>
                                    <option value="Nursery">Nursery</option>
                                                <option value="Jr.Kg">Jr.Kg</option>
                                                <option value="Sr.Kg">Sr.Kg</option>
                                                <option value="Standard I">Standard I</option>
                                                <option value="Standard II">Standard II</option>
                                                <option value="Standard III">Standard III</option>
                                                <option value="Standard IV">Standard IV</option>
                                                <option value="Standard V">Standard V</option>
                                                <option value="Standard VI">Standard VI</option>
                                                <option value="Standard VII">Standard VII</option>
                                                <option value="Standard VIII">Standard VIII</option>
                                                <option value="Standard IX">Standard IX</option>
                                                <option value="Standard X">Standard X</option></select>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        </div>
                              <div class="col-2">
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="examname" required>
                                    <option value="">Choose Exam</option>
                                    <option value="Unit test-1">Unit test-1</option>
                                    <option value="Unit Test-2">Unit Test-2</option>
                                      <option value="1st Term">1st Term</option>
                                       <option value="2nd Term">2nd Term</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                   
                                    <div class="input-group-icon">
                                        <input type="date" name="startdate" placeholder="Start Date" title="Date of Start" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                   
                                    <div class="input-group-icon">
                                        <input type="date" name="enddate" placeholder="End Date" title="Date Of end" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <div class="p-t-15">
                          <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button></form>
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