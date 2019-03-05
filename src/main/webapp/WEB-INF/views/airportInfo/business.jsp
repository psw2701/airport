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
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/pregnantchildren" >임산부 및 유아, 어린이 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/trafficAbbreviation" >교통약자 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/pets" >애완동물 동반</a></li>
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/airportInfo/business" >기업인우대</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
<div id="contentRemark">
	<div class="section">
	<h4>기업인 우대 서비스</h4>
		<ul class="ul_list3 ml0 mb10">
			<li class="mb0"><strong class="txt_dg">이용대상 : </strong>제5기 기업인 공항우대서비스(CIP) 대상자</li>
			<li class="mb0"><strong class="txt_dg">대상공항 : </strong>한국공항공사가 운영 중인 14개 공항</li>
		</ul>

	<p class="txt_org small">※ 인천공항이용문의는 인천국제공항공사로 문의하여 주시기 바랍니다.</p>
	</div>

<div class="section">
		<h4>제공 서비스</h4>
	
		<ul class="ul_list3 ml0 txt_dg">
			<li class="mb0"><strong>출입국수속 우대 : </strong>국제선 우선보안검색대 및 출입국우대심사대 이용 가능(동반 3인까지)</li>
		</ul>
								
								
</div>
	
</div>

</div>
</div>	
		<%@ include file="../include/footer.jsp"%>						