<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>

    <link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaabbbbbb" rel="stylesheet"  type="text/css">

    
<div id="joinform">
  <form class="content" action="register" method="post" id="f1" enctype="multipart/form-data">
    <div class="container mt-3">
    
      <h2><b>고객의 소리 등록</b></h2>
    
      <hr>
      
      <input type="hidden" name="code" value="${login.cusCode }"> 
      
	<label>이름</label>
	<input type="text" name="name" class="form-control" placeholder="Enter Name" value="${login.name }" readonly="readonly">
	      
	<label>휴대폰 번호</label>
	<input type="text" name="phone" class="form-control" placeholder="Enter Phone" value="${login.phone }" readonly="readonly">
      
	<label>이메일</label>
	<input type="text" name="email" class="form-control" placeholder="Enter Email" value="${login.email }" readonly="readonly"> 

 	<label for="sel1">대상공항선택</label><br>			
		<select class="form-control" id="sel1" name="AirCode">
			<option value="ICN">인천국제공항</option>
			<option value="GMP">김포국제공항</option>
			<option value="YNY">양양국제공항</option>
			<option value="WJU">원주공항</option>
			<option value="TAE">대구국제공항</option>
			<option value="CJJ">청주국제공항</option>
			<option value="KPO">포항공항</option>
			<option value="PUS">김해국제공항</option>
			<option value="CJU">제주국제공항</option>
			<option value="HIN">사천공항</option>
			<option value="USN">울산공항</option>
			<option value="MWX">무안국제공항</option>
			<option value="KWJ">광주공항</option>
			<option value="KUV">군산공항</option>
			<option value="RSU">여수공항</option>
		</select><br> 
		
	<label>제목</label><br>
	<input type="text" name="title" class="form-control" placeholder="Enter Title" value="${BoardVO.title }">
	
	<label>내용</label><br>
	<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content">${BoardVO.content }</textarea><br>
      
 	<label>첨부파일</label><br>
	<input type="file" name="file" class="form-control" placeholder="이미지를 선택하세요" multiple="multiple" value="${BoardVO.file }"> 
    
	<label>답변필요여부</label>  
 	<div class="radio">
      <label><input type="radio" name=required checked value="true">예</label>
      <label><input type="radio" name="required" value="false">아니오</label>
    </div>
	
	<label>공개여부</label>  
	<div class="radio">
      <label><input type="radio" name="open" checked value="true">예</label>
      <label><input type="radio" name="open" value="false">아니오</label>
      <p>※비공개 선택시 회원가입자에 한해서만 내용을 확인하실 수 있으니 회원가입후 고객의소리를 작성하여 주세요.</p>
    </div>
   
      <div class="clearfix">
        <button type="reset" class="cancelbtn">초기화</button>
        <button type="submit" class="signupbtn">등록</button>    
      </div>
    </div>
  </form>
 
   </div>	 

 
<%@ include file="../include/footer.jsp"%>