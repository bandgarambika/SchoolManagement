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
	<meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Curricular Activities</title>
  <!-- Favicons -->
  <link href="Dashio/img/favicon.png" rel="icon">
  <link href="Dashio/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="Dashio/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="Dashio/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="Dashio/css/style.css" rel="stylesheet">
  <link href="Dashio/css/style-responsive.css" rel="stylesheet">
  
    <!-- Favicon -->
    <link rel="icon" href="Dashio/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
<style>

.a{
background-image: url('images/school2.jpg');
}
.b{ background-color: rgba(221,231,231,0.88);}
 
  #sidebar{
     background:#61BA6D;  
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
                              <a href="index1.jsp"> <i class="fa fa-user-circle"></i><span>Logout</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <div class="a">
   <div class="b">
      <div class="breadcumb-area bg-img" style="background-image: url(img/bg-img/breadcumb.jpg);">
       <div class="bradcumbContent">
            <h2><i>Curricular Activities</i></h2>
        </div>
    </div>
    <!-- ##### Header Area End ##### -->
<section id="main-content">
      <section class="wrapper">

        <!-- page start-->
        <div class="flot-chart">
          <!-- page start-->
          <div class="row mt">
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Puzzel Games</h4>
                <div class="panel-body" >
                 <img src="Dashio/img/portfolio/memory1.jpg" width="100%"></img>
                </div>
              </div>
            </div>
       
          
          
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Card Recall</h4>
                <div class="panel-body" >
                 <img src="Dashio/img/portfolio/memory2.jpg" width="100%" height="50%"></img>
                </div>
              </div>
            </div>
        
          </div>
          
          
          <div class="row mt">
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> English Vocabulary</h4>
                <div class="panel-body">
                <img src="Dashio/img/portfolio/memory3.webp" width="100%" height="50%"></img>
                
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Concentration Games</h4>
                <div class="panel-body">
                <img src="Dashio/img/portfolio/memory4.jpg" width="70%"></img>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="row mt">
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> Letter Unscramble</h4>
                <div class="panel-body">
                <img src="Dashio/img/portfolio/memory5.jpg" width="100%"></img>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>Memory Experiment</h4>
                <div class="panel-body">
                <img src="Dashio/img/portfolio/memory6.jpg" width="90%"></img>

              </div>
              <!--/coontent-panel -->
            </div>
            <!-- /col-lg-6 --->
          </div>
          <!-- row -->
        </div>
        <!--/flot-chart -->
        <!-- page end-->
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
 
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/flot/jquery.flot.js"></script>
  <script src="lib/flot/jquery.flot.resize.js"></script>
  <script src="lib/flot/jquery.flot.stack.js"></script>
  <script src="lib/flot/jquery.flot.crosshair.js"></script>
  <script src="lib/flotchart-conf.js"></script>

  

                <!-- ========== Progress Bars & Accordions ========== -->


                <!-- ========== Loaders ========== -->
   
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