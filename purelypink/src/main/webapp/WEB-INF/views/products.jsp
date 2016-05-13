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

    <script src="${bjs}/angular.min.js"></script>
    <link href="resources/bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<script type="text/javascript">
    angular.module('sortApp', [])
    .controller('mainController', function($scope)
    		{
      // create the list  
      $scope.dress = <%=request.getAttribute("productList")%>
    });    
    </script>
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
                        <a href="aboutus">Who we are</a>
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
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
   <!--   <script src="resources/bootstrap/js/ptable.js"></script>-->
</head>
<body>
    
        <div class="container">
                        <h3>Be Pretty in Pink</h3>                       
         </div>
   <div class="col-sm-3">
      <img src="resources/bootstrap/img/items.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Search Here.. <span class="glyphicon glyphicon-hand-right"></span></p>
    </div>
                     <div class="col-sm-9">
<div class="container" ng-app="sortApp" ng-controller="mainController">

    
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search in PurelyPink" ng-model="searchPink">
      </div>      
    </div>
  </form>
  <table class="table table-bordered table-striped">
<thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
            PdctID
            <span ng-show="sortType == 'id' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>         
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Category
            <span ng-show="sortType == 'name' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
         <td>
    <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
  
         Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
 <td>
    <a href="#" ng-click="sortType = 'more'; sortReverse = !sortReverse">
  
         MoreInfo
            <span ng-show="sortType == 'more' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'more' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>


      </tr>
           </tr>
      
    </thead> 
    <tbody>
   
      <tr ng-repeat="dres in dress | orderBy:sortType:sortReverse | filter:searchPink">
        <td>{{dres.pdctID}}</td>
        <td>{{dres.category}}</td>
        <td>{{dres.brand}}</td>
       <td>{{dres.price}}</td>
       <td>
        <form action="productdetails">
      	<input type="hidden" value={{dres.pdctID}} name="pdctID"/>
        <input type="hidden" value={{dres.category}} name="category"/>
        <input type="hidden" value={{dres.brand}} name="brand"/>
        <input type="hidden" value={{dres.price}} name="price"/>
        <button type="submit" class="btn" style="margin: 0px;width:100px;  text-align: center; font-size: 015x; border-radius: 0px;">
        More &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-expand"></span>
        </button>
      	</form>
       </td>
      </tr>
    </tbody>
  </table>  
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