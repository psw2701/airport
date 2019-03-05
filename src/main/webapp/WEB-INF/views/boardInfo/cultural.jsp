<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaaaaaaa" rel="stylesheet"  type="text/css">
     <link href="${pageContext.request.contextPath }/resources/css/boardInfo.css?Aaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/security" >기내반입금지물품</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/lithium" >리튬배터리 휴대기준</a></li>
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/cultural" >문화재 반출입 제한</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
<div id="contentRemark">
								
								
								    
								    
								    
									<div class="section">
<h4>문화재 반출입 제한안내</h4>

<ul class="ul_list">
	<li><strong class="txt_802224">한국은 문화재의 국외반출을 금지함 문화재의 국외반출 허가신청</strong> : 출국 3개월전에 문화재청장에게 신청서 제출</li>
	<li><strong class="txt_802224">문화재로 오인될 수 있는 물건을 반출할 때에도 확인(감정)을 받아야 함 감정신청</strong> : 출국 3시간 전까지 공항에 있는 문화재감정관실에 신청</li>
</ul>
</div>

<div class="section mb40">
<h4>전국공항 문화재감정관실</h4>

<div class="table-responsive">
<table class="table table6 b_t0 text-center" summary="김포공항, 김해봉공, 청주공항, 제주공항, 대구공항, 무안공항 등의 정보가 있습니다.">
	<caption class="sr-only">전국공항 문화재감정관실</caption>
	<colgroup>
		<col width="20%">
		<col width="80%">
	</colgroup>
	<tbody class="b_t2">
		<tr>
			<th class="b_t0" scope="row">김포공항</th>
			<td class="text-left">TEL : 02-2662-1546~7<br>
			FAX : 02-2662-1535</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">김해공항</th>
			<td class="text-left">TEL : 051-973-1972<br>
			FAX : 051-973-1971</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">청주공항</th>
			<td class="text-left">TEL : 043-213-3763<br>
			FAX : 043-213-3761</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">제주공항</th>
			<td class="text-left">TEL : 064-742-4276<br>
			FAX : 064-742-4279</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">대구공항</th>
			<td class="text-left">TEL : 053-984-5978<br>
			FAX : 053-984-5979</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">무안공항</th>
			<td class="text-left">TEL : 061-453-9790<br>
			FAX : 061-453-9790</td>
		</tr>
		<tr>
			<th class="b_t0" scope="row">양양공항</th>
			<td class="text-left">TEL : 033-673-4931<br>
			FAX : 033-673-4930</td>
		</tr>
	</tbody>
</table>
</div>
</div>
								
								
							</div>
	
			
</div>
</div>
<%@ include file="../include/footer.jsp"%>