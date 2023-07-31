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
text-align:center;
 	width: 20%;
    height: 60px;
    background :#dc6b35ad;
    font-size: 20px;
     width:240px;
}
 .academy-btn.btn-2{
    background :#7a5fbc9e;
     width:220px;
    }
 .academy-btn.btn-3{
    background :#004eff8c;
     width:220px;
}
.academy-btn.btn-4{
    background :#FA58AC;
    color:white;
    width:220px;
}
.academy-btn.btn-5 {
    background :#A9BCF5;
    width:220px;
}
.academy-btn.btn-6{
    background :#FA5858;
   
}
.academy-btn.btn-7{
    background :#B4045F;
   
}.academy-btn.btn-8{
    background :#dc6b35ad;
   
}

 .academy-btn:hover,.academy-btn.btn-2:hover,.academy-btn.btn-3:hover,.academy-btn.btn-4:hover,.academy-btn.btn-5:hover,.academy-btn.btn-6:hover,.academy-btn.btn-8:hover,.academy-btn.btn-8:hover
       {
            background: #31B404;
          
}
.academy-btn,.academy-btn.btn-2,.academy-btn.btn-3,.academy-btn.btn-4,.academy-btn.btn-5,.academy-btn.btn-6,.academy-btn.btn-8,.academy-btn.btn-8
       {
             border: 2px solid #31B404;
          
        }
        
        .frm{
    transform:translate(9%,9%);
    width:85%;
    height:550px;
  
}

iframe{
     border:0;
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
                                                   <li><a href="#">Admin Login</a></li>
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
                              <a href="index.jsp"> <i class="fa fa-user-circle"></i><span>Logout</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
<div class="a">
<div class="b">
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
       <div class="bradcumbContent">
            <h2><i>Admin</i></h2>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Elements Area Start ##### -->
    <section class="elements-area mt-50 section-padding-100-0">
        <div class="container-fluid" style="padding-left:110px;">
            <div class="row">
                <!-- ========== Buttons ========== -->
                <div class="col-12">
                    <!--  <div class="elements-title mb-50">
                        <span>The Best</span>
                        <h2>Buttons</h2>
                    </div>-->
                    <!-- Selene Button -->
                    <div class="academy-buttons-area mb-500">
                        <a href="admin_Admission_Details.jsp" target="newfrm" class="btn academy-btn m-4">Admission Details</a>
                        <a href="admin_Daily_Collection.jsp"target="newfrm" class="btn academy-btn btn-3 m-3">Add Collection</a>
                       <a href="fee_Structure_Details.jsp" target="newfrm"class="btn academy-btn btn-4 m-3">Fee Format</a>
                       <a href="admin_Leaves_Details.jsp" target="newfrm"class="btn academy-btn btn-5 m-3">Add Leaves</a>
                        <a href="admin_Exam_Details.jsp" target="newfrm"class="btn academy-btn btn-2 m-3">Exam Schedule</a>
                    </div>
                </div>
<div class="frm">
<iframe id="newfrm" name="newfrm" scrolling="yes" height=400px width=100%></iframe>
</div>
</div>
</div>
</section>


                <!-- ========== Progress Bars & Accordions ========== -->


<section class="elements-area mt-50 section-padding-100-0">
                <div class="col-12">
                    <div class="academy-cool-facts-area mb-50">
                        <div class="row">

                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-cool-fact text-center">
                                    <i class="icon-agenda-1"></i>
                                    <h3><span class="counter">130</span></h3>
                                    <p>Courses Available</p>
                                </div>
                            </div>

                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-cool-fact text-center">
                                    <i class="icon-assistance"></i>
                                    <h3><span class="counter">54</span></h3>
                                    <p>Amazing Teachers</p>
                                </div>
                            </div>

                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-cool-fact text-center">
                                    <i class="icon-id-card"></i>
                                    <h3><span class="counter">67</span>k</h3>
                                    <p>Online Students</p>
                                </div>
                            </div>

                            <!-- Single Cool Fact-->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-cool-fact text-center">
                                    <i class="icon-message"></i>
                                    <h3><span class="counter">12</span></h3>
                                    <p>Awards Won</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</section>
                <!-- ========== Loaders ========== -->
    <!-- ***** Elements Area End ***** -->

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