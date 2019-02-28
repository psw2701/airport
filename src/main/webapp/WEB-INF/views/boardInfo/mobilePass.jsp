<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aa" rel="stylesheet"  type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/mobilePass.css?Aaaaa" rel="stylesheet"  type="text/css">


<div id="customer_container">
		
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/homePass">홈탑승권 서비스</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath }/boardInfo/mobilePass">모바일탑승권 서비스</a></li>
	</ul>
   
                      
	<div class="air-app-service">
			지루한 절차는 <strong>No!</strong> 이제 모바일로 한번에 <strong>OK!!</strong><br>
			한국공항공사에서는 모바일 탑승서비스로 수속절차를 대폭 간소화 하였습니다.
	</div>

<div class="air-app-wrap">
							<div class="air-app-header">
								<div class="pull-left"><strong><em>01</em> <span>항공사별 모바일 앱설치</span></strong></div>
								<div class="pull-right hidden-xs">아래 아이콘 클릭 시 해당사이트로 이동합니다.</div>
							</div>
							<div class="clear"></div>

							<div class="air-app-body">
								<div class="row">
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app01.png" alt="대한항공">
											<strong>대한항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=Kal.FlightInfo" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/daehanhang-gong/id369188136?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app02.png" alt="아시아나항공">
											<strong>아시아나항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.ssm.asiana" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/asianahang-gong/id373932237?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app03.png" alt="이스타항공">
											<strong>이스타항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.eastarjet.eastar" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/eastarjet/id570612965?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app04.png" alt="에어부산항공">
											<strong>에어부산항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.airbusan.gcm" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/eeobusan/id603844013?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app05.png" alt="제주항공">
											<strong>제주항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.parksmt.jejuair.android16" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/jejuhang-gong/id373053637?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app06.png" alt="티웨이항공">
											<strong>티웨이항공</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.twayair.m.app" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/twayair/id564901451?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
									<div class="rloop col-xs-4 col-sm-3 col-md-2">
										<div class="img-area">
											<img src="${pageContext.request.contextPath }/resources/images/air-app07.png" alt="진에어">
											<strong>진에어</strong>
										</div>
										<div class="btn-area">
											<a href="https://play.google.com/store/apps/details?id=com.jinair.android" target="_blank" title="new window" class="ico-gplay">
												Google play
											</a>
											<a href="https://itunes.apple.com/kr/app/jin-eeo/id435624636?mt=8" target="_blank" title="new window" class="ico-appstore">
												App Store
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>


	<div class="section">
		<img alt="홈탑승권" src="${pageContext.request.contextPath }/resources/images/air-app-img.png" id="mobilePass">			
	</div>

</div>


<style>
 #customer_container{
	width: 1130px;
	margin: 50px auto;
	text-align: center;
}
#mobilePass{
	margin: 0px auto;
	text-align: center;
}
</style>


<script type="text/javascript">

</script>

<%@ include file="../include/footer.jsp"%>