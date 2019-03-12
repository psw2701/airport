<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp"%>
    
    <link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaaaaaaaa" rel="stylesheet"  type="text/css">
    

<div id="cusvoc">  			
<div id="joinform">	
	<div class="container mt-3">
		<h3 class="box-title">고객의 소리 입니다.</h3>
		<hr>
			
			<label>제목</label>
			<input type="text" name="title" class="form-control" placeholder="Enter Title" value="${boardVO.title }" readonly="readonly">
			
			<label>내용</label><br>
			<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content" readonly="readonly" style="resize: none;">${boardVO.content }</textarea><br>
						
			<label>작성자</label>
			<input type="text" name="writer" class="form-control" placeholder="Enter Writer"  value="${boardVO.cusCode.name }" readonly="readonly">
			<div class="form-group">	 
				<c:forEach var="file" items="${boardVO.files }">
					<div class="item" id="previewBox">
						<img alt="" src="displayFile?filename=${file }">
						<span>${fn:substring(file,51,-1) }</span>
					</div>
				</c:forEach>
			</div> 

			<form id="f1" action="" method="post">
				<input type="hidden" name="no" value="${boardVO.no }">
				<input type="hidden" name="page" value="${cri.page }">
				<input type="hidden" name="searchType" value="${cri.searchType}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
			</form>				
	</div>

	<div class="container mt-3" > <!-- style="display:none;" -->
	 <form class="content" action="reply" method="post" id="f1" enctype="multipart/form-data">
		<h3 class="box-title">고객의 소리 처리결과 입니다.</h3>
		<hr>
			<input type="hidden" name="boardNo" value="${boardVO.no }">
			<input type="hidden" name="code" value="${login.mngCode }"> 
			<label>작성자</label>
			<input type="text" class="form-control" placeholder="User Id" id="newReplyWriter" readonly="readonly" required="required" value="${login.name }">
			<label>제목</label>
			<input type="text" name="title" class="form-control" placeholder="Enter Title" value="${boardVO.title }" readonly="readonly"><br>
			<label>내용</label><br>
			<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="newReplyText"></textarea><br>
			
			<div class="clearfix">
			<button type="submit" class="btn btn-primary" id="btnAddReply">답변달기</button>
			</div>
			</form>
	</div>
	
	
	</div>
	</div>
	
	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script>
	
	 $(function() {
		$("#btnAddReply").click(function() {
			location.href = "${pageContext.request.contextPath}/board/reply?no=${boardVO.no}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			$("#f1").attr("action", "reply");
			$("#f1").attr("method", "post");
			$("#f1").submit();

		})
		
	}) 
</script>
	<%@ include file="../include/footer.jsp"%>	