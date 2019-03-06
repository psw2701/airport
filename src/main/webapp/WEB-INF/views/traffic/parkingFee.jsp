<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaa" rel="stylesheet"  type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/parkingFee.css?Aaaaaaa" rel="stylesheet"  type="text/css">

<div id="container">
	<div id="customer_container">
			
		<ul class="nav nav-pills  nav-justified" role="tablist">
			<li role="presentation"><a href="${pageContext.request.contextPath }/traffic/park">주차장</a></li>
			<li role="presentation"class="on"><a href="${pageContext.request.contextPath }/traffic/parkingFee">주차요금</a></li>
		</ul>
		
		<div id="contentRemark">
		  <div class="section">
			<h4>예상 주차요금 조회</h4>

				<div id="customer_container2">

				<hr class="thin2">
				<div class="section row">
					<div class="col-md-10">
						<div class="row mb10">
							<div class="col-sm-4">
								
								<table class="park_table">
									<caption class="sr-only">자동차 종류 선택의 정보가 있습니다.</caption>
										<colgroup>
											<col width="72px"><col>
										</colgroup>
									<tbody>
										<tr>
											<th scope="col">선택</th>
											<td>
											<label class="radio-inline" data-toggle="tooltip" data-placement="bottom" title="승용차 : 전차량 버스(승합차) : 15인승이하 화물차 : 최대적재량1톤 이하">
												<input type="radio" name="parkingType" id="parkingType1" value="S" checked="checked">소형
											</label>
											
											<label class="radio-inline" data-toggle="tooltip" data-placement="bottom" title="승용차 : - 버스(승합차) : 16인승이상 화물차 : 최대적재량1톤 초과">
												<input type="radio" name="parkingType" id="parkingType2" value="D">대형
											</label>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="row mb10">
							<div class="col-sm-4">
								<div class="input-group">
									<label class="input-group-addon" for="findAirline">입차일시</label>
									<input type="text" class="form-control datetimepicker ml12" name="stDateTime" id="stParkingDate" placeholder="입차일시를 선택해주세요.">
								</div>
							</div>
						<div class="col-sm-4">
						
							<div class="input-group">
								<label class="input-group-addon" for="findAirline">출차일시</label>
								<input type="text" class="form-control datetimepicker ml12" name="edDateTime" id="edParkingDate" placeholder="출차일시를 선택해주세요.">
							</div>
						</div>
						<div class="col-sm-4">
							<div class="input-group">
								<label class="input-group-addon" for="parkDcSelect">할인</label>
									<select class="form-control" id="parkDcSelect" name="parkDcSelect" title="할인">
										<option value="">일반</option>
										<option value="131">다자녀(50%)</option>
										<option value="132">국가유공자(50%)</option>
										<option value="133">장애(50%)</option>
										<option value="134">경차(50%)</option>
										<option value="135">저공해 1,2종(50%)</option>
										<option value="203">저공해 3종(20%)</option>
									</select>
							</div>
						</div>
						</div>
					</div>
					
					<div class="col-md-2">
					<button class="btn btn-search" onclick="javascript:jf_parkingPrice();"><i class="fa fa-search"></i> 요금조회</button>
					</div>
				</div>
				
				<hr class="thin2">
				
				<div class="section text-center">
					<div class="txt_dg large2">
						<strong>귀하의 예상 주차요금은 <span class="price_info" name="parkPrice" id="parkPrice">0</span>원 입니다.</strong>
					</div>

			</div>&nbsp;</div>

			<h4>주차요금 체계<span style="color: red; font-size: 15px;">&nbsp;&nbsp;※ 2018년 12월 1일부터 적용되는 요금입니다.</span></h4>

				<div class="table-responsive">
					<table class="table table2 b_b" summary="소형, 대형별 주차요금의 정보가 있습니다.">
						<caption class="sr-only">주차요금 체계</caption>
						<colgroup>
							<col width="*">
							<col width="*">
							<col width="*">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">이용시간</th>
								<th scope="col">주차요금</th>
								<th scope="col">비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="bg_b2 text-center bl0 b_b" rowspan="4" scope="row">소형<br>
								(15인승 이하, 1톤 이하)</th>
								<td>기본요금(30분 미만)</td>
								<td>800원</td>
								<td rowspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>추가요금 (매 15분당)</td>
								<td>400원</td>
							</tr>
							<tr>
								<td>평일(월~목) 1 일 (8시간 초과 24시간까지)</td>
								<td>13,000원</td>
								<td>&nbsp;</td>
							</tr>
							<tr class="b_b">
								<td>주말(금~일) 1 일 (9시간 30분 초과 24시간까지)</td>
								<td>15,000원</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th class="bg_b2 text-center bl0 b_b" rowspan="3" scope="row">대형<br>
								(15인승 초과, 1톤 초과)</th>
								<td>기본요금(30분 미만)</td>
								<td>1,100원</td>
								<td rowspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>추가요금 (매 10분당)</td>
								<td>400원</td>
							</tr>
							<tr class="b_b">
								<td>1 일 (6시간 초과 24시간 까지)</td>
								<td>14,000원</td>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>

				<p class="small-hb">※ 상기요금은 입차시간 기준이며 24시간마다 기준변경 반복적용</p>

				<div class="section">
					<h4>주차요금 할인 안내</h4>
	
					<h5>주차요금 할인 안내</h5>
	
					<ul class="ul_list2 mb30">
						<li><strong>할인율 : 50%(저공해 3종 20%)</strong></li>
						<li>두 개 이상의 할인 사유에 해당하는 경우 이용자에게 유리한 1개의할인 사유만 적용됩니다.</li>
					</ul>
	
					<h5>할인대상 및 조건</h5>

				<div class="table-responsive">
					<table class="table table2 b_b" summary="주차요금 할인대상, 대상별 할인조건, 할인율의 정보를 알려드립니다.">
						<caption class="sr-only">할인대상 및 조건</caption>
						<colgroup>
							<col width="40%">
							<col width="40%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">할인대상</th>
								<th scope="col">대상별 할인조건</th>
								<th scope="col">할인율</th>
							</tr>
						</thead>
						<tbody>
							<tr class="b_b">
								<td class="b_l0">① 장애인<br>
								② 상이등급판정을 받은 국가유공자<br>
								③ 장해등급 판정을 받은 5·18민주유공자<br>
								④ 장애등급 판정을 받은 고엽제 후유의증 환자</td>
								<td>다음의 모든 조건을 반드시 충족해야 함<br>
								1. 대상자 본인이 차량에 탑승<br>
								2. 차량에 관련 식별표지 부착<br>
								3. 국가에서 발급한 증명서 또는 확인서류 제시<br>
								(예) 복지카드, 유공자증, 한국도로공사 통행료 감면카드</td>
								<td class="bg_b2 text-center" rowspan="5">50%<br>
								(저공해 3종 20%)</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0">⑤장애인 협회 차량 또는 장애인 단체 차량</td>
								<td>식별표지 부착</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0">⑥ 다자녀 가정</td>
								<td>다음의 모든 조건을 반드시 충족해야 함<br>
								1. 지방자치단체(또는 지역별 제휴은행)에서 발급한 다자녀우대카드 현장제시(기타 증빙서류 할인 불가)<br>
								2. 다자녀우대카드 소유주 신분증 제시</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0">⑦ 경차</td>
								<td>「자동차관리법 시행규칙」 제2조 별표1에 따른 경형자동차</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0">⑧ 저공해 자동차</td>
								<td>수도권 대기환경개선에 관한 특별법 제2조6호 및 같은 법 시행령 제3조에 따른 저공해 자동차로서 한국환경공단(친환경자동차 종합정보지원시스템)으로부터 저공해자동차임이 확인된 차량<br>
								1,2종 - 50% / 3종 - 20%</td>
							</tr>
						</tbody>
					</table>
				</div>

					<p class="small-hb mb40"><strong>&nbsp;*&nbsp;모든 할인은 반드시 위 표의 조건을 갖춘 차량에 대해서만 가능합니다. 위 조건 이외의 방법은 어떠한 경우에도 정당한 증빙으로 인정되지 않습니다.</strong><br>
					<br>
					&nbsp;** 다자녀가정카드 발급기준 및 저공해차량 표지 발급기준은 <strong>지자체별로 상이</strong>하며, 다자녀우대카드상 <strong>유효기간 만료 시 할인적용이 불가</strong>하오니 이 점 유의하시기 바랍니다.</p>

					<h5>보행 상 장애가 있는 장애인 차량 동승 조건 완화</h5>
					
					<ul class="ul_list2 mb40">
						<li><strong>다음의 조건을 모두 충족하는 경우에는 장애인이 동승하지 않아도 할인이 가능합니다.</strong>
					
						<ul>
							<li>가. 노란색 장애인 전용구역 주차가능 장애인 자동차표지 부착</li>
							<li>나. 장애인 본인의 국가 발급 증명서 제시<br>
							예) 복지카드, 한국도로공사 통행료 감면카드</li>
							<li>다. 장애인 본인의 입출차 당일 항공권 제시</li>
						</ul>
						</li>
					</ul>
					
					<h5>사후할인의 인정</h5>

					<ul class="ul_list2">
						<li><strong>증빙서류 미비</strong>로 출차 시 할인을 받지 못 한 경우<strong> 할인 신청서를 정산원으로부터 교부받아 </strong>각각의 사유에 해당하는 관련서류 일체를 출차 후 <strong>7일 이내</strong>에 대구공항 주차이용안내소(A입구 옆 또는 팩스 등)로 제출하시면 출차기록과 대조하여 할인금액을 환불하여 드립니다. (대구공항 홈페이지 &gt; 고객센터 &gt; 공지사항에서도&nbsp;사후할인 신청서를 다운받으실 수 있습니다.)</li>
					</ul>

				<div class="table-responsive">
					<table class="table table6 b_t0 text-center b_b" summary="주차요금 할인대상, 대상별 할인조건, 할인율의 정보를 알려드립니다.">
						<caption class="sr-only">할인대상 및 조건</caption>
						<colgroup>
							<col width="20%">
							<col width="40%">
							<col width="40%">
						</colgroup>
						<tbody class="b_t2">
							<tr class="b_b">
								<td class="b_l0 bg_b2 ">장애인, 국가유공자</td>
								<td class="text-left">1. 복지카드, 유공자증, 고속도로통행료감면카드 중 1개의 사본 1부<br>
								2. 장애인표지 사진 1부<br>
								3. 할인 신청서 1부(개인정보수집 및 이용동의서 포함)</td>
								<td rowspan="5">관련 서류 사본 제출 시 주민등록번호 뒤 7자리가 보이지 않도록 복사하여 제출하여 주시기 바랍니다. 할인종별 각호 서류를 모두 제출해야 합니다. 주차장이용확인을 위해 주차권 및 영수증 제출을 요구 받을 수 있습니다.</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0 bg_b2 ">경차</td>
								<td class="text-left">1. 차량등록증 사본 1부<br>
								2. 할인 신청서 1부(개인정보수집 및 이용동의서 포함)</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0 bg_b2 ">저공해 차량</td>
								<td class="text-left">1. 차량등록증 사본 1부<br>
								2. 저공해차량 표지 또는 저공해차량임이 표시된 자동차등록증 사본 1부<br>
								3. 할인 신청서 1부(개인정보수집 및 이용동의서 포함)</td>
							</tr>
							<tr class="b_b">
								<td class="b_l0 bg_b2 ">장애인 단체차량</td>
								<td class="text-left">1. 차량등록증 사본 1부<br>
								2. 장애인표지 사진 1부<br>
								3. 할인 신청서 1부(개인정보수집 및 이용동의서 포함)</td>
							</tr>
							<tr>
								<td class="b_l0 bg_b2 ">다자녀 가구<br>
								*특별시, 광역시, 도 단위 지방자치단체의 다자녀 인정기준에 따름</td>
								<td class="text-left">1. 차량등록증 사본 1부<br>
								2. 차량 출차 영수증 1부<br>
								3. 출차 당일 항공권 사본 1부<br>
								4. 주민등록등본, 가족관계증명서 등 본인, 배우자, 자녀 수, 거주지 표기 서류<br>
								&nbsp;&nbsp; (위 서류는 사후할인시에만 인정됨)<br>
								5. 할인 신청서 1부(개인정보수집 및 이용동의서 포함)</td>
							</tr>
						</tbody>
					</table>
		</div>
