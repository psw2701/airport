<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/successJoin.css" rel="stylesheet" type="text/css">
<div id="container">
<div id="customer_container">
	<h3>05.가입완료</h3>
	
	<p><img src="${pageContext.request.contextPath }/resources/images/kcc_lg_04_01_04.jpg" class="img-responsive" alt=""></p>
	<ol class="sr-only">
		<li>01.회원가입 안내</li>
		<li>02.실명확인</li>
		<li>03.약관동의</li>
		<li>04.정보입력</li>
		<li>05.가입완료(현재단계)</li>
	</ol>
	<div class="section">
		<div class="text-caption join_combg">
			<div class="h3">한국공항공사 회원가입이 완료되었습니다.</div>
			<div class="join_text">한국공항공사 홈페이지에 가입해주셔서 감사합니다.<br>로그인하시면 한국공항공사 및 공항서비스 홈페이지에서 제공하는 다양한 서비스들을 이용하실 수 있습니다.</div>
		</div>
	</div>
	<div class="section text-center">
		<a href="javascript:void(0)" role="button" class="popup-trigger login_bg" data-toggle="modal" data-target="#loginPopModal">로그인</a>
	</div>

		
</div>
</div>
<%@ include file="../include/footer.jsp"%>