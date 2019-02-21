<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/header.jsp"%>    
<link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaaaaaaaa" rel="stylesheet"  type="text/css">
    


<div id="joinform">	
<form action="modify" method="post" enctype="multipart/form-data">
	<div class="container mt-3">
		<h3 class="box-title">고객의 소리 입니다.</h3>
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
				<option value="ICN" ${boardVO.airportCode.code == 'ICN' ? 'selected' : ''}>인천국제공항</option>
				<option value="GMP" ${boardVO.airportCode.code == 'GMP' ? 'selected' : ''}>김포국제공항</option>
				<option value="YNY" ${boardVO.airportCode.code == 'YNY' ? 'selected' : ''}>양양국제공항</option>
				<option value="WJU" ${boardVO.airportCode.code == 'WJU' ? 'selected' : ''}>원주공항</option>
				<option value="TAE" ${boardVO.airportCode.code == 'TAE' ? 'selected' : ''}>대구국제공항</option>
				<option value="CJJ" ${boardVO.airportCode.code == 'CJJ' ? 'selected' : ''}>청주국제공항</option>
				<option value="KPO" ${boardVO.airportCode.code == 'KPO' ? 'selected' : ''}>포항공항</option>
				<option value="PUS" ${boardVO.airportCode.code == 'PUS' ? 'selected' : ''}>김해국제공항</option>
				<option value="CJU" ${boardVO.airportCode.code == 'CJU' ? 'selected' : ''}>제주국제공항</option>
				<option value="HIN" ${boardVO.airportCode.code == 'HIN' ? 'selected' : ''}>사천공항</option>
				<option value="USN" ${boardVO.airportCode.code == 'USN' ? 'selected' : ''}>울산공항</option>
				<option value="MWX" ${boardVO.airportCode.code == 'MWX' ? 'selected' : ''}>무안국제공항</option>
				<option value="KWJ" ${boardVO.airportCode.code == 'KWJ' ? 'selected' : ''}>광주공항</option>
				<option value="KUV" ${boardVO.airportCode.code == 'KUV' ? 'selected' : ''}>군산공항</option>
				<option value="RSU" ${boardVO.airportCode.code == 'RSU' ? 'selected' : ''}>여수공항</option>
			</select><br> 
			
		<label>제목</label>
		<input type="text" name="title" class="form-control" placeholder="Enter Title" value="${boardVO.title }">
			
		<label>내용</label><br>
		<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content">${boardVO.content }</textarea><br>
							
		<label>첨부파일</label>
		<input type="file" name="addFiles" class="form-control" multiple="multiple">
			
			<div class="form-group">	 
				<c:forEach var="file" items="${boardVO.files }">
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
						
		<label>답변필요여부</label>  
 			<div class="radio">
      			<label><input type="radio" name=required value="true" ${boardVO.required == 'true' ? 'checked' : ''}>예</label>
      			<label><input type="radio" name="required" value="false" ${boardVO.required == 'false' ? 'checked' : ''}>아니오</label>
    		</div>
	
		<label>공개여부</label>  
			<div class="radio">
				<label><input type="radio" name="open" value="true" ${boardVO.open == 'true' ? 'checked' : ''}>예</label>
      			<label><input type="radio" name="open" value="false"  ${boardVO.open == 'false' ? 'checked' : ''}>아니오</label>
     			<p>※비공개 선택시 회원가입자에 한해서만 내용을 확인하실 수 있으니 회원가입후 고객의소리를 작성하여 주세요.</p>
    		</div>
			
					
		<div class="clearfix">
       			<button type="submit" class="btn btn-warning" id="btnModify">Modify</button>
      	</div>	
	
				<input type="hidden" name="no" value="${boardVO.no }">
				<input type="hidden" name="page" value="${cri.page }">
				<input type="hidden" name="searchType" value="${cri.searchType}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
						
	</div>
	</form>
</div>

<%@ include file="../include/footer.jsp"%>	