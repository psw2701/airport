<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aa   " rel="stylesheet"  type="text/css">


<div id="customer_container">
		
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/homePass">홈탑승권 서비스</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath }/boardInfo/mobilePass">모바일탑승권 서비스</a></li>
	</ul>


	<div class="section">
		<img alt="홈탑승권" src="${pageContext.request.contextPath }/resources/images/kcc_rf_01_02_01_w.png" width="1130px">			
	</div>

</div>


<style>
 #customer_container{
	width: 1130px;
	margin: 50px auto;
}
</style>


<script type="text/javascript">

</script>

<%@ include file="../include/footer.jsp"%>