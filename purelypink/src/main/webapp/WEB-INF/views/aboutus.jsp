<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:url value="/resources/images" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
<head>


    <title>Purely Pink</title>

    
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/bootstrap/css/landing-page.css" rel="stylesheet">

    
    <link href="resources/bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="#">Purely Pink</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#aboutus">Who we are</a>
                    </li>
                            <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="products">What We Offer
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="products">Dresses</a></li>
          <li><a href="products">Jewellery</a></li>
          <li><a href="products">Bags</a></li> 
        </ul>
      </li> <li>
                        <a href="contactus">Ring to Us</a>
                    </li>
                     <li>
                        <a href="register">Register with Us</a>
                    </li>
                    
                     <li>
                        <a href="login">Welcome Back--SignIn</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->
    <!-- /.intro-header -->
</head>
<body>
    
        <div class="container">
                        <h3>Be Pretty in Pink</h3>                       
         </div>
   <div class="col-sm-6">
      <img src="resources/bootstrap/img/intro.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h3>Be Pretty in Pink</h3>  
    </div>
                     <div class="col-sm-6">
                    <p style="color:maroon">
                    
        WE WANT TO MAKE YOU FEEL GOOD TO LOOK GOOD<br>
        </p>
        <p style="color:fuchsia">
PurelyPink is an Indian fashion website that represents style and quality.A tightly edited wardrobe of classic pieces, the collection focuses on longevity and quality rather than flash-in-the-pan trends.<br>
<font style="color:orange" >"The Independent"</font>

 
                    </p>
   <p style="color:fuchsia">
          Contemporary design with modern utility, PurelyPink has an edited collection that is both considered and versatile, combining understated looks with refined styling;
          produced to be relevant for work and leisure in the knowledge that what separates those worlds is becoming less defined.
          Inspired by feedback from our dedicated community, our exclusive line of apparel is available in a full range of sizes  because we believe fashion is for every body. We also carry a curated selection of styles from hundreds of independent designers.
          We have a huge collection of accessories which you will really love....
                   
   </p>
    </div>                
   <div class="content-section-b">

       <div class="container text-center">    
  
  <div class="row">
    <div class="col-sm-6">
      
    </div>
    <div class="col-sm-6">
      <img src="resources/bootstrap/img/bag1.jpg" class="img-responsive" style="width:50%" alt="Image">
      
    </div>
    
    </div>

        </div>
                
            

        
        <!-- /.container -->
<!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="aboutus">About</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="products">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="contactus">Contact</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; PurelyPink 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="resources/bootstrap/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>

    

</body>
</html>