<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/joinInfo.css?aaa" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/accept.css?aaaaaaaaaaaa" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/cusTerm.css" rel="stylesheet" type="text/css">
<div id="container">
<div id="customer_container">
	
	<h3>01.회원가입 안내</h3>	
		<p><img src="${pageContext.request.contextPath }/resources/images/kcc_lg_04_01_01.jpg" class="img-responsive" alt=""></p>
			<ol class="sr-only">
				<li>01.회원가입 안내</li>
				<li>02.실명확인(현재단계)</li>
				<li>03.약관동의</li>
				<li>04.정보입력</li>
				<li>05.가입완료</li>		
			</ol>
			
			<div class="text-caption">
			<div class="h3">한국공항공사 회원가입을 위해 실명확인이 필요합니다.</div>
				<p><strong>이메일을 통해 본인인증을 해주시기 바랍니다.</strong></p>
			</div>
				<div class="section">
				
				</div>
				<div class="section">
					<div class="text-center">
						<a class=" btn_prev large4" href="${pageContext.request.contextPath}/join/joininfo" role="button">이전 단계</a>
						<a class=" btn_next large4" href="${pageContext.request.contextPath}/join/acceptTerms" role="button">다음 단계</a>
					</div>
	</div>
</div>
</div>				
<%@ include file="../include/footer.jsp"%>