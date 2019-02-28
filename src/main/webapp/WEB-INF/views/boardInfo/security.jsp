<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaa" rel="stylesheet"  type="text/css">
     <link href="${pageContext.request.contextPath }/resources/css/boardInfo.css?Aa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/security" >기내반입금지물품</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/lithium" >리튬배터리 휴대기준</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/cultural" >문화재 반출입 제한</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
<div id="contentRemark">
	<div class="section">
	<h4>기내반입제한 물품의 정의</h4>
	
	<p class="ml15">기내반입금지물품(Prohibited Items)이라 함은 항공기 안전운항 및 여객의 생명과 재산을 보호하기 위하여 비행기에 탑승하는 모든 승객이 휴대하는 물품 중 휴대 또는 탑재가 금지되는 물품을 말하며, 범죄혐의가 있을 경우에는 경찰에 인계되어 처벌될 수 있습니다.<br>
	세부적인 항목은 다음 표를 참조하여 주시기 바랍니다.</p>
	</div>

	<div class="section">
	<h4>기내반입 제한물품 예시</h4>
	<h5 class="ml15">위해물품 예시 Ⅰ</h5>
	<p class="ml30">가위, 면도날, 얼음송곳, 드라이버 등 무기로 사용 가능한 물품, 모형무기 또는 폭발물 포함(단 라이타는 1개만 소지 가능하나 위탁수하물로는 불가함)</p>
	
	<ul class="ul_list_img ml25">
		<li><img alt="라이터" src="${pageContext.request.contextPath }/resources/images/danger_img1.gif"></li>
		<li><img alt="가위" src="${pageContext.request.contextPath }/resources/images/danger_img2.gif"></li>
		<li><img alt="송곳" src="${pageContext.request.contextPath }/resources/images/danger_img3.gif"></li>
		<li><img alt="커터칼" src="${pageContext.request.contextPath }/resources/images/danger_img4.gif"></li>
		<li><img alt="면도날" src="${pageContext.request.contextPath }/resources/images/danger_img5.gif"></li>
	</ul>
	
	<h5 class="ml15">위해물품 예시 Ⅱ (폭발성·연소성이 높은 물품)</h5>
	<ul class="ul_list_img ml25">
		<li><img alt="신나" src="${pageContext.request.contextPath }/resources/images/danger_img6.gif"></li>
		<li><img alt="본드" src="${pageContext.request.contextPath }/resources/images/danger_img7.gif"></li>
		<li><img alt="스프레이" src="${pageContext.request.contextPath }/resources/images/danger_img8.gif"></li>
		<li><img alt="락카" src="${pageContext.request.contextPath }/resources/images/danger_img9.gif"></li>
		<li><img alt="석유" src="${pageContext.request.contextPath }/resources/images/danger_img10.gif"></li>
	</ul>
	
	<h5 class="ml15">위해물품 예시 Ⅲ (총포류·도검류 등 위험물품)</h5>
	<ul class="ul_list_img ml25">
		<li><img alt="권총" src="${pageContext.request.contextPath }/resources/images/danger_img11.gif"></li>
		<li><img alt="칼" src="${pageContext.request.contextPath }/resources/images/danger_img12.gif"></li>
		<li><img alt="도끼" src="${pageContext.request.contextPath }/resources/images/danger_img13.gif"></li>
		<li><img alt="활" src="${pageContext.request.contextPath }/resources/images/danger_img14.gif"></li>
		<li><img alt="장총" src="${pageContext.request.contextPath }/resources/images/danger_img15.gif"></li>
	</ul>
	
	<h5 class="ml15">국제선의 경우 추가 반입금지 사항</h5>
	<p class="ml30">용기 당 100㎖ 이하의 액체류는 반입 가능합니다. 100㎖를 초과하는 용기는 액체류가 소량만 담겨있는 경우라도 반입하실 수 없습니다.<br>
	승객은 용기당 100㎖이하 액체류를 1ℓ이하의 투명한 플라스틱제 지퍼락(Zipper Lock) 봉투(사이즈 약20㎝×약20㎝)에 지퍼가 완전히 잠길 수 있어야 반입이 가능하며, 승객 1인당 지퍼락 봉투 1개로 제한됩니다.</p>
	</div>

	<div class="section">
	<h4>기내반입 제한물품에 대한 법적 근거</h4>
	
	<h5 class="ml15">관련규정</h5>
	
	<div class="box03 ml30">
	<ul>
		<li><strong class="txt_dg">1. 항공보안법 제21조(무기 등 위해물품 휴대 금지)</strong>
	
		<ul>
			<li>① 누구든지 항공기에 무기[탄저균(炭疽菌), 천연두균 등의 생화학무기를 포함한다], 도검류(刀劍類), 폭발물, 독극물 또는 연소성이 높은 물건 등 국토교통부장관이 정하여 고시하는 위해물품을 가지고 들어가서는 아니 된다.</li>
		</ul>
		</li>
		<li><strong class="txt_dg">2. 제44조(항공기 위험물건 탑재죄) </strong>
		<ul>
			<li>제21조를 위반하여 휴대 또는 탑재가 금지된 물건을 항공기에 휴대 또는 탑재하거나 다른 사람으로 하여금 휴대 또는 탑재하게 한 사람은 2년 이상 5년 이하의 징역에 처한다.</li>
		</ul>
		</li>
		<li><strong class="txt_dg">3. 총포·도검·화약류등 단속법 제2조 (정의)</strong>
		<ul>
			<li>① 이 법에서 "총포"라 함은 권총·소총·기관총·포·엽총, 금속성 탄알이나 가스등을 쏠 수 있는 장약총포, 공기총(압축가스를 이용하는 것을 포함한다. 이하 같다) 및 총포신·기관부 등 그 부품(이하 "부품"이라 한다)으로서 대통령령이 정하는 것을 말한다. <span class="txt_org">&lt; 개정 1995.12.6, 2003.7.29 &gt;</span></li>
			<li>② 이 법에서 "도검"이라 함은 칼날의 길이가 15센티미터 이상 되는 칼·검·창·치도(치도)·비수등으로서 성질상 흉기로 쓰여지는 것과 칼날의 길이가 15센티미터 미만이라 할지라도 흉기로 사용될 위험성이 뚜렷이 있는 것중에서 대통령령이 정하는 것을 말한다.</li>
			<li>③ 이 법에서 "화약류"라 함은 다음 각호의 화약·폭약 및 화공품(화공품:화약 및 폭약을 써서 만든 공작물을 말한다. 이하 같다) 을 말한다.<br>
			<span class="txt_org">&lt; 개정 1989.12.30, 1995.12.6, 1999.3.31 &gt;</span>
			<ul class="mt20 ml15">
				<li><span class="txt_dg">1. 화약</span>
				<ul>
					<li>가. 흑색화약 또는 질산염을 주성분으로 하는 화약</li>
					<li>나. 무연화약 또는 질산에스테르를 주성분으로 하는 화약</li>
					<li>다. 그 밖에 "가"목 및 "나"목의 화약과 비슷한 추진적 폭발에 사용될 수 있는 것으로서 대통령령이 정하는 것</li>
				</ul>
				</li>
				<li><span class="txt_dg">2. 폭약</span>
				<ul>
					<li>가. 뇌홍·아지화연·로단염류·테트라센등의 기폭제</li>
					<li>나. 초안폭약·염소산칼리폭약·카리트 그 밖의 질산염·염소산염 또는 과염소산염을 주성분으로 하는 폭약</li>
					<li>다. 니트로글리세린·니트로글리콜 그 밖의 폭약으로 사용되는 질산에스테르</li>
					<li>라. 다이나마이트 그 밖의 질산에스테르를 주성분으로 하는 폭약</li>
					<li>마. 폭발에 쓰이는 트리니트로벤젠·트리니트로토루엔·피크린산·트리니트로클로로벤젠·테트릴·트리니트로아니졸·핵사니트로디페닐아민·트리메틸렌트리니트라민· 펜트리트 및 니트로기 3 이상이 들어 있는 그 밖의 니트로화합물과 이들을 주성분으로 하는 폭약</li>
					<li>바. 액체산소폭약 그 밖의 액체폭약</li>
					<li>사. 그밖의 "가"목 내지 "바"목의 폭약과 비슷한 파괴적 폭발에 사용될 수 있는 것으로서 대통령령이 정하는 것</li>
				</ul>
				</li>
				<li><span class="txt_dg">3. 화공품</span>
				<ul>
					<li>가. 공업용뇌관·전기뇌관·총용뇌관 및 신호뇌관</li>
					<li>나. 실탄(실탄:산탄을 포함한다. 이하 같다) 및 공포탄(공포탄)</li>
					<li>다. 신관 및 화관</li>
					<li>라. 도폭선·미진동파쇄기·도화선 및 전기도화선</li>
					<li>마. 신호염관·신호화전 및 신호용화공품</li>
					<li>바. 시동약(시동약)</li>
					<li>사. 꽃불 그 밖의 화약이나 폭약을 사용한 화공품</li>
					<li>아. 장난감용 꽃불등으로서 행정자치부령이 정하는 것</li>
					<li>자. 자동차 긴급신호용 불꽃신호기</li>
					<li>차. 자동차에어백용 가스발생기</li>
				</ul>
				</li>
			</ul>
			</li>
			<li>④ 이 법에서 "분사기"라 함은 사람의 활동을 일시적으로 곤란하게 하는 최루 또는 질식등의 작용제를 분사할 수 있는 기기로서 대통령령이 정하는 것을 말한다.<br>
			<span class="txt_org">&lt; 신설 1989.12.30 &gt;</span></li>
			<li>⑤ 이 법에서 "전자충격기"라 함은 사람의 활동을 일시적으로 곤란하게 하거나 인명에 위해를 가하는 전류를 방류할 수 있는 기기로서 대통령령이 정하는 것을 말한다.<br>
			<span class="txt_org">&lt;신설 1989.12.30 &gt;</span></li>
			<li>⑥ 이 법에서 "석궁"이라 함은 활과 총의 원리를 이용하여 화살등의 물체를 발사하여 인명에 위해를 줄 수 있는 것으로서 대통령 령이 정하는 것을 말한다.<br>
			<span class="txt_org">&lt; 신설 1995.12.6 &gt;</span></li>
		</ul>
		</li>
	</ul>
	</div>
	</div>