</div>

<div class="section">
<h4>주차요금 하이패스(Hi-pass)결제</h4>

<ul class="ul_list2">
	<li>2017. 9. 1일부 서비스 개시(주차장 A 출구 하이패스 차로 이용)&nbsp;</li>
</ul>
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ※ 단, 5만원 이상 결제차량 및 할인차량 제외<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - </strong>5만원 이상 결제 : 유인정산소 또는 무인정산기 이용<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 할인차량 : 유인정산소 이용
<h4><br>
기타 이용안내</h4>

<ul class="ul_list2">
	<li>공공기관의 주차료 감면의 투명성 확보를 위해 관련증빙자료 제시 요구 및 증빙확보(증빙서 스캔) 절차를 따르고 있으며, 고객님의 개인정보는 「공공기관의 개인정보보호에 관한 법률」에 따라 철저히 보호됩니다.</li>
	<li>다자녀우대가정은 지자체가 직접 발급하는 다자녀 카드나 지자체가 카드사와 제휴하여 발급하는 다양한 명칭(다복카드, 아이사랑카드 등)의 다자녀우대카드를 제시하시면 할인을 받으실 수 있으며, 결재수단과는 무관합니다.</li>
</ul>
</div>
								
								
							</div>
		
	</div>
</div>
</div>
<%@ include file="../include/footer.jsp"%>	