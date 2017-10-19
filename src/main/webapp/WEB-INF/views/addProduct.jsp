<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>


	<div class="container">
		<div class="page-header">
		<br/><br/>
			<h1>Add Product</h1>
			<p class="lead">Fill the below information to add a product:</p>
		</div>

		<form:form class="form-horizontal" action="insertProduct"
			method="post" commandName="product" enctype="multipart/form-data">


			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="name">Name</form:label>
				<div class="col-sm-6">
					<form:input path="name" type="text" class="form-control"
						placeholder="Name" />
					<form:errors path="name" class="control-label" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="image">Image</form:label>
				<div class="col-sm-6">
					<form:input  path="image"  type="file" class="control-label" placeholder="select a image"  />
				</div>
			</div>

			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="description">Description</form:label>
				<div class="col-sm-6">
					<form:textarea path="description" type="text" class="form-control"
						placeholder="describe your product" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="price">Price</form:label>
				<div class="col-sm-6">
					<form:input path="price" type="text" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<form:label class="col-sm-2 control-label" path="quantity">Quantity</form:label>
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
				<input type="submit" value="submit" class="btn btn-primary">
			</div>

		</form:form>


	</div>
</body>
</html>