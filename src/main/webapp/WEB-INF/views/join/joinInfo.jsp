<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/joinInfo.css?Aaaaaaaa" rel="stylesheet"  type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/cusTerm.css" rel="stylesheet" type="text/css">
<div id="container">
<div id="customer_container">
	
	<h3>01.회원가입 안내</h3>	
		<p><img src="${pageContext.request.contextPath }/resources/images/kcc_lg_04_01.jpg" class="img-responsive" alt=""></p>
			<ol class="sr-only">
				<li>01.회원가입 안내(현재단계)</li>
				<li>02.실명확인</li>
				<li>03.약관동의</li>
				<li>04.정보입력</li>
				<li>05.가입완료</li>		
			</ol>
				<div class="text-caption">
				<div class="h3">한국공항공사 홈페이지의 회원이 되시면,</div>
				<p><strong>국내선 및 국제선 항공권 예약, 국내외 여행상품 구매 등 다양한 혜택을 누리실 수 있습니다.</strong></p>
				</div>
				<div class="section">
					<div class="row cell5 text-center">
						<div class="col-xs-6 col-sm-4 col-md-3">
							<img src="${pageContext.request.contextPath }/resources/images/kcc_lg_cont01.jpg" alt="국내선 및 국제선 실시간 항공권 예약" class="m_auto" style="max-width:173px;">
							</div>
							<div class="col-xs-6 col-sm-4 col-md-3">
								<img src="${pageContext.request.contextPath }/resources/images/kcc_lg_cont02.jpg" alt="집에서 여행지까지 door to door서비스" class="m_auto" style="max-width:173px;">
							</div>
							<div class="col-xs-6 col-sm-4 col-md-3">
								<img src="${pageContext.request.contextPath }/resources/images/kcc_lg_cont03.jpg" alt="국내외 여행상품 검색" class="m_auto" style="max-width:173px;">
							</div>
							<div class="col-xs-6 col-sm-6 col-md-3">
								<img src="${pageContext.request.contextPath }/resources/images/kcc_lg_cont04.jpg" alt="국내 유수 관광지 정보 습득" class="m_auto" style="max-width:173px;">
							</div>
							<div class="col-xs-6 col-sm-6 col-md-3">
								<img src="${pageContext.request.contextPath }/resources/images/kcc_lg_cont05.jpg" alt="다양한 이벤트와 혜택 제공" class="m_auto" style="max-width:173px;">
							</div>
						</div>
				</div>
					<div class="section">
						<div class="text-center">
							<a class=" btn_prev large4" href="${pageContext.request.contextPath }" role="button">이전 단계</a>
							<a class=" btn_next large4" href="${pageContext.request.contextPath }/join/authentication"  id="btn_next" role="button">다음 단계</a>
						</div>
					</div>	

					

					</div>
					</div>
<%@ include file="../include/footer.jsp"%>