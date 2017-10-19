<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div class="container-fluid">
<br/><br/><br/>
		<h1>ALL CUSTOMER :</h1>

		<div class="table-responsive ">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>					
						<th>FIRSTNAME</th>
						<th>LASTNAME</th>
						<th>EMAIL</th>
						<th>PHONENO</th>
						<th>USERNAME</th>
						<th>PASSWORD</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${customer}">
						<tr>
							<td><c:out value="${p.custid}" /></td>
							<td><c:out value="${p.firstname}" /></td>
							<td><c:out value="${p.lastname}" /></td>
							<td><c:out value="${p.email}" /></td>
							<td><c:out value="${p.phoneno}" /></td>
							<td><c:out value="${p.username}" /></td>
							<td><c:out value="${p.password}" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
</div>
</div>


</body>
</html>