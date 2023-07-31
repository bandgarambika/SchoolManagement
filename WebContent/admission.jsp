<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
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
.academy-btn{
 min-width: 200px;
    height: 60px;
    background :;
    font-size: 20px;  
}
 .academy-btn.btn-8{
    background :#dc6b35ad;
    width:100%;
    height:50px;
    font-size:20px;
}
.academy-btn:hover,.academy-btn.btn-2:hover,.academy-btn.btn-3:hover,.academy-btn.btn-4:hover,.academy-btn.btn-5:hover,.academy-btn.btn-6:hover,.academy-btn.btn-8:hover,.academy-btn.btn-8:hover
       {
            background: #31B404;
          
}
 .frm{
    transform:translate(9%,9%);
    width:85%;
    height:550px;
    border : 2px solid red;
}
iframe{
     border:0;
}
td,th{
text-align:center;
}
tr{
height:30px;
background:#A9D0F5;
}
th{
height:40px;
background:#0489B1;
}
.a{
background-image: url('images/school2.jpg');
}
.b{ background-color: rgba(221,231,231,0.88);}
</style>
</head>

<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="header-content h-100 d-flex align-items-center justify-content-between">
                            <div class="academy-logo">
                              <a href="index.jsp"><img src="images/logo.jpg" alt="">&nbsp; &nbsp;<font size="25" color="#61BA6D"><i>School Management System</i></font></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Navbar Area-->
        <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container-fluid">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                          <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                             <div class="classynav">
                                <ul>
                                    <li><a href="index1.jsp"><i class="fa fa-home fa-2x"></a></i></li>
                                    <li><a href="#">Dashboard</a>
                                        <ul class="dropdown">
                                            <li><a href="PLogin.jsp">Principal Login</a></li>
                                                <li><a href="HLogin.jsp">Registrar Login</a></li>
                                                   <li><a href="ALogin.jsp">Admin Login</a></li>
                                            </ul>
                                    </li>
                                    <li><a href="#">Academic</a>
                                        <div style="margin-left:250px;height:120px; width:50%;" class="megamenu">
                                            <!-- <ul class="single-mega cn-col-3">
                                                <li><a href="#">Home</a></li>
                                                <li><a href="#">Services &amp; Features</a></li>
                                                <li><a href="#">Accordions and tabs</a></li>
                                                <li><a href="#">Menu ideas</a></li>
                                                <li><a href="#">Students Gallery</a></li>
                                            </ul>-->
                                            <ul class="single-mega cn-col-3">
                                                <li><a href="curricular.jsp">Curricular Activities</a></li>
                                                <li><a href="rewards.jsp">Rewards</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-3">
                                                <li><a href="sports.jsp">Sports</a></li>
                                                <li><a href="holidaylist.jsp">Holiday List</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-3">
                                                <li><a href="examination.jsp">Examination</a></li>
                                                <li><a href="competitive.jsp">Competitive Exams</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="admission.jsp">Admission</a></li>
                                      <li><a href="timetable.jsp">Timetable</a></li>
                                   <li><a href="gallery.jsp">Gallery</a>
                                    </li>   
                                    <li><a href="laboratories.jsp">Laboratories</a>
                                    </li>   
                                    <li><a href="Acc_Login.jsp">Account</a>
                                    </li> 
                                                                
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>

                        <!-- Calling Info -->
                       <div class="calling-info">
                            <div class="call-center">
                              <a href="tel:+914563325568"><i class="icon-telephone-2"></i> <span>(+91) 456 332 5568</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### 
    <div class="breadcumb-area">
       <div class="bradcumbContent">
            <h2><i>Admission</i></h2>
       </div>
