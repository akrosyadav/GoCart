<%@include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
             <section>
            <div class="jumbotron">
                <div class="container">
               
                    <h1>Cart</h1>
                    <p>Your Cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">

            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">

         <div>
            <a class="btn btn-danger pull-left" ng-click = "clearCart(${cartItem.cartItemId})"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                   
            <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
    
         </div> 

                

                <table class="table table-hover">
                    <tr>
                    	<th></th>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                    
                    <td><c:url var="src" value="/resources/images/{{item.product.pid}}.jpg"></c:url>
							<img class="img-thumbnail" src="${src}" width="120" height="120" /></td>
                        <td>{{item.product.name}}</td>
                        <td>{{item.product.price}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger"
									ng-click="removeFromCart(item.cartItemId)"> <span
										class="glyphicon glyphicon-remove">remove</span>
								</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/" />" class="btn btn-default">Continue Shopping</a>
         
            </div>
        </section>

</div>
</div>


</body>
<script src="<c:url value="/resources/js/Controller.js"/> "> </script>
</html>