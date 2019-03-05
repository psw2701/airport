<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaaaaaaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation"><a href="${pageContext.request.contextPath }/airportInfo/pregnantchildren" >임산부 및 유아, 어린이 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/trafficAbbreviation" >교통약자 동반</a></li>
		<li role="presentation"  class="on"><a href="${pageContext.request.contextPath }/airportInfo/pets" >애완동물 동반</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/airportInfo/business" >기업인우대</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
	<div id="contentRemark">
								
								
								    
								    
								    
									<div class="section">
							<h4>탑승</h4>
  <p class="ml15 txt_dg"><strong>* 청사내 공공장소에서는 애완동물에 대한 안전조치를 해 주시고, 타인에게 불편함이 없도록 주의해 주시기 바랍니다.</strong></p>
							<p class="ml15 txt_dg">일반적으로 항공기를 통해 운송할 수 있는 애완동물은 개, 고양이, 애완용 새에 한하며, 이외의 모든 종류의 동물 및 곤충류는 항공기를 통한 운송이 불가하여 화물대리점(국제택배서비스)을 통하여 문의하셔야 합니다.<br>보다 자세한 사항은 아래의 해당 항공사 사이트에서 확인하시기 바랍니다.</p>

							<div class="ml15">
								<table class="table table3 text-center mt20" summary="항공사별 홈페이지로 바로갈수있는 정보를 제공하고 있습니다.">
									<caption class="sr-only">항공사 홈페이지</caption>
									<colgroup>
										<col width="50%">
										<col width="50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">항공사</th>
											<th scope="col">홈페이지</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>대한항공</td>
											<td><a href="https://kr.koreanair.com/content/koreanair/korea/ko/traveling/services.html#pets" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>아시아나항공</td>
											<td><a href="http://flyasiana.com/CW/ko/common/pageContent.do?pageId=PC_0406" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>진에어</td>
											<td><a href="http://www.jinair.com/HOM/Service/HelpPassenger.aspx#MAP04" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>에어부산</td>
											<!--td><a href="https://rsvweb.airbusan.com/content/common/service/customer/animal" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td-->
                                            <td><a href="https://www.airbusan.com/content/common/service/customer/animal" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>이스타항공</td>
											<td><a href="https://www.eastarjet.com/newstar/PGWIM00004" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>제주항공</td>
											<td><a href="https://www.jejuair.net/jejuair/serviceinfo/airport/help.jsp#lang_subject50" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
										<tr>
											<td>티웨이항공</td>
											<td><a href="https://www.twayair.com/service/serviceInfo.do?menuSeq=232" target="_blank" title="새 창으로 이동" class="btn url">자세히보기</a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="txt_org ml15 small">* 항공기 내 운송이 가능하다고 하더라도 해당 국가에서 허가가 가능한지 여부를 꼭 확인하시기 바랍니다.</p>
						</div>
								
								
							</div>
	
	
	</div>
	</div>
		<%@ include file="../include/footer.jsp"%>