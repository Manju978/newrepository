<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <c:url value="/resources/bootstrap/img" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD A PRODUCT</title>
<link href="${bcss}/bootstrap.min.css" rel="stylesheet">
   <script src="${bjs}/jquery-2.1.1.min.js"></script>
    <script src="${bjs}/bootstrap.min.js"></script>
    <script src="${bjs}/angular.min.js"></script>
    
      <script>
        var myApp=angular.module('myApp', [])

        myApp.controller('jsonCtrl', function($scope,$http) {

        	 
        	        $scope.dress = <%=request.getAttribute("productList")%>;
        	        $scope.myFunction = function() {
        	        	$scope.dress = <%=request.getAttribute("productList")%>;
        	        	$scope.pdctID=dress.pdctID;
        	        	$scope.category=dress.category;
        	        	$scope.brand=dress.brand;
        	        	$scope.price=dress.price;
        	        	}
        	        
        	      
        });
        </script>
<div style="height: 50px"></div>
<div class="container text-center" style="width: 500px">

<form:form action="addnewproduct" commandName="product" modelAttribute="product" method="post" class="form-horizontal" role="form">
<table>
    <c:if test="${!empty product.pdctID}">
    <tr style="padding: 10px;">
        <td>
ID        </td>
        <td>
            <form:input path="pdctID" readonly="true" size="8"  disabled="true" ng-model="pid" class="form-control"/>
           	<form:hidden path="pdctID" />
        </td> 
         <td><form:errors path="pdctID" cssStyle="color: #c0392b;"/></td>
    </tr>
    </c:if>
    <tr>
        <td>
            category
        </td>
        <td>
            <form:input path="category" ng-model="category" class="form-control"/>
        </td> 
        <td><form:errors path="category" cssStyle="color: #c0392b;"/></td>
    </tr>
    <tr>
        <td>
            Brand        </td>
        <td>
            <form:input path="brand" ng-model="brand"  class="form-control"/>
        </td>
        <td><form:errors path="brand" cssStyle="color: #c0392b;"/></td>
    </tr>
        <tr>
        <td>
            Price
        </td>
        <td>
         <td>
            <form:input path="price" ng-model="price"  class="form-control"/>
        </td>
        <td><form:errors path="price" cssStyle="color: #c0392b;"/></td>
        
        </tr>
        
           <tr>
        <td colspan="2">
            <c:if test="${!empty product.category}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                    >Edit Product</button>
            </c:if>
            <c:if test="${empty product.category}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                 >Add Product</button>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>

</div>
<form action="uploadFile" method="post" enctype="multipart/form-data">
 Image to upload for the products: <input type="file" name="file"><br /> 
       Please Enter ProductID: <input type="text" name="uname"><br /> <br /> 
<button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
>FILE UPLOAD</button>
</form>


<div class="container" ng-app="myApp" ng-controller="jsonCtrl" style="padding-top:30px">
   
  <table class="table table-bordered table-striped">
    

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'pdctID'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'pdctID' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'pdctID' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'category'; sortReverse = !sortReverse">
          Product Name
            <span ng-show="sortType == 'category' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'category' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         	Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
         	Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
            <td>
          <a href="#">
         	Edit
          </a>
        </td>
        <td>
          <a href="#">
         	Delete
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
    
      <tr ng-repeat="scop in dress | orderBy:sortType:sortReverse | filter:searchMusic">
         
        <td>{{scop.pdctID}}</td>
        <td>{{scop.category }}</td>
        <td>{{scop.brand}}</td>
        <td>{{scop.price}}</td>
       <td>
        <form action="editproduct" method="post">
      	<input type="hidden" value={{scop.pdctID}} name="pdctID"/>
        <input type="hidden" value={{scop.category}} name="category"/>
        <input type="hidden" value={{scop.brand}} name="brand"/>
        <input type="hidden" value={{scop.price}} name="price"/>
        <button type="submit" class="btn" style="margin: 0px;width:100px;  text-align: center; font-size: 015x; border-radius: 0px;"
                    >
        Edit &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span>
        </button>
      </form>
       </td>
       <td>
        <form action="deleteproduct" method="post">
     <input type="hidden" value={{scop.pdctID}} name="pdctID"/>
        <input type="hidden" value={{scop.category}} name="category"/>
        <input type="hidden" value={{scop.brand}} name="brand"/>
        <input type="hidden" value={{scop.price}} name="price"/>
      <button type="submit" class="btn" style="margin: 0px;width:100px; text-align: center; font-size: 015x; border-radius: 0px;"
                    >
        Delete &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-remove"></span>
        </button>
      </form>
       </td>
      </tr>
              
    </tbody>
    
  </table>
 </div>

 </body>
</html>