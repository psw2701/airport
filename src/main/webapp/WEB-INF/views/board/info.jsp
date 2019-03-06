<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">

	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath}/board/info" >이용안내 페이지</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath}/board/register" >등록 페이지</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath}/board/myBoard" >나의 고객의 소리</a></li>
	</ul>

	<!--  탭메뉴 -->
						
	<!-- 컨텐츠 내용 -->
	<form id="form" name="form" action="" method="post"  onsubmit="return false">
		<input type="hidden" id="cid" name="cid" value="" />
			<div id="contentRemark">
				<div class="h4 mb10">고객의 소리(VOC) 안내</div>
			<p class="small-hb txt_dg3 ls-05 mb0">
				고객의 소리는 고객님이 공항을 이용하시면서 겪으신 불편이나 궁금한 사항을 더욱 빠르게 해결하고,<br>
				개선의견은 적극적으로 반영하는 고객지향적인 공항운영 서비스를 제공하고자 마련되었습니다.<br>
				고객의 소리는 실명 등록을 원칙으로 하며, 홈페이지 회원가입 및 로그인이 필요합니다.<br>
				고객의 소리 등록 후 2일 이내 회신을 드리겠으며, 접수 진행사항을 SMS, E-mail을 통해 알려드리겠습니다.(토요일, 공휴일 제외)<br>
				타인비방, 욕설, 장난, 광고 등의 내용은 임의로 삭제될 수 있으며, 비공개 요청 시에는 타인이 내용을 확인할 수 없습니다.
			</p>

			<div class="h4 mb10">한국공항공사 고객만족센터(1661-2626)</div>
				<p class="small-hb txt_dg3 ls-05 mb0">
					한국공항공사 고객만족센터는 전국공항(인천공항 제외)과 관련하여 상담 및 안내를 진행하고 있습니다. <br>
					전화상담은 24시간 365일 운영되며, 1661-2626 연결 후 ARS에 따라 김포공항 1번, 제주공항 2번, 김해공항 3번, 기타공항 4번을 선택해 주십시오.<br>
					채팅상담은 평일 9:00~18:00 상담이 가능합니다.(상담상황에 따라 연결이 지연될 수 있습니다) <br><br>
					항공권 예약 및 발권, 취소 등 항공권 관련 사항은 각 항공사로 문의하여 주시고,<br>
					인천공항 및 출입국관리소, 세관, 경찰대 관련 사항은 각 기관으로 문의하여 주십시오
				</p>

			<div class="h4 mt40 mb10">VOC 처리 절차</div>
				<div class="section mt30 mb20 text-center">
					<img src="${pageContext.request.contextPath}/resources/images/kcc_vc_05_01_w.png" alt="VOC 처리 절차 안내" class="img-responsive" style="max-width:870px; margin:0 auto;" />
						<div class="sr-only">
							고객 (문의, 건의, 불만, 신고) VOC<br>
							채널 (콜센터 및 부서전화, 서면, SMS, 방문)<br>
							VOC 시스템 (접수, 담당자 지정, 처리, 서비스 개선) 후<br>
							SMS, E-MAIL (진행상황 알림 및 회신) / VOC 처리 만족도 조사를 고객님께 합니다.
						</div>
				</div>

			<div class="text-center">
				<a href="#" id="loginBtn" data-toggle="modal" data-target="#loginPopModal" role="button" class="btn list list3">로그인</a>
				<a href="${pageContext.request.contextPath}/board/register" class="btn list list2">고객의 소리 등록하기</a>
				<a href="${pageContext.request.contextPath}/board/list" class="btn list">결과확인</a>
			</div>
		</div>				
	</form>
<!-- 컨텐츠 내용 -->				
</div>

</div>
		



<%@ include file="../include/footer.jsp"%>

