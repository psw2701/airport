<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css?aaaaaaaa" rel="stylesheet"  type="text/css">



<!-- 다음 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<div id="container"> 
<div id="customer_container">
	<div id="joinform">
	<h3>04.정보입력</h3>
	<p>
		<img alt="회원가입" src="${pageContext.request.contextPath }/resources/images/kcc_lg_04_01_03.jpg" class="img-responsive">
	</p>
	<ol class="sr-only">
		<li>01.회원가입 안내</li>
		<li>02.실명확인</li>
		<li>03.약관동의</li>
		<li>04.정보입력(현재단계)</li>
		<li>05.가입완료</li>
		<li></li>
	</ol>

  <form class="content" action="join" method="post" id="f1">
 
    
      <div class="text-caption">
			<div class="h3">한국공항공사 회원가입을 위해 정보를 입력해주세요.</div>
				
		</div>
      <hr>
      
      <label for="name"><b>이름</b></label>
      <input type="text" placeholder="Enter Name" name="name" required >
      
      <label for="id"><b>아이디</b></label>
      <input type="text" placeholder="Enter Id" name="id" required>
      
      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="Enter Password" name="passwd" required>

      <label for="confirmPassword"><b>비밀번호 확인</b></label>
      <input type="password" placeholder="Repeat Password" name="confirmPasswd" required>
      
      <label for="phone"><b>전화번호</b></label><br>
      <input type="hidden" name="phone" id="phone">
     <select name="phone1" id="phone1" class="form-control mb-3">
        	<!-- <option selected="selected" value="opt">선택하세요</option> -->
        	<option value="010">010</option>
        	<option value="011">011</option>
        	<option value="017">017</option>
        </select>
      - <input type="text" name="phone2" id="phone2" required placeholder="Enter Phone"> - <input type="text" name="phone3" id="phone3" required placeholder="Enter Phone"><br>
        
      <label for="email"><b>E-mail</b></label><br>
      <input type="text" placeholder="Enter Email" name="email" required id="email1"> <b>@</b> <input type="text" placeholder="Enter Email" name="email2"  id="email2" required>
          
         <select name="email2" id="domain" class="form-control mb-3">
        
        	<option selected="selected">직접 입력</option>
        	<option value="naver.com">naver.com</option>
        	<option value="gmail.com">gmail.com</option>
        	<option value="daum.net">daum.net</option>
        	<option value="nate.com">nate.com</option>
        	<option value="yahoo.com ">yahoo.com </option>
        </select><br>
      
      <label for="zipcode"><b>우편번호</b></label><br>
      <input type="text" placeholder="Enter zipcode" name="zipCode" required id="sample6_postcode">
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

  </form>
  
  	<div class="section">
		<div class="text-center">
			<a class=" btn_prev large4" href="${pageContext.request.contextPath}/join/acceptTerms" role="button">이전 단계</a>
			<a class=" btn_next large4" href="${pageContext.request.contextPath}/join/" role="button">다음 단계</a>
		</div>
	</div>
  
  <script>
   $("#f1").submit(function(e){
	  var phone1 = $("#phone1").val();
	  var phone2 = $("#phone2").val();
	  var phone3 = $("#phone3").val();
	  phone1 = phone1+"-"+phone2+"-"+phone3;
	  $("#phone").val(phone1);
	  
	  var address = $("#sample6_address").val();
	  var detailAddr = $("#sample6_detailAddress").val();
	  address = address + " " + detailAddr;
	  $("#sample6_address").val(address);
	  
	  var email1 = $("#email1").val();
	  var email2 = $("#email2").val();
	  email1 = email1 + "@" + email2;
	  $("#email1").val(email1);
	  
	  return true;
   });
  </script>
 
</div>	
</div>
</div>
<!-- 다음주소 API -->
	<script src="${pageContext.request.contextPath }/resources/js/post.js?a"></script>
<%@ include file="../include/footer.jsp"%>