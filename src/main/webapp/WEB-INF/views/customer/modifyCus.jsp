<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css?a" rel="stylesheet"  type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<div id="container"> 
<div id="customer_container">
	<div id="joinform">

<h3>회원정보수정</h3>
	
  <form class="content" action="customer" method="post" id="f1">
   
      <hr>
             
      <label for="name"><b>이름</b></label><br>
      <input type="text" placeholder="Enter Name" name="name" required value="${login.name }" readonly="readonly"><br>
   
      
      <label for="id"><b>아이디</b></label><br>  
      <input type="text" placeholder="Enter Id" name="id" required id="inputId" value="${login.id }" readonly="readonly">
      
      <br>
      
      <label for="psw"><b>비밀번호</b></label><br>
      <input type="password" placeholder="Enter Password" name="passwd"  class="inputPwd" id="Password">비밀번호는 영문,숫자,특수문자 혼합하여 8자리~20자리 이내<br>
 

      <label for="confirmPassword"><b>비밀번호 확인</b></label><br>
      <input type="password" placeholder="Repeat Password" name="confirmPasswd"  class="inputPwd" id="ChPassword"><br>
     
     <label for="phone"><b>전화번호</b></label><br>
         <c:set var='phone1' value="${fn:substring(customerVO.phone,0, 3) }"></c:set>
      <input type="hidden" name="phone" id="phone">
     <select name="phone1" id="phone1" class="form-control mb-3">
           <!-- <option selected="selected" value="opt">선택하세요</option> -->
           <option value="010" ${phone1=='010'?'selected':''}>010</option>
           <option value="011"  ${phone1=='011'?'selected':''}>011</option>
           <option value="017" ${phone1=='017'?'selected':''}>017</option>
        </select>
      - <input type="text" name="phone2" value="${fn:substring(customerVO.phone,4,4+fn:indexOf(fn:substringAfter(customerVO.phone,'-'),'-')) }"> - <input type="text" name="phone3" value="${fn:substring(customerVO.phone,9,13) }"><br>

        
      <label for="email"><b>E-mail</b></label><br>
      <input type="text" name="email" value="${fn:substring(customerVO.email,0, fn:indexOf(customerVO.email,'@')) }" required="required" id="email1" ><b>@</b> 
       <c:set var="index" value="${fn:indexOf(customerVO.email,'@') }" ></c:set>
      <input type="text" name="email2" value="${fn:substring(customerVO.email,index+1,-1) }" id="email2"> 
           <c:set var="domain" value="${fn:substring(customerVO.email,index+1,-1)}"></c:set>
         <select name="email2" id="domain" class="form-control mb-3">
        
           <option value="naver.com" ${domain=='naver.com'?'selected':'' }>naver.com</option>
           <option value="gmail.com" ${domain=='gmail.com'?'selected':'' }>gmail.com</option>
           <option value="daum.net" ${domain=='daum.net'?'selected':'' }>daum.net</option>
           <option value="nate.com" ${domain=='nate.com'?'selected':'' }>nate.com</option>
           <option value="yahoo.com"${domain=='yahoo.com'?'selected':'' }>yahoo.com</option>
        </select><br>

      
      <label for="zipcode"><b>우편번호</b></label><br>
      <input type="text" placeholder="Enter zipcode" name="zipCode" required id="sample6_postcode" value="${customerVO.zipCode }">
      <button type="button" class="btn btn-default" onclick="sample6_execDaumPostcode()" id="btnSearchPost">우편번호 찾기</button><br>
      
      <label for="address"><b>주소</b></label><br>
      <input type="text" placeholder="Enter Address" name="address" required id="sample6_address" value="${customerVO.address }"><br>
      
      <label for="detailAddr"><b>상세주소</b></label><br>
      <input type="text" placeholder="Enter detailAddr" name="detailAddr"  id="sample6_detailAddress">
      <input type="text" id="sample6_extraAddress" placeholder="참고항목"><br>

	<input type="hidden" name="code" value="${customerVO.code }">
 
      <div class="clearfix">
        <button type="submit" class="cancelbtn" id="withdrawal">회원탈퇴</button>
        <button type="submit" class="signupbtn">회원정보수정</button>
      </div>

  </form>
  

  
  
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
  <script type="text/javascript">
  <c:if test="${sameResult==0 }">
	alert("비밀번호를 다시 확인해주세요.")
	</c:if>
  </script>
  <script type="text/javascript">
  	function() {
		$("#withdrawal").click(function() {
			if(confirm("정말로 삭제하시겠습니까?")){
				$("#f1").attr("method", "post");
				$("#f1").attr("action", "remove");
				$("#f1").submit();
			}
		})
	}
		 
  </script>
 
</div>	
</div>
</div>
<!-- 다음주소 API -->
	<script src="${pageContext.request.contextPath }/resources/js/post.js?a"></script>
<%@ include file="../include/footer.jsp"%>