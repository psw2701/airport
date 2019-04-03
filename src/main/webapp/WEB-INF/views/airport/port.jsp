<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
    <link href="${pageContext.request.contextPath }/resources/css/cusInfo.css?Aaaaaaaaaaa" rel="stylesheet"  type="text/css">


<div id="customer_container">
		
	<ul class="nav nav-pills  nav-justified" role="tablist">
		<li role="presentation"><a href="${pageContext.request.contextPath }/airport/air">출발</a></li>
		<li role="presentation" class="on"><a href="${pageContext.request.contextPath }/airport/port">도착</a></li>
	</ul>

<!-- 컨텐츠 내용 -->

<div class="section">
	<strong class="txt_802224">아래 운항스케줄은 항공사 사정으로 변경될 수 있습니다.</strong>

</div>

<hr class="thin2">

<div class="section">
						<form id="frm" name="frm" action="" method="get">
							<div class="row">
								<div class="col-sm-10"style="left: 60px">
									<div class="row mb10">
										<div class="col-sm-5">
											<div class="input-group">
												<label class="input-group-addon" for="airPort">공항</label>
												<select class="form-control" id="airPort" name="airPort" title="공항을 선택하세요">
													<option value="GMP">서울/김포		</option>
													<option value="PUS" >부산/김해	</option>
													<option value="CJU">제주		</option>
													<option value="TAE" selected="selected">대구	</option>
													<option value="USN">울산		</option>
													<option value="CJJ">청주		</option>
													<option value="MWX">무안		</option>
													<option value="KWJ">광주		</option>
													<option value="RSU">여수		</option>
													<option value="KPO">포항		</option>
													<option value="YNY">양양		</option>
													<option value="HIN">사천	</option>
													<option value="KUV">군산		</option>
													<option value="WJU">횡성/원주		</option>
												</select>
											</div>
										</div>
										<div class="col-sm-5">
											<div class="input-group">
												<label class="input-group-addon" for="stHour">시간</label>
												<select style="width:68px" class="form-control" title="선택" name="stHour" id="stHour">
												
													
													<option value="00" selected="selected">00</option>
													
												
													
													<option value="01">01</option>
													
												
													
													<option value="02">02</option>
													
												
													
													<option value="03">03</option>
													
												
													
													<option value="04">04</option>
													
												
													
													<option value="05">05</option>
													
												
													
													<option value="06">06</option>
													
												
													
													<option value="07">07</option>
													
												
													
													<option value="08">08</option>
													
												
													
													<option value="09">09</option>
													
												
													
													<option value="10">10</option>
													
												
													
													<option value="11">11</option>
													
												
													
													<option value="12">12</option>
													
												
													
													<option value="13">13</option>
													
												
													
													<option value="14">14</option>
													
												
													
													<option value="15">15</option>
													
												
													
													<option value="16">16</option>
													
												
													
													<option value="17">17</option>
													
												
													
													<option value="18">18</option>
													
												
													
													<option value="19">19</option>
													
												
													
													<option value="20">20</option>
													
												
													
													<option value="21">21</option>
													
												
													
													<option value="22">22</option>
													
												
													
													<option value="23">23</option>
													
												
												</select>
												<select style="width:68px" class="form-control" title="선택" name="stMinute" id="stMinute">
												
													
													<option value="00" selected="selected">00</option>
													
												
													
													<option value="05">05</option>
													
												
													
													<option value="10">10</option>
													
												
													
													<option value="15">15</option>
													
												
													
													<option value="20">20</option>
													
												
													
													<option value="25">25</option>
													
												
													
													<option value="30">30</option>
													
												
													
													<option value="35">35</option>
													
												
													
													<option value="40">40</option>
													
												
													
													<option value="45">45</option>
													
												
													
													<option value="50">50</option>
													
												
													
													<option value="55">55</option>
													
												
												</select>
												<select style="width:68px" class="form-control" title="선택" name="edHour" id="edHour">
												
													
													<option value="00">00</option>
													
												
													
													<option value="01">01</option>
													
												
													
													<option value="02">02</option>
													
												
													
													<option value="03">03</option>
													
												
													
													<option value="04">04</option>
													
												
													
													<option value="05">05</option>
													
												
													
													<option value="06">06</option>
													
												
													
													<option value="07">07</option>
													
												
													
													<option value="08">08</option>
													
												
													
													<option value="09">09</option>
													
												
													
													<option value="10">10</option>
													
												
													
													<option value="11">11</option>
													
												
													
													<option value="12">12</option>
													
												
													
													<option value="13">13</option>
													
												
													
													<option value="14">14</option>
													
												
													
													<option value="15">15</option>
													
												
													
													<option value="16">16</option>
													
												
													
													<option value="17">17</option>
													
												
													
													<option value="18">18</option>
													
												
													
													<option value="19">19</option>
													
												
													
													<option value="20">20</option>
													
												
													
													<option value="21">21</option>
													
												
													
													<option value="22">22</option>
													
												
													
													<option value="23">23</option>
													
												
													
													<option value="24" selected="selected">24</option>
													
												
												</select>
												<select style="width:68px" class="form-control" title="선택" name="edMinute" id="edMinute">
												
													
													<option value="00" selected="selected">00</option>
													
												
													
													<option value="05">05</option>
													
												
													
													<option value="10">10</option>
													
												
													
													<option value="15">15</option>
													
												
													
													<option value="20">20</option>
													
												
													
													<option value="25">25</option>
													
												
													
													<option value="30">30</option>
													
												
													
													<option value="35">35</option>
													
												
													
													<option value="40">40</option>
													
												
													
													<option value="45">45</option>
													
												
													
													<option value="50">50</option>
													
												
													
													<option value="55">55</option>
													
												
												</select>
												
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<div class="input-group">
												<label class="input-group-addon" for="airType">구분</label>
												<select class="form-control" id="airType" name="airType">
													<option value=""selected="selected">전체</option>
													<option value="D">국내선</option>
													<option value="I" >국제선</option>
												</select>
											</div>
										</div>
										<div class="col-sm-5">
											<div class="input-group">
												<label class="input-group-addon" for="findAirline">항공사</label>
												<select class="form-control" id="airLine" name="airLine">
												
												<option value="네덜란드항공">네덜란드항공</option>
												
												<option value="대한항공">대한항공</option>
												
												<option value="델타항공" >델타항공</option>
												
												<option value="라오항공">라오항공</option>
												
												<option value="러시아항공">러시아항공</option>
												
												<option value="몽골항공">몽골항공</option>
												
												<option value="베트남항공">베트남항공</option>
												
												<option value="비엣젯항공">비엣젯항공</option>
												
												<option value="비즈니스에어">비즈니스에어</option>
												
												<option value="상해항공">상해항공</option>
												
												<option value="스카이앙코르항공">스카이앙코르항공</option>
												
												<option value="아메리칸항공">아메리칸항공</option>
												
												<option value="아시아나항공">아시아나항공</option>
												
												<option value="알이탈리아항공">알이탈리아항공</option>
												
												<option value="에어부산">에어부산</option>
												
												<option value="에어아시아엑스">에어아시아엑스</option>
												
												<option value="에어캐나다">에어캐나다</option>
												
												<option value="오로라항공">오로라항공</option>
												
												<option value="이스타항공">이스타항공</option>
												
												<option value="일본항공">일본항공</option>
												
												<option value="제주항공">제주항공</option>
												
												<option value="중국국제항공">중국국제항공</option>
												
												<option value="중국남방항공">중국남방항공</option>
												
												<option value="중국동방항공">중국동방항공</option>
												
												<option value="중국하이난항공">중국하이난항공</option>
												
												<option value="중화항공">중화항공</option>
												
												<option value="진에어">진에어</option>
												
												<option value="캐세이퍼시픽항공">캐세이퍼시픽항공</option>
												
												<option value="케세이드래곤항공">케세이드래곤항공</option>
												
												<option value="코리아익스프레스에어">코리아익스프레스에어</option>
												
												<option value="타이거에어">타이거에어 타이완</option>
												
												<option value="타이항공">타이항공</option>
												
												<option value="티웨이항공">티웨이항공</option>
												
												<option value="팬퍼시픽항공">팬퍼시픽항공</option>
												
												<option value="프랑스항공">프랑스항공</option>
												
												<option value="피치항공">피치항공</option>
												
												<option value="핀란드항공">핀란드항공</option>
												
												<option value="필리핀에어아시아">필리핀에어아시아</option>
												
												<option value="필리핀항공">필리핀항공</option>
												
												<option value="하와이안항공">하와이안항공</option>
												
												<option value="홍콩익스프레스">홍콩익스프레스</option>
												
												<option value="ALL" selected="selected">선택</option>
												</select>
											</div>
										</div>
									
									</div>
								</div>
								<div class="col-sm-2">
									<button type="button" class="btn btn-search" id="airClick"><i class="fa fa-search"></i> 조회</button>
								</div>
							</div>
							</form>
						</div>
