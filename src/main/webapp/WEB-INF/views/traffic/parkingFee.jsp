<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">

<div id="container">
	<div id="customer_container">
			
		<ul class="nav nav-pills  nav-justified" role="tablist">
			<li role="presentation"><a href="${pageContext.request.contextPath }/traffic/park">주차장</a></li>
			<li role="presentation"class="on"><a href="${pageContext.request.contextPath }/traffic/parkingFee">주차요금</a></li>
		</ul>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>	