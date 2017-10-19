<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>

	<div id="padding" class="container-fluid">

		<h1>ALL PRODUCTS :</h1>
		
		<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
		<a href="<c:url value="/add_Product" />" class="btn btn-success" role="button">Add Product</a>
		</c:if>
		
		<div class="table-responsive ">
			<table class="table table-hover ">
				<thead>
					<tr>
						<th>Product_Id</th>
						<th>Product_Name</th>
						<th>Product_Image</th>
						<th>Product_Description</th>
						<th>Product_Price</th>
						
						<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<th>Product_Quantity</th>
						</c:if>
						
						<th>Other Options</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${product}">
						<tr>
							<td><c:out value="${p.pid}" /></td>
							<td><c:out value="${p.name}" /></td>
							<td><img src="<c:url value="/resources/images/${p.pid}.jpg"/>" alt="error"
								height=70px width=70px></td>
							<td><c:out value="${p.description}" /></td>
							<td><c:out value="${p.price}" /></td>
							
							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
							<td><c:out value="${p.quantity}" /></td>
							</c:if>

		<td><c:url var="url" value="/viewProduct/${p.pid}"></c:url>
		<a href="${url}"><span class="glyphicon glyphicon-info-sign"></span></a>

	 	&nbsp&nbsp&nbsp 

	    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="<spring:url value="/product/favorite/${p.pid }" />">
		<img src="<c:url value="/resources/images/fav.png" />" /></a> 
		</c:if></c:if>

		&nbsp&nbsp&nbsp 
		
		<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
		
		<c:url var="delete"	value="/admin/deleteProduct/${p.pid}"></c:url>
		<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
		 
		&nbsp&nbsp&nbsp 
		
		<c:url var="edit" value="/admin/editProductForm/${p.pid}"></c:url> 
		<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
		</c:if>
		</td>
		
		
	  </tr>
	  </c:forEach>
	  </tbody>
	  </table>
			
		</div>
	</div>
</body>
</html>