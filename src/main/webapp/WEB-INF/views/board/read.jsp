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
			<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content" readonly="readonly">${boardVO.content }</textarea><br>
						
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
					
			<div class="clearfix">
       			<button type="submit" class="btn btn-primary" id="btnList">목록</button>
						<button type="submit" class="btn btn-warning" id="btnModify">수정</button>
						<button type="submit" class="btn btn-danger" id="btnRemove">제거</button>
      		</div>	
					
			<form id="f1" action="" method="post">
				<input type="hidden" name="no" value="${boardVO.no }">
				<input type="hidden" name="page" value="${cri.page }">
				<input type="hidden" name="searchType" value="${cri.searchType}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
			</form>				
	</div>
	
	<div class="container mt-3" > <!-- style="display:none;" -->
		<h3 class="box-title">고객의 소리 처리결과 입니다.</h3>
		<hr>
			<label>작성자</label>
			<input type="text" class="form-control" placeholder="User Id" id="newReplyWriter" readonly="readonly">
			<label>내용</label><br>
			<textarea rows="10" class="form-control" name="content" placeholder="Enter Content" id="content2"></textarea><br>
			
			<ul class="timeline">
				<li class="time-label" id="repliesDiv">
				<%-- 	<span class="bg-green" >Replies List <span id="replycnt">[${boardVO.replycnt }]</span></span> --%>
				</li>
				
				
			</ul>
			<div class="text-center">
				<ul id="pagination" class="pagination pagination-sm no-margin">
				</ul>
			</div>
	</div>
	
	
	
</div>
</div>
	<!-- <div id="modifyModal" class="modal modal-primary fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				
				</div>
				<div class="modal-body">
					<p><input type="text" id="replytext" class="form-control"></p>내용 들어감 
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" id="btnReplyMod"  data-rno="" >Modify</button>
					<button type="button" class="btn btn-default" data-dismiss=modal>Close</button>
				</div>
			</div>
		</div>
	</div> -->



<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script>
	
	 $(function() {
		$("#btnList").click(function() {
			location.href = "${pageContext.request.contextPath}/board/list?no=${boardVO.no}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			$("#f1").attr("action", "list");
			$("#f1").attr("method", "get");
			$("#f1").submit();

		})
		$("#btnRemove").click(function() {
			//#f1(form)를 submit 보냄
			location.href = "${pageContext.request.contextPath}/board/list?no=${boardVO.no}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			$("#f1").attr("method", "post");
			$("#f1").attr("action", "remove");
			$("#f1").submit();

		})
		$("#btnModify").click(function() {
			$("#f1").attr("action", "modifyPage");
			$("#f1").attr("method", "get");
			$("#f1").submit();
			location.href = "${pageContext.request.contextPath}/board/modify?no=${boardVO.no}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}";
		})
	}) 
</script>

