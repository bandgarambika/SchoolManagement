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
	<script src="https://kit.fontawesome.com/yourcode.js"></script>
    <!-- Title -->
    <title>Academy -Education Course Template</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
</head>
<style>
.fa{
color:black;
}

</style>
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
                                    <li><a href="index.jsp"><i class="fa fa-home fa-2x"></a></i></li>
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

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(images/school1.jpg);">
                <div class="container h-50">
                    <div class="row h-50 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(images/school3.jpg);">
                <div class="container h-50">
                    <div class="row h-50 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Top Feature Area Start ##### -->
    <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="features-content">
                        <div class="row no-gutters">
                            <!--Single Top Features-->
                            <div class="col-12 col-md-12">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                   
                                    <font size="20" color="white"><b>Our Facilities</b></font>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Feature Area End ##### -->
    <!-- ##### Course Area Start ##### -->
    <div class="academy-courses-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div class="course-icon">
						 <i class="fa fa-heartbeat"></i>
                        </div>
                        <div class="course-content">
                            <h4>Health & Cleaning </h4>
                            <p>Preventive services also include health screenings of students.
                             provide emergency care for illness or injury while at school</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="400ms">
                        <div class="course-icon">
                            <i class="fa fa-cutlery"></i>
                        </div>
                        <div class="course-content">
                            <h4>Canteen</h4>
                            <p> school canteen plays a vital role in promoting healthy foods and 
                            creating a school culture of healthy eating</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <div class="course-icon">
                            <i class="fa fa-trophy"></i>
                        </div>
                        <div class="course-content">
                            <h4>Cultural Activities</h4>
                            <p> It includes dance ,karate ,swimming, indoor games like chess,table tennis.
                            Volunteer activity for a charitable organization.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="600ms">
                        <div class="course-icon">
                            <i class="fa fa-bus"></i>
                        </div>
                        <div class="course-content">
                            <h4>Transport Service</h4>
                            <p> transporting of children and teenagers to and from schools and school events safely.
                             the transport may be organised collectively, using buses.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="700ms">
                        <div class="course-icon">
                            <i class="fa fa-bank"></i>
                        </div>
                        <div class="course-content">
                            <h4>Hostels</h4>
                            <p>Hostel service is available for both boys and girls.
                             food and lodging are provided for students.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Course Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-course-area d-flex align-items-center mb-100 wow fadeInUp" data-wow-delay="800ms">
                        <div class="course-icon">
                            <i class="fa fa-lock"></i>
                        </div>
                        <div class="course-content">
                            <h4>Security</h4>
                            <p>CCTV cameras are incorporated at different sections ,like labs, classrooms,
                            library throughout the premises in the school  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Course Area End ##### -->

    <!-- ##### Testimonials Area Start ##### -->
    <div class="testimonials-area section-padding-100 bg-img bg-overlay" style="background-image: url(img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto white wow fadeInUp" data-wow-delay="300ms">
                        <h1><b style="color:green;">Our Management Team</b></h1>
                        
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="400ms">
                        <div class="testimonial-thumb"><h6>&nbsp;&nbsp;
                            <img src="img/bg-img/t1.jpg" style=" width:120px; height:90px;" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>&nbsp;&nbsp;President</h5>
                           <p>&nbsp;&nbsp;Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>
                            <h6><span>Maria Smith,</span> 9865635352</h6>
                             </h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="500ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t2.jpg" style=" width:120px; height:90px;" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>&nbsp;&nbsp;Vice President</h5>
                             <p>&nbsp;&nbsp;Retiam nec odio vestibulum est mattis effic iturut magna. &nbsp;&nbsp;Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                            <h6><span>Shawn Gaines,</span> 9865635352</h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="600ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t3.jpg"style=" width:120px; height:90px;" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>&nbsp;&nbsp;Secretary</h5>
                            <p>&nbsp;&nbsp;Nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul.</p>
                            <h6><span>Ross Cooper,</span> 9865635352</h6>
                        </div>
                    </div>
                </div>
                <!-- Single Testimonials Area -->
                <div class="col-12 col-md-6">
                    <div class="single-testimonial-area mb-100 d-flex wow fadeInUp" data-wow-delay="700ms">
                        <div class="testimonial-thumb">
                            <img src="img/bg-img/t4.jpg"style=" width:120px; height:90px;" alt="">
                        </div>
                        <div class="testimonial-content">
                            <h5>&nbsp;&nbsp;Principal</h5>
                           <p>&nbsp;&nbsp; Bestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibu lum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul. Etiam nec odio vestibulum est mat tis effic iturut magnaNec odio vestibulum est mattis effic iturut magna.</p>
                            <h6><span>James Williams,</span>9877685657</h6>
                        </div>
                    </div>
                </div>
            </div>
          <!--<div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center wow fadeInUp" data-wow-delay="800ms">
                        <a href="#" class="btn academy-btn">See More</a>
                    </div>
                </div>
            </div>-->
        </div>
    </div>
    <!-- ##### Testimonials Area End ##### -->

    <!-- ##### Top Popular Courses Area Start ##### -->
      <div class="top-popular-courses-area section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <h1>About Us</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="400ms">
                        <div class="popular-course-content">
                            <h5>About Us</h5>
                            <p>In this section the information regarding school/college management will be given.</p>   
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(images/school6.jpg);"></div>
                    </div>
                </div>
                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="500ms">
                        <div class="popular-course-content">
                            <h5>Our Vision </h5>
                             
                            <p>The School's or college's vision will be elaborated in this paragraph.</p>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-2.jpg);"></div>
                    </div>
                </div>
                
                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="600ms">
                        <div class="popular-course-content">
                            <h5>Mission</h5>
                            <p>The main mission of respective society will nbe given.</p>
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-3.jpg);"></div>
                    </div>
                </div>
                
                <!-- Single Top Popular Course -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-popular-course d-flex align-items-center flex-wrap mb-30 wow fadeInUp" data-wow-delay="700ms">
                        <div class="popular-course-content">
                            <h5>Infastructure</h5>
                            <p>The whole infrastructure of campus with pictures will be discussed thoroughly here..</p>
                            
                        </div>
                        <div class="popular-course-thumb bg-img" style="background-image: url(img/bg-img/pc-4.jpg);"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Popular Courses Area End ##### -->
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="main-footer-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- Footer Widget Area -->
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