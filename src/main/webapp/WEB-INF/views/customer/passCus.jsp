<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">

<div id="container">
<div id="customer_container">
	<section>
		<div id="pass">

		<h4 style="text-align: center;margin-top: 100px;margin-bottom: 50px;">회원님의 개인정보 보호를 위한 본인 절차이오니, SWAIR 회원 로그인 시 사용하시는 비밀번호를 입력해 주세요</h4>
		<form action="passPostCus" method="post" style="text-align: center;margin-bottom: 15px;">
		
		 <div class="input-group" style="margin: 0 auto; text-align: center; padding-left: 30%;">
	
		      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		      <input id="password" type="password" class="form-control" name="password" placeholder="Password" style="width: 50%; text-align: center;">
		      <button type="submit" class="btn btn-primary" style="margin-right: 42%;">확인</button>
    	</div>  
		             
		</form>    
	    
		</div>   
	</section>
</div>    
</div>
<%@ include file="../include/footer.jsp"%>