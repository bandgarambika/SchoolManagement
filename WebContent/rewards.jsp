<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<style>
.mySlides {display:none;}
.w3-content .w3-section
{
width:200%;
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
                                <a href="index.html"><img src="images/logo.jpg" alt="">&nbsp; &nbsp;<font size="25" color="#61BA6D"><i>School Management System</i></font></a>
                            </div>
                            <!-- <div class="login-content">
                                <a href="#">Register / Login</a>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
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

                            <!-- close btn -->
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
    <div class="a">
   <div class="b">
    <!-- ##### Header Area End ##### -->
    <div class="breadcumb-area  bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
       <div class="bradcumbContent">
            <h2><i>Rewards</i></h2>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <div>
   <marquee style="font-size:50px; color:purple; font-family:Italic; font:bold">
Achievments & Rewards
</marquee>
    </div>
    
    
    
<section>
<center>
<div class="w3-content w3-section" style="max-width:80%">
  <img class="mySlides" src="images/image1.jpg" style="width:80%">
  <img class="mySlides" src="images/image2.jpg" style="width:80%">
  <img class="mySlides" src="images/image3.jpg" style="width:80%">
    <img class="mySlides" src="images/image4.jpg" style="width:80%">
</div>
</center>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</section>
<br>
<br>
<br>
<center>
<div class="col-sm-9 col-xs-12 acc">
<div class="section-titile subtitle student">
<h3>Student's &nbsp; Achievments</h3><br><br>
<div class="line2">
</div>
<ul>
<ul>
<li style="text-align:left; font-weight:bold;">1. For 2016–2017 - Nishant Deshpande (IV-A) and Sahil Chaudhari (VII-A) were awarded as best students of the primary and secondary section respectively.</li>
</ul>
</ul>
<hr>
<ul>
<ul>
<li style="text-align:left; font-weight:bold;">2. For 2016-2017 - the best sports girl was Harshada Dugane (VII-A) and the best sports boy was Neeraj Pandhare (VII-A).</li>
</ul>
</ul>
<hr>
</center>
</div>
</div>

<br>
<br>
<br>





       
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="main-footer-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <a href="#"><img src="img/core-img/logo2.png" alt=""></a>
                            </div>
                            <p>Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod erat. Ut at erat et arcu pulvinar cursus a eget.</p>
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Usefull Links</h6>
                            </div>
                            <nav>
                                <ul class="useful-links">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Services &amp; Features</a></li>
                                    <li><a href="#">Accordions and tabs</a></li>
                                    <li><a href="#">Menu ideas</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Gallery</h6>
                            </div>
                            <div class="gallery-list d-flex justify-content-between flex-wrap">
                                <a href="img/bg-img/gallery1.jpg" class="gallery-img" title="Gallery Image 1"><img src="img/bg-img/gallery1.jpg" alt=""></a>
                                <a href="img/bg-img/gallery2.jpg" class="gallery-img" title="Gallery Image 2"><img src="img/bg-img/gallery2.jpg" alt=""></a>
                                <a href="img/bg-img/gallery3.jpg" class="gallery-img" title="Gallery Image 3"><img src="img/bg-img/gallery3.jpg" alt=""></a>
                                <a href="img/bg-img/gallery4.jpg" class="gallery-img" title="Gallery Image 4"><img src="img/bg-img/gallery4.jpg" alt=""></a>
                                <a href="img/bg-img/gallery5.jpg" class="gallery-img" title="Gallery Image 5"><img src="img/bg-img/gallery5.jpg" alt=""></a>
                                <a href="img/bg-img/gallery6.jpg" class="gallery-img" title="Gallery Image 6"><img src="img/bg-img/gallery6.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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