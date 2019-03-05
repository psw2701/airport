<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
 <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath }/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath }/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    
    <link href="${pageContext.request.contextPath }/resources/css/form.css?Aaaaaaaaa" rel="stylesheet"  type="text/css">
    
<section class="content" id="listContent">
		<div class="row">
			<div class="col-sm-12">
			<div class="box">
					<div class="box-header with-border">
					<h3 class="box-title">Board List Search</h3>	
				</div>
				<div class="box-body">
					<select name="searchType">
						<option value="n">---</option>
						<option value="t" ${cri.searchType == 't' ? 'selected' : '' }>Title</option>
						<option value="c" ${cri.searchType == 'c' ? 'selected' : '' }>Content</option>
						<option value="w" ${cri.searchType == 'w' ? 'selected' : '' }>Writer</option>
						<option value="tc" ${cri.searchType == 'tc' ? 'selected' : '' }>Title or Content</option>
						<option value="cw" ${cri.searchType == 'cw' ? 'selected' : '' }>Content or Writer</option>
						<option value="tcw" ${cri.searchType == 'tcw' ? 'selected' : '' }>Title or Content or Writer</option>
					</select>
					<input type="text" name="keyword" id="keywordInput">
					<button id="btnSearch" class="btn btn-default">Search</button>
					
				
					<c:if test="${login.mngCode !=null }">
					<button id="btnNewNotice" class="btn btn-default">New Notice</button>
					</c:if>
					
				</div>
				</div>
			<div class="box">
				
				<div class="box-body">
					<table class="table">

						<thead>
							<tr>
								<th>NO</th>
								<th>TITLE</th>
								<th>WRITER</th>
								<th>REGDATE</th>
								
								<!-- <th>ANSDATE</th> -->
								<th>VIEWCNT</th>
							</tr>
						</thead>
						<tbody>
							 <c:forEach items="${list }" var="noticeVO">
								<tr>
									<td>${noticeVO.no }</td>
									<td><a href="${pageContext.request.contextPath}/notice/read?no=${noticeVO.no}&page=${pageMaker.cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">${noticeVO.title } </a></td>
									<td>${noticeVO.managerCode.name }</td> 
									<td><fmt:formatDate value="${noticeVO.regDate}" pattern="yyyy-MM-dd HH:mm"/></td>
									
									<%-- <td><fmt:formatDate value="${noticeVO.regDate}" pattern="yyyy-MM-dd HH:mm"/></td> --%>
									<td><span class="badge bg-red">${noticeVO.viewCnt }</span></td>
								</tr>
							</c:forEach> 
						</tbody>
					</table>
				</div>
				<div class="box-footer">
					<div class="text-center">
						<ul class="pagination">
						<c:if test="${pageMaker.prev }">
                        <li><a href="${pageContext.request.contextPath}/notice/list?page=${pageMaker.startPage-1}&searchType=${cri.searchType}&keyword=${cri.keyword}">&laquo;</a></li>
                     </c:if>                     
                     <c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                        <li ${pageMaker.cri.page == idx ? 'class="active"':''}><a href="${pageContext.request.contextPath}/notice/list?page=${ idx}&searchType=${cri.searchType}&keyword=${cri.keyword}">${ idx}</a></li> 
                     </c:forEach>
                     <c:if test="${pageMaker.next }">
                        <li><a href="${pageContext.request.contextPath}/notice/list?page=${pageMaker.endPage+1}&searchType=${cri.searchType}&keyword=${cri.keyword}">&raquo;</a></li>
                     </c:if>   
						</ul>
					</div>
				</div>
			</div>
			</div>
		</div>
	</section>
	
	<script>
		$(function () {
			$("#btnSearch").click(function(){
				var searchType = $("select[name='searchType']").val();
				var keyword = $("#keywordInput").val();
				location.href = "${pageContext.request.contextPath}/notice/list?searchType="+searchType+"&keyword="+keyword;
			})
			$("#btnNewNotice").click(function(){
				location.href = "register";
			})
		})
	</script>
	
<%@ include file="../include/footer.jsp"%>