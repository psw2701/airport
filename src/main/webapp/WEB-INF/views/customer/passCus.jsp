<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">


<div id="customer_container">
	<section>
		<div id="pass">
		<h1>회원정보 수정</h1>
		<span>회원님의 소중한 정보를 안전하게 관리하세요</span>
		<fieldset>
		<h3>회원정보를 수정 하시려면 비밀번호를 입력하셔야 합니다.</h3>
		<h4>회원님의 개인정보 보호를 위한 본인 절차이오니, WIT렌트카 회원 로그인 시 사용하시는 비밀번호를 입력해 주세요</h4>
		<form action="passPostCus" method="post">
		<label>현재 비밀번호</label><input type="password" name="password" placeholder="비밀번호를 입력해 주세요"><br>
		<input type="reset" value="취소" id="reset">
		<input type="submit" value="확인" id="ok">
		</form>
		</fieldset>
		</div>
	</section>
</div>

<%@ include file="../include/footer.jsp"%>