<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css" rel="stylesheet"  type="text/css">
<style>
.login_bg{
	border-radius: 10px;
    background-color: #e7a13d;
    padding: 30px 50px 30px 75px;
    display: inline-block;
    background-image: url("${pageContext.request.contextPath }/resources/images/login_bg.gif");
    background-repeat: no-repeat;
    background-position: 35px center;
    font-size: 140%;
    color: #fff; 
}
</style>
<div id="container">
<div id="customer_container">

<h3  style="text-align: center;">당신의 아이디는 <span style="color: red;">${id }</span> 입니다.</h3>


	<div class="section text-center">
		<%-- <a href="${pageContext.request.contextPath }/search/searchPw">비밀번호찾기</a><br> --%>
		<a href="javascript:void(0)" role="button" class="popup-trigger login_bg" data-toggle="modal" data-target="#loginPopModal">로그인</a>
	</div>


</div>
</div>
<%@ include file="../include/footer.jsp"%>