</div> -->   
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Elements Area Start ##### -->
    <div class="a">
    <section class="elements-area  b mt-50 section-padding-100-0">
        <div class="container-fluid" style="padding-left:80px;">
            <div class="row">
                <!-- ========== Buttons ========== -->
                <div class="col-12">
                    <!-- Selene Button -->
                    <marquee direction="left" behaviour="alternate"><h3><font color="red">Admission started for Academic Year 2020-2021......!!!!</font></h3></marquee>
                </div>
                </div></div>
  <div class="container">
 <h6> 
 <center><table border="1" cellpadding="10" cellspacing="10" width="80%">
  <tbody>
    <tr>
       <th width="10%" align="center"><strong>Course Name</strong></th>
      <th width="20%" align="center"><strong>Start Date</strong></th>
      <th width="20%" align="left"><strong>End Date</strong></th>
      <th width="10%" align="center"><strong>Application Fee</strong></th>
    </tr>
  <tr>
      <td>Nursery</td>
      <td>4th June 2020</td>
      <td>14 June 2020</td>
      <td>300 Rs.</td>
    </tr>
    <tr>
      <td>Jr.Kg</td>
      <td>8th June 2020</td>
      <td>28th June 2020</td>
      <td>500</td>
    </tr>
    <tr>
      <td>Sr.kg</td>
      <td>9th June 2020</td>
      <td>9th July 2020</td>
      <td>500</td>
    </tr>
    <tr>
      <td>1st to 5th</td>
      <td>4th June 2020</td>
      <td>4th August 2020</td>
      <td>700</td>
    </tr>
    <tr>
      <td>6th to 10th</td>
      <td>6th June 2020</td>
      <td>6th July 2020</td>
      <td>1000</td>
    </tr>
    <tr>
      <td>Jr.College(11th,12th)</td>
      <td>10th June 2020</td>
      <td>10th July 2020</td>
      <td>1500</td>
    </tr>
  </tbody>
</table>
<br>
</center>
</div>
<div class="container">
 <div class="academy-buttons-area mb-500">
                        <a href="#" class="btn academy-btn btn-8 m-4">To apply Read the procedure given below...!</a>
                       <!-- <a href="#" class="btn academy-btn btn-2 m-4">Granted Staff</a>
                        <a href="#" class="btn academy-btn btn-3 m-3">NonGranted Staff</a>
                       <a href="#" class="btn academy-btn btn-4 m-3">Add Students</a>
                       <a href="#" class="btn academy-btn btn-5 m-3">Student Details</a>-->
                    </div></div>
 <div class="container-fluid" style="padding-left:450px;">
<font color="green">
<h6>
 1. Click on the<font color="red"> 'Admission Form' </font>button for the Online Admission Application.<br><br>
 2. Fill up the details mentioned in the admission application form.<br><br>
 3. After filling all the details click on</font> <font color="red">"Submit" </font> <font color="green">button.<br><br>
 4. Admission Application Form Fee of each class is described in above table.<br><br>
 	&nbsp;&nbsp;&nbsp;This Application Fee will received at the time of taking admission.<br><br>
	
 5. List of required documents is given below : <br><br>
 &nbsp; &nbsp; a. A birth certificate <br><br>
  &nbsp; &nbsp;b. Proof of residency	<br><br>
  &nbsp; &nbsp;c. Adhaar Card of Student/Father/Mother
</font><div class="container">
 <div class="academy-buttons-area mb-500">
 <a href="admissionform.jsp" class="btn academy-btn m-4">Application Form</a>
 <a href="Fee_Structure.jsp" class="btn academy-btn m-4">Fee Structure</a>
</div>
</h6>
</div>             
</div>
</section>
</div></div>
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="main-footer-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!--  Footer Widget Area-->
                    <div class="col-9 col-md-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <!-- <a href="#"><img src="img/core-img/logo2.png" alt=""></a>-->
                                <h6>Contact</h6>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-placeholder"></i>
                                <p>4127/ 5B-C Mislane Road, Gibraltar, UK</p>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-telephone-1"></i>
                                <p>Main: 203-808-8613 <br>Office: 203-808-8648</p>
                            </div>
                            <div class="single-contact d-flex">
                                <i class="icon-contract"></i>
                                <p>office@yourbusiness.com</p>
                            </div>
                           <!--<p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget.</p>-->
                           <br>
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                     <div class="col-9 col-md-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                
                        
                            <div ><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.817231202632!2d73.81933691413712!3d18.49193617487736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf40b5bb75a3%3A0x93c2e9a67c9a13c7!2sSPCL%20Infotech%20Services%20PVT%20Ltd%2C%20Software%20Company!5e0!3m2!1sen!2sin!4v1579516797228!5m2!1sen!2sin" width="850" height="470" frameborder="0" style="border:0;" allowfullscreen=""></iframe></div>
                       </div>
                       </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.--></p>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
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