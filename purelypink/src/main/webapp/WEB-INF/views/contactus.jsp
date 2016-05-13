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
      <img src="resources/bootstrap/img/contactus.jpg" class="img-responsive" style="width:100%" alt="Image">
      
    </div>
                     <div class="col-sm-6">
      <form  class="form-" role="form">
  <div class="form-group">
    <label for="uname">Pink User:</label>
    <input type="text" class="form-control" id="uname">
  </div>
  <div class="form-group">
    <label for="phone">Issue:</label>
    <input type="text" class="form-control" id="issue">
  </div>
   <div class="form-group">
    <label for="email">Mail ID:</label>
    <input type="text" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Number : </label>
    <input type="password" class="form-control" id="num">
  </div>
  <button type="submit" class="btn btn-default">Log the Issue</button>
</form>
    </div>                
                </div>
            </div>

        </div>
        <!-- /.container -->

    
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

</body>
</html>