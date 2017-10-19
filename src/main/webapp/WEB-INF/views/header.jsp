<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Bazaar</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/myStyle.css" />" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="navbar-wrapper">
	<nav class="navbar navbar-inverse navbar-top-fixed">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/" />">E-Cart</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value="/" />">HOME</a></li>
				
				<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
				<li><a href="<c:url value="/All_Product" /> ">PRODUCTS</a></li>
				</c:if>
				</c:if>
				
				<li><a href="<c:url value="/" /> ">ABOUTUS</a></li>
				<li><a href="<c:url value="/" /> ">CONTACTUS</a></li>

			
			
			<%-- <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">All <span class="caret"></span></a>
					<ul class="dropdown-menu">
						
						<li><a href="<c:url value="/All_Category" />">All
								Categories</a></li>
						<li><a href="<c:url value="/All_Supplier" />">All
								Suppliers</a></li>
						<li><a href="<c:url value="/All_Customer" />">All
								Customers</a></li>
					</ul></li>

			

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Add <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/add_Product" />">Add Product</a></li>
						<li><a href="<c:url value="/add_Category" />">Add
								Category</a></li>
						<li><a href="<c:url value="/add_Supplier" />">Add
								Suppliers</a></li>
					</ul></li>
            </c:if> --%>
			
			
			</ul>



			<ul class="nav navbar-nav navbar-right">
						
			<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li><a href="<spring:url value="/cart/getCartId" />" 
			 class="glyphicon glyphicon-shopping-cart"></a></li>
						</c:if>
						</c:if>
			

				<c:if test="${pageContext.request.userPrincipal.name != null}">
				
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>	
					<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
		
				</c:if>
							
				<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
					<li><a href="<c:url value="/admin"/>">Admin</a></li>
				</c:if>


			
			
				<c:if test="${pageContext.request.userPrincipal.name == null}">
				
					<li><a href="<c:url value="/signup" />"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							
					<li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>

				</c:if>

			</ul>

		</div>
	</div>
	</nav>

</div>

</body>
</html>