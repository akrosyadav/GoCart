<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container-fluid">
<br/><br/><br/>
		<h1>ALL SUPPLIERS :</h1>
		<a href="<c:url value="/add_Supplier" />" class="btn btn-success" role="button">Add Supplier</a>

		<div class="table-responsive ">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Sup_Id</th>
						<th>Sup_Name</th>
						<th>Sup_Address</th>
						<th>Sup_City</th>
						<th>Sup_Email</th>
						<th>Sup_PhoneNo</th>
						<th>Sup_Product</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${supplier}">
						<tr>
							<td><c:out value="${p.id}" /></td>
							<td><c:out value="${p.name}" /></td>
							<td><c:out value="${p.address}" /></td>
							<td><c:out value="${p.city}" /></td>
							<td><c:out value="${p.email}" /></td>
							<td><c:out value="${p.phoneno}" /></td>

		<td><c:url var="url" value="/view_Supplier/${p.id}"></c:url>
		<a href="${url}"><span class="glyphicon glyphicon-info-sign"></span></a>
		
		&nbsp&nbsp&nbsp 
		
		<c:url var="delete"	value="/delete_Supplier/${p.id}"></c:url>
		<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
		 
		
		&nbsp&nbsp&nbsp 
		
		<c:url var="edit" value="/edit_Supplier_Form/${p.id}"></c:url> 
		<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>



</body>
</html>