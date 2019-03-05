<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaaaaaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/airportInfo/pregnantchildren" >임산부 및 유아, 어린이 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/trafficAbbreviation" >교통약자 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/pets" >애완동물 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/business" >기업인우대</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
<div id="contentRemark">
								
								
								    
								    
								    
									<div class="row">
<div class="col-md-6 pr0 b_r2">
<h4>출발</h4>

<div class="mt20 ml10 mr10">
<h5 class="con_title">전용주차구역 :</h5>

<h6 class="txt_dr fw700 large">[ 임산부 전용 주차구역 ]</h6>

<p class="txt_dg mb5 ml10 mr10">대구공항 주차장 내 임산부 전용 주차구역(8면)이 마련되어 있습니다.</p>

<ul class="ul_list2 ml20 mr20 mb10 txt_dg">
	<li>위 치 : 3번 게이트 앞, 호텔 에어포트 앞</li>
</ul>

<h6 class="txt_dr fw700 large mt20">[ 유모차 동반 ]</h6>

<p class="txt_dg mb5 ml10 mr10">유모차를 동반하실 경우 1층 중앙에 있는 엘리베이터를 이용하시면 편리합니다.</p>

<ul class="ul_list2 ml20 mr20 mb10 txt_dg">
	<li>위 치 : 1층 중앙</li>
</ul>
<img class="img-responsive ml10 mr10" src="${pageContext.request.contextPath }/resources/images/guide01_img2.png" style="max-width: 175px;"></div>

<div class="mt40 ml10 mr10">
<h5 class="con_title">수유 및 임산부 휴게실 :</h5>

<h6 class="txt_dr fw700 large">[ 휴게실 ]</h6>

<ul class="ul_list2 ml20 mr20 mb20 txt_dg">
	<li>위 치 : 2층 일반대합실 커피전문점 옆</li>
	<li>시 설 : 기저귀 갈이대, 유아침대, 싱크대, 정수기, 소파</li>
</ul>

<p class="txt_org small-hb ml10 mr10">※ 유아·임산부 휴게실 내 수유실이 있습니다.<br>
※ 기저귀 교환대 이용가능합니다.<br>
<img class="img-responsive ml10 mr10" src="${pageContext.request.contextPath }/resources/images/guide01_img3.png" style="max-width: 172px;"></p>
</div>

<div class="mt40 ml10 mr10">
<h5 class="con_title">보안검색 및 탑승 :</h5>

<p class="mb0 txt_dg ml10 mr10">임산부 고객 및 영유아 동반 고객을 위해 우선보안 검색대가 마련되어 있습니다.</p>

<p class="txt_org small-hb ml10 mr10">※ 임산부는 우선보안검색이 가능하며 문형탐지기를 지나지 않으셔도 됩니다. 보안검색요원에게 말씀해주시면 촉수 검색을 받으시게 됩니다.</p>
</div>
</div>

<div class="col-md-6 pl50 m-pl15 m-pt20">
<h4>도착</h4>

<div class="mt20 ml10 mr10">
<h5 class="con_title">대중교통 및 주차장 이용 :</h5>

<h6 class="txt_dr fw700 large mt20">[ 버스이용 ]</h6>

<p class="txt_dg mb5 ml10 mr10">대구공항에서 나오셔서 100m 이동하시면 버스 승강장이 있습니다.<br>
횡단보도를 건너시면 반대방향 버스 승강장이 있습니다.</p>
<img class="img-responsive ml15" src="${pageContext.request.contextPath }/resources/images/guide01_img6.png" style="max-width: 175px;">
<h6 class="txt_dr fw700 large mt20">[ 택시이용 ]</h6>

<p class="txt_dg mb5 ml10 mr10">2번, 3번 게이트에서 나오시면 택시승강장이 보입니다.</p>
<img class="img-responsive ml15" src="${pageContext.request.contextPath }/resources/images/guide01_img7.png" style="max-width: 176px;"></div>
</div>
</div>
								
								
							</div>
</div>
</div>	
		<%@ include file="../include/footer.jsp"%>	