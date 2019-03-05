<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">

<div id="container">
	<div id="customer_container">
			
		<ul class="nav nav-pills  nav-justified" role="tablist">
			<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/traffic/park">주차장</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath }/traffic/parkingFee">주차요금</a></li>
		</ul>
		
			<div id="contentRemark">					  					    
				<div class="section" style="padding-bottom: 0px; ">
					<h4>주차장 안내<br>
					<br>
					<span style="color: rgb(255, 0, 0);">*&nbsp;이용객 증가에 따라, 공항 주차장이 매우 혼잡하오니 가급적 대중교통을 이용해주시기 바랍니다. </span><br>
					<br>
					<img alt="상단의 내용을 참고해주세요." class="img-responsive b1 mt10" src="${pageContext.request.contextPath }/resources/images/parking_img1.gif" style="max-width: 725px;"></h4>
				</div>

<div class="section" style="padding-top: 0px;">
<ul class="ul_list3 ml0 mb0">
	<li class="mb0">주차장 진입시 차량번호가 자동으로 인식되어 주차권 발권없이 입차하시면 됩니다.</li>
	<li class="mb0">주차요금 계산은 사전무인정산기(여객대합실:2대, 주차장:2대, 화물청사:1대)에서 현금 또는 신용카드로 정산하시면 출구에서 차단기가 자동으로 열려 출차하시면 됩니다.<br>
	※ 사전무인정산후 20분 초과시 추가요금 발생</li>
	<li class="mb0">미정산차량은 출구 신용카드 전용계산기에서 신용카드로 정산후 출차 가능합니다.</li>
</ul>

<p>※ 할인차량은 출구A 주차장이용안내소를 이용하시기 바랍니다. (053-980-5254)</p>
</div>
								
								
							</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>	