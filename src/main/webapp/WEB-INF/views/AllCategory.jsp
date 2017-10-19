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
		<h1>ALL CATEGORY :</h1>
		<a href="<c:url value="/add_Category" />" class="btn btn-success" role="button">Add Category</a>

		<div class="table-responsive ">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Category_Id</th>
						<th>Category_Name</th>
						<th>Category_Description</th>
						<th>Other Options</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${category}">
						<tr>
							<td><c:out value="${p.cid}" /></td>
							<td><c:out value="${p.name}" /></td>
							<td><c:out value="${p.description}" /></td>

		<%-- <td><c:url var="url" value="/view_Category/${p.cid}"></c:url>
		<a href="${url}"><span class="glyphicon glyphicon-info-sign"></span></a> --%>
<td>
		<a href="<c:url value="/view_Category/${p.cid}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
		&nbsp&nbsp&nbsp 
		
		<c:url var="delete"	value="/delete_Category/${p.cid}"></c:url>
		<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
		 
		&nbsp&nbsp&nbsp 
		
		<c:url var="edit" value="/edit_Category_Form/${p.cid}"></c:url> 
		<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<!-- <div class="row">
			<div class="col-sm-offset-1 col-sm-3">
				<a href="addCategory" class="btn btn-info" role="button">Add More</a>
			</div>
		</div> -->


	</div>

</body>
</html>