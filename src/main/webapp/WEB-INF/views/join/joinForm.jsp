<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css" rel="stylesheet"  type="text/css">

<!-- 다음 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 
<div id="joinform">
  <form class="content" action="/action_page.php" method="post">
    <div class="container mt-3">
    
      <h2><b>회원가입</b></h2>
      <p>아래 내용을 빠짐없이 기재해주세요.</p>
      <hr>
      
      <label for="name"><b>이름</b></label>
      <input type="text" placeholder="Enter Name" name="name" required >
      
      <label for="id"><b>아이디</b></label>
      <input type="text" placeholder="Enter Id" name="id" required>
      
      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <label for="confirmPassword"><b>비밀번호 확인</b></label>
      <input type="password" placeholder="Repeat Password" name="confirmPassword" required>
      
      <label for="email"><b>E-mail</b></label><br>
      <input type="text" placeholder="Enter Email" name="email1" required id="email1"> <b>@</b> <input type="text" placeholder="Enter Email" name="email2"  id="email2" required>
          
         <select name="email2" id="domain" class="form-control mb-3">
        
        	<option selected="selected">직접 입력</option>
        	<option value="naver.com">naver.com</option>
        	<option value="gmail.com">gmail.com</option>
        	<option value="daum.net">daum.net</option>
        	<option value="nate.com">nate.com</option>
        	<option value="yahoo.com ">yahoo.com </option>
        </select><br>
      
      <label for="zipcode"><b>우편번호</b></label><br>
      <input type="text" placeholder="Enter zipcode" name="zipcode" required id="sample6_postcode">
      <button type="button" class="btn btn-default" onclick="sample6_execDaumPostcode()" id="btnSearchPost">우편번호 찾기</button><br>
      
      <label for="address"><b>주소</b></label>
      <input type="text" placeholder="Enter Address" name="address" required id="sample6_address">
      
      <label for="detailAddr"><b>상세주소</b></label><br>
      <input type="text" placeholder="Enter detailAddr" name="detailAddr" required id="sample6_detailAddress">
      <input type="text" id="sample6_extraAddress" placeholder="참고항목"><br>

 
      <div class="clearfix">
        <button type="reset" class="cancelbtn">초기화</button>
        <button type="submit" class="signupbtn">회원가입</button>
      </div>
    </div>
  </form>
 
</div>	

<!-- 다음주소 API -->
	<script src="${pageContext.request.contextPath }/resources/js/post.js?a"></script>
<%@ include file="../include/footer.jsp"%>