<hr class="thin2">
<!-- //컨텐츠 내용 -->

	</div>



<style>
#airwrap, #customer_container{
	width: 1130px;
	margin: 50px auto;
}
tr,td,th{
	text-align: center;
}
.btn.btn-search{
    width: 100%;
    color: #fff;
    font-size: 130%;
    background-color: #2E7ABA;
    box-shadow: none;
    line-height: 362%;
    letter-spacing: -.05em;
    position: absolute;
    right: 60px;
}

#customer_container{
	min-height: 0px;
}
</style>


<script type="text/javascript">
function airCallAjax(){
	
	$.ajax({        
	    url: '${pageContext.request.contextPath }/airport/portsch',
	    type: 'get',
	    data:  { schStTime:$("#stHour").val()+$("#stMinute").val(), schEdTime:$("#edHour").val()+$("#edMinute").val(), schLineType:$("#airType").val(), schAirCode:$("#airPort").val()},
	    dataType: 'json',
	    success: function(data){
	  	  console.log(data);
	        var myItem = data.response.body.items.item;
	        var output = '';
	        
	        output += '<table class="table table2 table-hover text-center">';
	        output += '<thead>';
	        output += '<tr>';
	        output += '<th>'+'항공사'+'</th>';
	        output += '<th>'+'편명'+'</th>';
	        output += '<th>'+'예정시간'+'</th>';
	        output += '<th>'+'변경시간'+'</th>';
	        output += '<th>'+'출발지'+'</th>';
	        output += '<th>'+'도착지'+'</th>';
	        output += '<th>'+'구분'+'</th>';
	        output += '<th>'+'탑승구'+'</th>';
	        output += '<th>'+'현황'+'</th>';
	        output += '</tr>';
	        output += '</thead>'
	        output += '<tbody>'
	        //var myItem = JSON.parse(data);  
	        for(var i=1; i< myItem.length; i++){
	        	 if(myItem[i].airlineKorean==$("#airLine").val()||$("#airLine").val()=='ALL'){
	        		 console.log(myItem.length);
	 	           	output += '<tr>';         
	 	            output += '<td>'+myItem[i].airlineKorean+'</td>';
	 	            output += '<td>'+myItem[i].airFln+'</td>';
	 	            output += '<td>'+myItem[i].std+'</td>'; 
	 	            
	 	           var etds =myItem[i].etd+"";              
		           if(etds !="undefined"){
		        	   etds=myItem[i].etd;
	 	            }else{
	 	            	etds="";
	 	            }
	 	            
	 	            output += '<td>'+etds+'</td>';
	 	            output += '<td>'+myItem[i].boardingKor+'</td>';
	 	            output += '<td>'+myItem[i].arrivedKor+'</td>';
	 	            output += '<td>'+myItem[i].line+'</td>';
	 	           var gates =myItem[i].gate+"";              
		           if(gates !="undefined"){
		        	   gates=myItem[i].gate;
	 	            }else{
	 	            	gates="";
	 	            }
	 	            output += '<td>'+gates+'</td>';
	 	            
	 	           var rmkKors =myItem[i].rmkKor+"";              
		           if(rmkKors !="undefined"){
		        	   rmkKors=myItem[i].rmkKor;
	 	            }else{
	 	            	rmkKors="";
	 	            }
	 	            output += '<td>'+rmkKors+'</td>';
	 	            output += '</tr>';     
	 	           //document.body.innerHTML += output;   
	        	 }
	     		
	            
	        }
	     	output += '</tbody>'
	        output += '</table>'
	     $("#airwrap").empty()
	   	 $("#airwrap").append(output)
	   	 
	        
	    },
		error: function(XMLHttpRequest, textStatus, errorThrown) { 
	  	alert("Status: " + textStatus); alert("Error: " + errorThrown); 
		} 
	});
}

airCallAjax();

$(function() {
	$("#airClick").click(function() {
		
		airCallAjax();
	})
})
</script>

<div id="airwrap"></div>

<%@ include file="../include/footer.jsp"%>