<div class="section">
<h4>위해물품 처리방법</h4>

<h5 class="ml15">관련규정</h5>

<div class="box03 ml30">
<ul>
	<li><strong class="txt_dg">가. 항공보안법 제15조(승객 등의 검색 등)</strong>

	<ul>
		<li>② 공항운영자는 항공기에 탑승하는 사람, 휴대물품 및 위탁수하물에 대한 보안검색을 하고, 항공운송사업자는 화물에 대한 보안 검색을 하여야 한다. 다만, 관할 국가경찰관서의 장은 범죄의 수사 및 공공의 위험예방을 위하여 필요한 경우 보안검색에 대하여 필요한 조치를 요구할 수 있고, 공항운영자나 항공운송사업자는 정당한 사유 없이 그 요구를 거절할 수 없다.</li>
		<li>⑤ 제2항에 따른 보안검색의 방법ㆍ절차ㆍ면제 등에 관하여 필요한 사항은 대통령령으로 정한다.</li>
	</ul>
	</li>
	<li><strong class="txt_dg">나. 항공보안법 시행령 제10조(승객 및 휴대물품의 보안검색방법 등) </strong>
	<ul>
		<li>④ 공항운영자는 기내에서 휴대가 금지되는 물품이 항공보안에 위해(危害)가 되지 아니하다고 인정되는 경우에는 위탁수하물로 탑재(搭載)를 하게 할 수 있다.</li>
	</ul>
	</li>
</ul>
</div>

<h5 class="mt40 ml15">처리유형</h5>

<p class="ml30">항공보안법&nbsp;시행령 제10조 제2항에 의거하여, 위해물품은 원칙적으로 기내 반입을 금지함.<br>
다만 동조 제4항에 의거하여, 위해정도가 적은 물품은 위탁수하물로 탑재하도록 처리가능함</p>
</div>
								
								
							</div>
	
			
</div>
</div>
<%@ include file="../include/footer.jsp"%>