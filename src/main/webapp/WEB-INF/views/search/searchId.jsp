<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css" rel="stylesheet"  type="text/css">

<div id="joinform">

<form class="content" action="searchId" method="post" id="f1">
    <div class="container mt-3">
    
 		<h2><b>아이디 찾기</b></h2>
		<p>아래 내용을 빠짐없이 기재해주세요.</p>
		<hr>
      
      <label for="name"><b>이름</b></label>
      <input type="text" placeholder="Enter Name" name="name" required >
      
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
        
         <div class="clearfix">
        <button type="reset" class="cancelbtn">초기화</button>
        <button type="submit" class="signupbtn">아이디 찾기</button>
      </div>
        </div>
  </form>
  
</div>	    
 <script>
   $("#f1").submit(function(e){
	 
	  var email1 = $("#email1").val();
	  var email2 = $("#email2").val();
	  email1 = email1 + "@" + email2;
	  $("#email1").val(email1);
	  
	  return true;
   });
  </script>
<%@ include file="../include/footer.jsp"%>