<!-- <script type="text/x-handlebars-template" id="template1">
{{#each.}}
<li class="replyLi" data-rno="{{rno}}">
<i class="fa fa-comments bg-blue"></i>
<div class="timeline-item">
	<span class="item">
		<i class="fa fa-clock-o"></i>{{tempDate regdate}}
	</span>
	<h3 class="timeline-header">
		<strong>{{rno}}</strong> - {{replyer}}
	</h3>
	<div class="timeline-body" data-replytext={{replytext}}>
		{{replytext}}
	</div>
	<div class="timeline-footer">
		<a class="btn btn-primary btn-xs btnModify" data-toggle="modal" data-target="#modifyModal"  data-rno="{{rno}}" data-text="{{replytext}}">Modify</a>
		<a class="btn btn-danger btn-xs btnDelete" data-rno={{rno}}>Delete</a>
	</div>
</div>
</li>
{{/each}}
</script> -->

<script>
	/* Handlebars.registerHelper("tempDate",function(value){
		var date = new Date(value);
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		return year + "년 " + month + "월 " + day + "일 ";
	})
	
 */
/* var no = ${boardVO.no };
function getPageList(page) {
	
	$.ajax({
		url:"${pageContext.request.contextPath}/replies/"+no+"/"+page,
		type:"get",
		dataType:"json",
		success:function(json){
			$("#replycnt").text("["+json.replycnt+"]");
			console.log(json);
		$(".replyLi").remove();
		
		var replycnt=$("#replycnt")
		var source = $("#template1").html();
		var template = Handlebars.compile(source);
		var result = template(json.list);
		$(".timeline").append(result);
		
		$("#pagination").empty();
		for (var i =json.pageMaker.startPage; i <= json.pageMaker.endPage; i++) {
			var liTag = $("<li>");
			var aTag = $("<a>").append(i).attr("href","#");
			liTag.append(aTag);
			
			if(i == json.pageMaker.cri.page){
				liTag.addClass("active");
			}
			$("#pagination").append(liTag);
	
		
		}
		
		}
	})
}
 */
/* $(function() {
	getPageList(1);
	
	
	$("#btnReplyAdd").click(function() {
		//no, replyer, replytext
	
		var replyer = $("#newReplyWriter").val();
		var replytext = $("#newReplyText").val();
		
		var jsonBody = {no:no, replyer:replyer, replytext:replytext }
		
		//@RestBody, header, JSON.stringify
		$.ajax({
			url:"${pageContext.request.contextPath}/replies/",
			type: "post",
			headers:{
				"Content-Type":"application/json",
				"X-HTTP-Method-Override":"POST"
				},
			data: JSON.stringify(jsonBody), //{no:no, replyer:replyer, replytext:replytext }
			dataType: "text",
			success:function(json){
				
				console.log(json); 
				$().empty();
				if(json=="success"){
					alert("등록하였습니다.");
					getPageList(1);
					$("#newReplyWriter").val("");
					$("#newReplyText").val("");
				}
			}
		})
	}) */
/* $(document).on("click", ".btnModify", function() {
         
         var rno = $(this).attr("data-rno");
         
         var text = $(this).attr("data-text");
         
         $("#replytext").attr("data-text",rno);
         $("#replytext").val(text)
         
         
      })
      
      $(document).on("click", "#btnReplyMod", function() {
         var replyText = $("#replytext").val();
         var rno =  $("#replytext").attr("data-text");
         
         var jsonBody = {replytext:replyText};
         
         $.ajax({
            url:"${pageContext.request.contextPath}/replies/"+rno,
            type:"put",
            headers:{
               "Content-Type":"application/json",
               "X-HTTP-Method-Override":"PUT"      
            },
            data:JSON.stringify(jsonBody),
            dataType:"text",
            success: function (json) {
               console.log(json);
               if (json == "success") {
                  alert(rno+"가 수정되었습니다.")
               }
               $("#modifyModal").modal("hide");
               getPageList(1); 
            }
         })
         
      }) */
/* 		$(document).on("click", ".btnDelete", function() {
			var rno = $(this).attr("data-rno");
		
			var jsonBody = {rno:rno}
			
			$.ajax({
				url:"${pageContext.request.contextPath}/replies/"+rno,
				type: "delete",
				dataType: "text",
				success:function(json){
					console.log(json);
					if(json=="success"){
						alert(rno+"가 삭제되었습니다.");
					}
					getPageList(1);
				}
			})
			
		})
			$(document).on("click", ".pagination a", function(e) {
			e.preventDefault();
			var num = $(this).text();
			getPageList(num);
		})
	
})
 */
</script>
	<!-- <script type="text/javascript">
		$("#file").change(function() {
			$("#previewBox").empty();
			var reader = new FileReader();
			reader.onload = function(e){
				var $img = $("<img>");
				$img.attr("src", e.target.result);
				$("#previewBox").append($img);
			}
			//$(this)[0] : javascript input 객체
			//$(this)[0].files[0]: javascript input객체 안에 들어있는 file들의 정보를 담는 변수
			var file = $(this)[0].files[0];
			reader.readAsDataURL(file)
		})
		
	</script> -->
	<!-- <script>
	/*/.box-body */
	$(".item").each(function(i, obj) {
		//img 의 사이즈 구하기 div.item 크기 조정
		var img = new Image();
		img.onload = function() {
			$(obj).css("width", this.width);
		}
		img.src = $(obj).find("img").attr("src");
	})
	
	
	</script> -->
	
<%@ include file="../include/footer.jsp"%>	