<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaaaa" rel="stylesheet"  type="text/css">
     <link href="${pageContext.request.contextPath }/resources/css/boardInfo.css?aaaaa" rel="stylesheet"  type="text/css">
<div id="container">
<div id="customer_container">
	<!--  탭메뉴 -->
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/security" >기내반입금지물품</a></li>
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/boardInfo/lithium" >리튬배터리 휴대기준</a></li>
		<li role="presentation" ><a href="${pageContext.request.contextPath }/boardInfo/cultural" >문화재 반출입 제한</a></li>
	</ul>

	
						
	<!-- 컨텐츠 내용 -->
<div id="contentRemark">
	<div class="section">
    <h4>여분 리튬배터리 휴대허용 기준</h4>
    <div class="table-responsive">
        <table class="table table3_1 text-center mt20" summary="리튬배터리 용량 규격,휴대하는 짐,부치는 짐 등의 정보를 제공하고 있습니다">
            <caption class="sr-only">여분 리튬배터리 휴대허용 기준</caption>
            <colgroup>
                <col width="20%">
                <col width="*">
                <col width="20%">
                <col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col" colspan="2" class="bor_left_none">리튬배터리 용량 규격</th>
                    <th scope="col">휴대하는 짐</th>
                    <th scope="col">부치는 짐</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="3" class="bor_left_none"><img src="${pageContext.request.contextPath }/resources/images/CONTENTS_201608041419467753288821.jpg" alt=""></td>
                    <td class="text-left">여분 배터리(100Wh 이하)</td>
                    <td>허용</td>
                    <td class="bg_pink">금지</td>
                </tr>
                <tr>
                    <td class="text-left">여분 배터리(100Wh초과～160Wh 이하)
                        <br> * 1인당 2개 이내</td>
                    <td>허용</td>
                    <td class="bg_pink">금지</td>
                </tr>
                <tr>
                    <td class="text-left">여분 배터리(160Wh 초과)</td>
                    <td class="bg_pink">금지</td>
                    <td class="bg_pink">금지</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p>* 전자기기에 장착된 리튬배터리는 160Wh 이하일 경우만 운반가능(휴대·부치는짐)</p>
</div>
<div class="section">
    <h4>리튬배터리 용량 등 성능 표기 위치(예시)</h4>
    <div class="table-responsive">
        <table class="table table4_1 text-center mt20" summary="휴대폰 배터리(10Wh), 여분 배터리(36Wh),카베라 배터리(9.6Wh) 등의 정보를 제공하고 있습니다">
            <caption class="sr-only">리튬배터리 용량 등 성능 표기 위치(예시)</caption>
            <colgroup>
                <col width="35%">
                <col width="*">
                <col width="35%">
            </colgroup>
            <tbody>
                <tr>
                    <td><img src="${pageContext.request.contextPath }/resources/images/CONTENTS_201608041419470304076858.jpg" alt="휴대폰 배터리(10Wh) 사진"></td>
                    <td><img src="${pageContext.request.contextPath }/resources/images/CONTENTS_201608041419471709511392.jpg " alt="여분 배터리(36Wh)"></td>
                    <td><img src="${pageContext.request.contextPath }/resources/images/CONTENTS_201608041419478111914355.jpg " alt="카베라 배터리(9.6Wh)"></td>
                </tr>
                <tr>
                    <th scope="col">휴대폰 배터리(10Wh)</th>
                    <th scope="col">여분 배터리(36Wh)</th>
                    <th scope="col">카메라 배터리(9.6Wh)</th>
                </tr>
            </tbody>
        </table>
    </div>
    <p>* 휴대폰, 노트북 등에 사용되는 리튬배터리는 일반적으로 10Wh∼80Wh 정도 전력량을 가지고 있어 160Wh를 초과하지 않음(160Wh 초과 사례 : 전기자전거용, 대용량 조명배터리 등)</p>
</div>
<div class="section">
    <h4>배터리 용량(Wh) 확인 및 계산 방법</h4>
    <div class="table-responsive">
        <table class="table table3_1 text-center mt20" summary="분류,표기내용,계산방법,배터리용량 등의 정보를 제공하고 있습니다.">
            <caption class="sr-only">배터리 용량(Wh) 확인 및 계산 방법</caption>
            <colgroup>
                <col width="20%">
                <col width="*">
                <col width="25%">
                <col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col" class="bor_left_none">분류</th>
                    <th scope="col">표기내용</th>
                    <th scope="col">계산방법</th>
                    <th scope="col">배터리용량</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="2" class="bor_left_none">전력량(Wh)이
                        <br>표기 된 경우</td>
                    <td>10000mAh / 3.6V / 36Wh</td>
                    <td>-</td>
                    <td>36Wh</td>
                </tr>
                <tr>
                    <td>10Ah / 3.6V / 36Wh</td>
                    <td>-</td>
                    <td>36Wh</td>
                </tr>
                <tr>
                    <td class="bor_left_none">전력량(Wh)이 </td>
                    <td>15000mAh / 3.6V</td>
                    <td>(15000/1000)X3.6</td>
                    <td>54Wh</td>
                </tr>
                <tr>
                    <td class="bor_left_none">미표기된 경우</td>
                    <td>15Ah / 3.6V</td>
                    <td>15X3.6</td>
                    <td>54Wh</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p>* 배터리 전력량(Wh) 계산법 : 전압(V) X 전류량(Ah)
        <br>** 1000mA=1A</p>
</div>
								
								
							</div>
	
			
</div>
</div>
<%@ include file="../include/footer.jsp"%>