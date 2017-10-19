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

<div class="container-wrapper">
<div class="container">
<div id="login-box">
<br/><br/><br/>

<div class="col-sm-offset-1 col-sm-11">
<h2>Login with Username and Password :</h2>
</div>


<c:if test="${not empty msg}">
<div class="msg">${msg}</div>
</c:if>

<!--j_spring_security_check"-->

<form class="form-horizontal" name="loginform" action="<c:url value="/j_spring_security_check"/>" method="post">

<c:if test="${not empty error}">
<div class="error"style="color: #ff0000;">${error}</div>
</c:if>

<div class="form-group">
<label  class="control-label col-sm-2" for="username">USER: </label>
<div class="col-sm-4">
<input type="text" id="username" name="username" class="form-control"/>
</div>
</div>


<div class="form-group">
<label  class="control-label col-sm-2" for="password"> PASSWORD: </label>
<div class="col-sm-4">
<input type="password" id="password" name="password" class="form-control"/>
</div>
</div>

 <div class="col-sm-offset-2 col-sm-10">
<input type="submit" value="Submit" class="btnbtn-default">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</div>
</form>

</div>
</div>
</div>

</body>
</html>


<!-- OLD CODE THROUGH SPRING FORM   -->
<%-- <div class="container-wrapper">
        <div class="page-header">
		<h1>Login</h1>
		<p class="lead">Please Fill your login details :</p>
			</div>
			

<div class="container">
<div class="row">
<div class="form-horizontal">

			<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
			</c:if>

			<form:form  action="<c:url value="/j_spring_security_check"/>"  method="post">


			<c:if test="${not empty error}">
			<div class="error"style="color: #ff0000;">${error}</div>
			</c:if>

				<div class="form-group">
					<label class="control-label col-sm-2" for="username">UserName</label>					
					<div class="col-md-6">
					<form:input path="username" id="username" class="form-Control" />
					</div>
			
				</div>

				
				<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password</label>
				<div class="col-md-6">
					<form:textarea path="password" id="password" class="form-Control" />
				</div>
				</div>

				<br />
				<br />

				<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" value="Log In" class="btn btn-primary">
				<input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
				</div>
</form:form>
	
	</div>
	</div>
	</div>
	</div> --%>

