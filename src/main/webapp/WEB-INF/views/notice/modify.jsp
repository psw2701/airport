<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp"%>    
<link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaaaaaaaa" rel="stylesheet"  type="text/css">
    

<div id="cusvoc"> 
<div id="joinform">	
<form action="modify" method="post" enctype="multipart/form-data">
	<div class="container mt-3">
		<h3 class="box-title">공지사항</h3>
		<hr>
		
		<input type="hidden" name="code" value="${login.mngCode }">
		
		<label>이름</label>
		<input type="text" name="name" class="form-control" placeholder="Enter Name" value="${login.name }" readonly="readonly">
			
		<label>제목</label>
		<input type="text" name="title" class="form-control" placeholder="Enter Title" value="${noticeVO.title }" required="required">
			
		<label>내용</label><br>
		<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content" required="required">${noticeVO.content }</textarea><br>
							
		<label>첨부파일</label>
		<input type="file" name="imageFiles" class="form-control" multiple="multiple">
			
			<div class="form-group">	 
				<c:forEach var="file" items="${noticeVO.files }">
					<div class="item" id="previewBox">
						<img alt="" src="displayFile?filename=${file }">
						<span>${fn:substring(file,51,-1) }</span>
					</div>
				</c:forEach>
			</div> 
			
			<div id="delFileWrap">
			</div>
					
			<script type="text/javascript">
				//img 의 사이즈 구하기 div.item 크기 조정[
				//img 의 사이즈 구하기 div.item 크기 조정
				$(".item").each(function(i, obj) {
					var img = new Image();
						img.onload = function() {
						$(obj).css("width", this.width);
					}
						img.src = $(obj).find("img").attr("src");
					})
		
				$(".btnDel").click(function() {
					var filename = $(this).attr("data-src");
					var $input = $("<input>").attr("type","hidden").attr("name","delFiles").val(filename);
				$("#delFileWrap").append($input);
				$(this).parent().remove();
					})
			</script>
						
		 <label>공지</label>  	
 	<div class="radio">
      <label><input type="radio" name="notice" value="true" ${noticeVO.notice == 'true' ? 'checked' : ''}>예</label>
      <label><input type="radio" name="notice" value="false" ${noticeVO.notice == 'false' ? 'checked' : ''}>아니오</label>
    </div>
	
		
					
		<div class="clearfix">
       			<button type="submit" class="btn btn-warning" id="btnModify">수정</button>
      	</div>	
	
				<input type="hidden" name="no" value="${noticeVO.no }">
				<input type="hidden" name="page" value="${cri.page }">
				<input type="hidden" name="searchType" value="${cri.searchType}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
						
	</div>
	</form>
</div>
</div>
<%@ include file="../include/footer.jsp"%>	