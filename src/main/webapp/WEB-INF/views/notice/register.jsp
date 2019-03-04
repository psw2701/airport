<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaaaaa" rel="stylesheet"  type="text/css">

<div id="cusvoc">  
<div id="joinform">
  <form class="content" action="register" method="post" id="f1" enctype="multipart/form-data">
    <div class="container mt-3">
    
      <h2><b>공지사항 등록</b></h2>
     
      <hr>

	<label>이름</label>
	<input type="text" name="name" class="form-control" placeholder="Enter Name" value="${login.name }" readonly="readonly">
	      
		
	<label>제목</label><br>
	<input type="text" name="title" class="form-control" placeholder="Enter Title" required="required">
	
	<label>내용</label><br>
	<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content" required="required"></textarea><br>
      
 	<label>첨부파일</label><br>
	<input type="file" name="file" class="form-control" placeholder="이미지를 선택하세요" multiple="multiple"> 
  
    <label>공지</label>  	
 	<div class="radio">
      <label><input type="radio" name=isNotice checked value="true">예</label>
      <label><input type="radio" name="isNotice" value="false">아니오</label>
    </div>
	
      <div class="clearfix">
        <button type="reset" class="cancelbtn">초기화</button>
        <button type="submit" class="signupbtn">등록</button>    
      </div>
    </div>
  </form>
 
   </div>	 
</div>  
 
<%@ include file="../include/footer.jsp"%>