<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/traffic.css?Aaa" rel="stylesheet"  type="text/css">

<div id="container">
	<div id="customer_container">
		<div id="contentRemark">
			<div class="map_article">
				<div class="row mt30">
					
					<div class="col-md-8">
					<p><strong class="txt_dg3">위치</strong> : 대구광역시 동구 수완로 333 / <strong class="txt_dg3">지리적위치</strong> : 북위 35˚53´27˝ 동경 128˚39´40˝ 해발 35.4m</p>
					</div>

					<div class="col-md-4">
					<p>공항종합안내(자동음성안내) : <strong class="txt_dg3">1661-2626</strong></p>
					</div>
				</div>

				<div class="row">
					<div class="col-md-8">
					<img alt="공항오시는 길의 자세한설명은 다음 설명으로 확인해 주시기 바랍니다." class="img-responsive b1" src="${pageContext.request.contextPath }/resources/images/map_img1.gif">
					</div>

					<div class="col-md-4">
						<div class="map_info">
						<p class="location_title">오시는 길</p>

							<dl class="dl_list">
								<dt>구미, 경주 등 대구인근지역 (60분 이내) :</dt>
								<dd>경부 고속도로 → 팔공산IC → 공항</dd>
								<dt>포항,동해안 지역 (60분 이내) :</dt>
								<dd>대구 → 포항고속도로 → 팔공산 IC → 공항</dd>
								<dt>해인사 등 경남서부지역 (60분 이내) :</dt>
								<dd>88고속도로 → 금호 JC →북대구 IC → 팔공산 IC → 공항</dd>
								<dt>안동 등 경북북부지역 (90 ~ 120분 이내) :</dt>
								<dd>중앙고속도로 → 금호 JC → 북대구 IC → 팔공산 IC → 공항</dd>
								<dt>공항버스 :</dt>
								<dd>대구공항 ↔ 구미시외버스터미널 (일 왕복 15회)</dd>
							</dl>

								<p class="location_title">자가용</p>
		
								<dl class="dl_list">
									<dt>도동JC로 나와 팔공로 불로삼거리에서 좌회전하여 공항 진입</dt>
								</dl>
		
								<p class="location_title">대중교통</p>
		
								<ul class="ul_list4" style="padding-left: 0px;">
									<li class="mb10"><strong>급행버스 : </strong> 급행1</li>
									<li class="mb10"><strong>간선버스 : </strong> 101, 101-1, 401, 719</li>
									<li class="mb10"><strong>지선버스 : </strong> 동구2, 팔공1</li>
									<li><strong>지하철 : </strong> 아양교역 하차후 급행1, 팔공1, 401, 101-1&nbsp;환승</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
								
			</div>
		</div>								
</div>
<%@ include file="../include/footer.jsp"%>