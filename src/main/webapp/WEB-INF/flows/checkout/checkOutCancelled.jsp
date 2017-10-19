<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>
<br/><br/><br/><br/><br/>
<section>
<h3>
Checkout cancelled! </h3>
<h3>
Your checkout process is cancelled! You may continue shopping.
</h3>
</section>
<section>
<a href="<spring:url value="/" />" class="btn btn-success" role="button">PRODUCTS</a> 
</section>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>


