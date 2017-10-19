<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>


<div class="container">
        <div class="page-header">
        <br/><br/>
		<h1>Add Supplier</h1>
		<p class="lead">Fill the below information to add a Supplier:</p>
			</div>
			
			<form:form class="form-horizontal" action="insertSupplier" method="post" commandName="supplier">

				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="name">Name</form:label>
					<div class="col-sm-6">
					<form:input path="name" type="text" class="form-control" placeholder="enter your name" />
				</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="address">Address</form:label>
					<div class="col-sm-6">
					<form:input path="address" type="text" class="form-control" placeholder="enter your address" />
				</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="city">City</form:label>
					<div class="col-sm-6">
					<form:input path="city" type="text" class="form-control" placeholder="enter your city" />
				</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="email">Email</form:label>
					<div class="col-sm-6">
					<form:input path="email" type="text" class="form-control" placeholder="enter your email" />
				</div>
				</div>
				
				<div class="form-group">
					<form:label class="col-sm-2 control-label" path="phoneno">Phone Number</form:label>
					<div class="col-sm-6">
					<form:input path="phoneno" type="text" class="form-control" placeholder="enter your number" />
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