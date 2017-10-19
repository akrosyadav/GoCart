<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<%@include file="header.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http//www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >
<br/><br/><br/>
<h1> Supplier details with ID = <c:out value="${supplier.id}" /> </h1>

	<div class="container-wrapper">
		<div class="container-fluid">
		
			<div class="col-md-10">
				<table class="table table-striped">
					<thead>
						<tr>
							<!-- <th><h4>Id </h4></th> -->
							<th><h4>Name </h4></th>
							<th><h4>Address </h4></th>
							<th><h4>City </h4></th>
							<th><h4>Email </h4></th>
							<th><h4>PhoneNo </h4></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%-- <td><h4>
									<c:out value="${supplier.id}" />
								</h4></td> --%>
							<td><h4>
									<c:out value="${supplier.name}" />
								</h4></td>
								<td><h4>
									<c:out value="${supplier.address}" />
								</h4></td>
								<td><h4>
									<c:out value="${supplier.city}" />
								</h4></td>
								<td><h4>
									<c:out value="${supplier.email}" />
								</h4></td>
								<td><h4>
									<c:out value="${supplier.phoneno}" />
								</h4></td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>



</body>
</html>