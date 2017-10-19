<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/myStyle.css" />" rel="stylesheet" type="text/css" />


</head>

<body >

<div class="pagelook">

<div class="container-wrapper" >
	<div class="container-fluid" ng-app = "cartApp">
<br/><br/><br/>
		<h2>
			product detail of
			<c:out value="${product.name}" />
		</h2>

		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="<c:url value="/resources/images/${product.pid}.jpg" />"
						alt="error" style="width:100%">
				</div>
			</div>



		<div class="row">
			<div class="col-md-6">

				<table class="table table-striped">
					<tbody>
						<tr>
							<td><h5>
									Product_Id :
									<c:out value="${product.pid}" />
								</h5></td>
						</tr>
						<tr>
							<td><h5>
									Product_Name :
									<c:out value="${product.name}" />
								</h5></td>
						</tr>
						<tr>   <td><h5>
								Product_Descrp :
								<c:out value="${product.description}" />
							</h5></td>
						</tr>
						<tr>  
						<td><h5>
								Product_price :
								<c:out value="${product.price}" />
							</h5></td>
						</tr>
						<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<tr>
						<td><h5>
								Product_quntity :
								<c:out value="${product.quantity}" />
							</h5></td>
						</tr>
						</c:if>
  
					</tbody>
</table>
</div>
</div>
</div>


<div class="row"  ng-controller="cartCtrl">
			<div class="col-sm-offset-1 col-sm-3">
<a href="#" class="btn btn-info" role="button" ng-click="addToCart(${product.pid})">Add to Cart</a>
 </div>

			<div class="col-sm-offset-1 col-sm-3">
<a href="<spring:url value="/cart/getCartId" />" class="btn btn-default" role="button"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
 </div>

			<div class="col-sm-offset-1 col-sm-3">
<a href="<spring:url value="/" />" class="btn btn-info" role="button">Continue Shopping</a>
 </div>
 </div> 


</div>
</div>

</div>
</body>
<script src="<c:url value="/resources/js/Controller.js"/> "> </script>
</html>


