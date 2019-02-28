<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aa   " rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/flightEtiquette" >기내에티켓</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/notice" >유의사항</a></li>
		
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
	<div id="contentRemark">
     
								    
									<div class="section">
							<h4>경유지 주의사항</h4>
							<p class="ml15">목적지까지 가는데 있어 중간에 다른 지역을 들렀다가 가는 경우를 가리켜 트랜짓이라 하는데 승객의 승하차와 급유, 급수, 기내식의 보급, 승무원의 교대와 기내 청소, 기체조정 등을 하게 되며, 보통 한 시간 정도 걸리는데 상황에 따라 승객은 기내, 또는 대합실에서 기다리게 됩니다.<br>특히 저가 항공권일수록 트랜짓의 횟수가 많으므로 비행의 전체 횟수를 확실히 알아두는 것이 좋습니다.</p>
						</div>

						<div class="section">
							<h4>환승(트랜스퍼)시 주의사항</h4>
							<p class="ml15">환승. 즉 갈아타는 것을 의미하는 것으로 국제선이 있는 대도시에서 다른 나라로 가거나 국내선으로 지방도시를 이용하게 될 때 트랜스퍼를 하게 됩니다. <br>트랜스퍼는 통상 국내에서 예약을 하지만 체크인은 현지에서 합니다. 단 화물은 최종목적지까지 붙이도록 합니다.<br>단 미국을 입국하는데 있어서는 중간 기착지에서 짐을 찾아서 검사를 받아야만 트랜스퍼가 가능합니다.</p>
						</div>

						<div class="section">
							<h4>Bumped 상황</h4>
							<p class="ml15">예약을 했는데도 Check-in이 안된 상태에서 예정된 시간에 비행기를 못 타는 경우가 있는데, 이는 전적으로 항공사의 책임이므로 이 때는 항공사에서 탈 수 있는 다른 비행기를 확보해 주거나 승객들의 추가비용, 때론 호텔 숙박비를 제공하기도 합니다. <br>이때 항공사에서 부담하는 금액은 승객이 앞으로 이용하게 될 비행기 스케줄과 거리에 따라 달라지는데 이는 보통 티켓 요금에 못 미치는 금액입니다.<br>그러므로 미리 나가서 체크인을 하고 좌석을 배정받는 것이 좋습니다.</p>
						</div>

						<div class="section">
							<h4>항공권을 잃어버린 경우</h4>
							<p class="ml15">여행 중 항공권을 잃어버린 경우 티켓을 구입한 항공사나 항공사 대리점을 찾아가 항공권번호, 발권 연월일, 구간 등을 말하면 다시 재발급 받을 수 있습니다.<br>그러나 시간이 소요되므로 여유의 돈이 있다면 다시 항공권을 구입 후 귀국하여 새로 구입한 항공권(승객용)과 신분증을 함께 가지고 해당 항공사 본사로 찾아가면 현금으로 환불 받을 수 있습니다. 만약 여유가 없다면 PTA선불통지를 이용하면 됩니다.<br>이 방법은 한국에 아는 분께 부탁한 다음 해외 해당 항공사 지점에 가서 찾기만 하면 됩니다. 만일을 위해서 항공권번호, 발권 연월일, 구간, 여행사나 항공사의 전화번호는 꼭 메모해 두는 것이 좋은 방법입니다.</p>
						</div>

						<div class="section">
							<h4>항공화물을 잃어버린 경우</h4>
							<p class="ml15">먼저 ''Baggage Claim''이라는 수하물 분실 신고소에 가서 신고를 합니다. 이때 수하물의 꼬리표 제출과 화물의 특징을 말해야 합니다.<br>해외여행 보험을 가입한 사람은 분실증명서를 공항이나 항공사에서 발급받아 찾지 못할 경우 보상 문제에 대비해야 합니다.</p>
						</div>
								
								
							</div>
	</div>
	</div>
	<%@ include file="../include/footer.jsp"%>