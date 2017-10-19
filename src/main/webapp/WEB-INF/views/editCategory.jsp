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
<title>Insert title here</title>
</head>
<body>

<div class="container-wrapper">
        <div class="page-header">
        <br/><br/>
		<h1>Edit Category</h1>
		<p class="lead">Edit the below information for a Category:</p>
			</div>
			

<div class="container">
<div class="row">
<div class="form-horizontal">
<c:url value="/editCategory/${cid}" var="url"></c:url>
			<form:form  action="${url}" method="post" commandName="category1">

				<div class="form-group">
					<label class="control-label col-sm-2" for="cid">Id</label>					
					<div class="col-md-6">
					<form:input path="cid" id="cid" class="form-Control" disabled="true"/>
					</div>
			
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name</label>					
					<div class="col-md-6">
					<form:input path="name" id="name" class="form-Control" />
					</div>
			
				</div>

				
				<div class="form-group">
				<label class="control-label col-sm-2" for="description">Description</label>
				<div class="col-md-6">
					<form:textarea path="description" id="description" class="form-Control" />
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