<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>

	<div class="container-wrapper">
		<div class="container-fluid">

			<div class="page-header">
				<br />
				<br />
				<h1>Edit Product</h1>
				<p class="lead">Edit the below information for a product:</p>
			</div>

			<c:url value="/editProduct/${pid}" var="url"></c:url>
			<form:form class="form-horizontal" action="${url}" method="post"
				commandName="product1" enctype="multipart/form-data">

				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="pid">ID</form:label>
					<div class="col-sm-6">
						<form:input path="pid" type="text" class="form-control" disabled="true" />
					</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="name">NAME</form:label>
					<div class="col-sm-6">
						<form:input path="name" type="text" class="form-control" />
					</div>
				</div>

		        <div class="form-group">
					<form:label class="col-sm-2 control-label" path="image">IMAGE</form:label>
					<div class="col-sm-6">
						<form:input path="image" type="file" class="form-control" />
					</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="description">DESCRIPTION</form:label>
					<div class="col-sm-6">
						<form:input path="description" type="text" class="form-control" />
					</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="price">PRICE</form:label>
					<div class="col-sm-6">
						<form:input path="price" type="text" class="form-control" />
					</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="quantity">QUANTITY</form:label>
					<div class="col-sm-6">
						<form:input path="quantity" type="text" class="form-control" />
					</div>
				</div>
				
				<div class="form-group">
				<form:label class="col-sm-2 control-label" path="category">Category</form:label>
				<div class="col-sm-6">
					<form:select path="category.description" onchange="selectcategory(${desc})"
						class="form-control" >
					<form:option value="" label="------ Select Category ------"></form:option>	
					<form:options items="${desc}" itemLabel="description" itemValue="description"/>
				</form:select>
				</div>
			</div>
			
			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="supplier">Supplier</form:label>
				<div class="col-sm-6">
					<form:select path="supplier.name" onchange="selectcategory(${supp})"
						class="form-control" >
					<form:option value="" label="------ Select Supplier ------"></form:option>	
					<form:options items="${supp}" itemLabel="name" itemValue="name"/>
				</form:select>
				</div>
			</div>

				<br />
				<br />

				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="submit" class="btn btn-default">
				</div>

			</form:form>
		</div>
	</div>

</body>
</html>