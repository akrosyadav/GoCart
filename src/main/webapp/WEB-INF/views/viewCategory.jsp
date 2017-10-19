<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

	<br/><br/><br/>
<h1> Category details with ID = <c:out value="${category.cid}" /> </h1>

	<div class="container-wrapper">
		<div class="container-fluid">
	
			<div class="col-md-10">
				<table class="table table-striped">
					<thead>
						<tr>
							<!-- <th><h2>Supplier_Id :</h2></th> -->
							<th><h2>Supplier_Name :</h2></th>
							<th><h2>Supplier_Descrp :</h2></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%-- <td><h4>
									<c:out value="${category.id}" />
								</h4></td> --%>
							<td><h4>
									<c:out value="${category.name}" />
								</h4></td>
							<td><h4>
									<c:out value="${category.description}" />
								</h4></td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>


</body>
</html>