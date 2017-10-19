<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>    

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>

<div class="container-wrapper">
        <div class="page-header">
        <br/>
        <br/>
		<h1>Edit Supplier</h1>
		<p class="lead">Edit the below information for a Supplier:</p>
			</div>
			

<div class="container">
<div class="row">
<div class="form-horizontal">
<c:url value="/editSupplier/${id}" var="url"></c:url>
			<form:form  action="${url}" method="post" commandName="supplier1">

				<div class="form-group">
					<label class="control-label col-sm-2" for="id">Id</label>					
					<div class="col-md-6">
					<form:input path="id" id="id" class="form-Control" disabled="true"/>
					</div>
			
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name</label>					
					<div class="col-md-6">
					<form:input path="name" id="name" class="form-Control" />
					</div>
			
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="address">Address</label>					
					<div class="col-md-6">
					<form:input path="address" id="address" class="form-Control" />
					</div>
			
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="city">City</label>					
					<div class="col-md-6">
					<form:input path="city" id="city" class="form-Control" />
					</div>
			
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email</label>					
					<div class="col-md-6">
					<form:input path="email" id="email" class="form-Control" />
					</div>
			
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="phoneno">Phone Number</label>					
					<div class="col-md-6">
					<form:input path="phoneno" id="phoneno" class="form-Control" />
					</div>
				</div>

				<br />
				<br />

				<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="submit" class="btn btn-primary">
				</div>

			</form:form>
			</div>
			</div>
			</div>	
			</div>



</body>
</html>