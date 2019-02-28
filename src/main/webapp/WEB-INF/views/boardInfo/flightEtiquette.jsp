<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaa" rel="stylesheet"  type="text/css">
  <link href="${pageContext.request.contextPath }/resources/css/boardInfo.css?aaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
		
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/flightEtiquette">기내에티켓</a></li>
		<li role="presentation"><a href="${pageContext.request.contextPath }/boardInfo/notice">유의사항</a></li>
	</ul>
	
	<div id="contentRemark">
		<div class="section">
			<h4>좌석에서</h4>
			<p class="ml15">
				비행기내에서 간편한 옷차림을 하거나 슬리퍼를 신는 것은 괜찮으나 속옷 차림이나 양말을 벗는 것은 곤란합니다.<br>
				신발을 벗는 것도 가능하나 되도록 타인에게 보이는 것은 안 좋습니다. 야간비행 중에는 흔히 신발을 벗게 되므로 따뜻한 양말이나 덧신을 준비하는 것이 좋습니다.<br>
				비행기내에서 옷을 갈아입을 때에는 화장실을 이용합니다. 승무원을 부를 때는 호출버튼을 누르거나 통로를 지날 때 가볍게 손짓하거나 눈이 마주칠 때 살짝 부르는 것이 좋습니다. <br>
				좌석의 등받이를 뒤로 젖힐 때에는 지나치게 젖혀서는 안됩니다. 비행기 이착륙, 식사 때에는 젖혀놓은 등받이를 반드시 원위치로 해 놓습니다.<br>
				베개와 모포는 머리 위 선반에 자리하고 있어 취침 때 사용하며, 한꺼번에 베개나 모포를 두세 개 사용하는 것은 삼가는 것이 좋습니다. <br>
				비행기내 전지역은 금연구역입니다. <br>
			</p>
		</div>

		<div class="section">
			<h4>식사를 할 때</h4>
			<p class="ml15">
				식사 서비스가 시작되면 자리로 돌아가 좌석 등받이의 간이 테이블을 펴놓고 기다립니다. 식사가 끝나면 반드시 식사 테이블을 원래 위치로 올려놓아야 하며,<br>
				이때 테이블을 ‘쾅’하고 닫음으로써 옆 사람을 놀라게 하지 않습니다.<br>
				국제선의 경우 음료수, 알코올 음료, 식사가 무료이며, 각 나라의 시간 차이에 따라서 1일 5식 정도가 제공됩니다.<br>
				그러나 기내에서 술을 마시면 지상보다 기압이 높아 한 잔만 마셔도 술집에서 세 잔을 마신 것과 같아지므로 술은 적당이 마시는 것이 좋습니다.<br>
			</p>
		</div>

		<div class="section">
			<h4>화장실에서</h4>
			<p class="ml15">
				남녀 공용이므로 화장실에 들어가면 반드시 안에서 걸어 잠가야 하며, 사용 중(Occupied) 이라는 표시가 나타납니다.<br>
				잠그지 않을 경우 비어 있음(Vacant)이라는 표시가 되어 다른 승객이 문을 열 수 있게 됩니다.<br>
				사용 후에는 반드시 세척(Toilet Flush)이라 표시된 버튼을 누르고, 그래도 더러울 때는 화장지로 닦아줍니다.<br>
				안전벨트 착용 마크에 불이 들어와 있는 동안은 화장실 사용은 금지합니다. <br>이 마크에 불이 들어오면 되도록 빨리 나와 제자리로 돌아가서 좌석 벨트를 매어야 합니다.<br>
			</p>
		</div>
								
								
	</div>
</div>	
</div>
<%@ include file="../include/footer.jsp"%>