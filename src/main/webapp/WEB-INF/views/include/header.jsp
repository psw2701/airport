<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<head>
<script type="text/javascript">
/* 메뉴 슬라이드 */
$(document).ready(function(){
	// Navbar Slider
		var $window = $(window),
			$lnbBG = $('.lnb-bg'),
			$Body = $('body'),
			$height = $('.lnb-bg').height();
						
					
	$('.navbar-right').on('mouseenter focusin', function(){
		$(this).find('.navi2m').stop().slideDown();
	});

	 $('.navbar-right').on('mouseleave focusout', function(){
		$(this).find('.navi2m').stop().slideUp();
	});

	$('.navi2m li').on('mouseenter focusin', function(){
		$(this).addClass('active');
		$(this).find('div').show();
	});

	$('.navi2m li').on('mouseleave focusout', function(){
		$(this).removeClass('active');
	});
		$('.navi2m a').on('click', function(){
			$(this).parent().find('div').show().parent().siblings().find('div').hide();
		});
})

/* 로그인 */
</script>

<title>Insert title here</title>
<style type="text/css">
 body{
	color: #777;
	line-height: 1.8;
	font-size: 14px;
	position: relative;
}

/* 팝업 */

#pop{
	background-color:#0c3f52; 
	position: relative;
	
}
#pop .wrap{
	position: relative;
}
#pop .Area{
	overflow: hidden;
	position: relative;
	z-index: 1;
	margin: 0 auto;
	padding: 20px 0;
}
#pop .Area ul.pop_list{
	border-top: 0;
	padding: 0;
	margin: 0;
}
.pop_g{
	float: left;
	width: 49%;
	border-left:1px solid #01131e;
	margin: 0 0 0 10px;
	padding-left: 30px; 
}

.pop_g:first-child{
	border-left: 0;
} 
.pop_g .pop_img{
	float: left;
	width: 130px;
}
.pop_g .pop_img img{
	width: 130px;
	height: 120px;
}
.pop_g dl{
	margin: 5px 0 5px 10px;
	float: left;
	width: 350px;
}
.pop_g dl dt{
	font-size: 18px;
	font-weight: bold;
	color: #d8af50;
	margin-bottom: 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
.pop_g dl dd{
	font-size: 13px;
	color:#fff;
	margin-top: 3px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient:vertical;
	word-wrap:break-word;
}

#pop .pop_ctrl .pop_count{
	color: #fff;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 100;
	background-color:#04493e;
	width: 50px;
	height: 19px;
	line-height: 24px;
	text-align: center;
	 
}
 #pop .pop_ctrl .pop_btn_Play{
	position: absolute;
	top: -2px;
	left: 51px;
	z-index: 100;
}
#pop .pop_ctrl .pop_btn_Prev{
	position: absolute;
	top: 55px;
	left: 0px;
}
#pop .pop_ctrl .pop_btn_Next{
	position: absolute;
	top: 55px;
	right: 0;
}
button{
	cursor: pointer;
	border: none;
	background: none;
	margin: 0;
	padding: 0;
}

.pop_g .deta_btn{
	border: 1px solid #648191;
	padding: 2px 5px;
	color: #648191;
	margin-left: 10px;
	clear: both;
	display: inline-block;
}

/* 로고 */
#swAir a{
	color: white;
}
header{

	position: relative;


}
	 header .container{
		position: relative;
	}
	.container{
		width: 100%;
		padding-right: 15px;
		padding-left:15px;
		margin-right: auto;
		margin-left: auto;
	}
	.text-right{
		text-align: right;
	}
	div{
		display: block;
	}
	
	header .container .navbar-logo{
		position: absolute;
		left: 15px;
		display: block;
		padding: 1.5% 1%;
		text-align: center;
		background-color: #802224;
		z-index: 50;
	}
	
	.navbar-logo h1{
		width: 130px;
		height: 91px;
	}
	.etc-navi .etc_navi li{
		float: right;
		text-align:right;
		display: inline;
		
	}
	.etc-navi .etc_navi li a{
		padding: 0 12px 0 8px;
		color: black;
		font-size: 13px;
		line-height: 34px;
		text-decoration: none;
		padding: 0 12px;
		
	}
	.etc-navi .etc_navi li.dropdown li{
		display: inline-block;
		float: none;
		background: none;
	}
	
	.etc-navi .etc_navi li.dropdown.none-no .dropdown-menu li.divider{
		height: 1px;
		margin: 0 0 9px 0;
		overflow: hidden;
		background-color: #e5e5e5;
		display: block;
	}
	
 * {
  box-sizing: border-box;
}


.navbar{
	position: relative;
	z-index: 10;
    width: 50%;
	border-radius: 0;
    margin-bottom: 0px;
    border-bottom-width: 0px;
	
	min-height: 50px;
	
	
}
.navbar #lnb-web li.navi1m-loop{
	float: left;
	margin: 0;
	padding: 0;
	letter-spacing: -.05em;
	position: relative;
	min-width: 142px;
}

.navbar #lnb-web a.navi1m{
	display: block;
	color: black;
	font-size: 135%;
	font-weight: 700;
	line-height: 50px;
	text-align: center;
	text-decoration: none;
	border-right: 0;
	padding: 0 38px;
}

.navbar #lnb-web a.navi1m span{
	padding: 0 10px;
}

.navbar #lnb-web .navi2m{
	position: absolute;
	top:60px;
	display: none;
	width: 100%;
	background-color:  rgba(0,0,0,0.5);
	
}

.navbar #lnb-web .navi2m a{
	color:white; 
}

ul{
	list-style: none;
}


/* 모달 로그인 */

#loginPopModal .modal-content .modal-header h4{
	border-bottom: 3px solid black;
	padding-bottom: 15px;
	
}
.modal-body{
	position: relative;
	padding: 15px;
}
.modal-header{
	border: none;
}
.pop_cont{
	width: 95%;
	margin: 0 auto;
}
.input-group .form-control{
	display: block;
	width: 100%;

	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;	
	border-radius: 4px;
}

h4, .modal-title{
	color: #444;
	font-size: 130%;
	padding-left: 12px;
	font-weight: 700;
	letter-spacing: -.05em;
}
.section{
	padding: 20px 0;
}
.pop_btn{
	width: 100%;
	color: #fff;
	font-size: 130%;
	background-color: #802223;
	box-shadow: none;
	line-height: 362%;
	letter-spacing: -.05em;
}
.pop_list{
	clear: both;
	border-top:1px solid #ccc;
	margin: 15px;
	padding-top: 10px; 
}

.input-group{
	margin-bottom: 10px;
} 

#userid, #userpwd{
	height: 33.64px;	
}

.msg-log{
	margin-left:10px; 
}
</style>
</head>
<body>

<header> 
<div id="pop" style="display:none;">
	<div class="wrap container">
		<div class="Area">

			<ul class="pop_list" id="pop_list">
				<li style="display: list-item;"> <!--  --> 
					<div class="pop_g">
						<p class="pop_img">
							<img alt="" src="${pageContext.request.contextPath }/resources/images/POPUP_INFO_201608291632497178262349.png" class="img-responsive">
						</p>
						<dl>
							<dt>항공기내 반입급지 물품 검색</dt>
							<dd>이제 인터넷을 통해 항공기내 반입금지 물품을 <br>
								언제 어디서든 간편하게 검색 하실 수 있습니다.<br>
								출발하기 전에 미리 확인하세요!<br>
							</dd>
						</dl>
						<a href="#" role="button" class="deta_btn">자세히 보기</a>
					</div>
					<div class="pop_g">
						<p class="pop_img">
							<img alt="" src="${pageContext.request.contextPath }/resources/images/POPUP_INFO_201609291045190613405561.png" class="img-responsive">
						</p>
						<dl>
							<dt>항공기 반입금지 물품 안내</dt>
							<dd>항공기 반입금지 물품을 사전에 확인하고 공항이용 시 휴대금지를 요청드립니다.<br>
								반입금지 물품 :총기류, 전자충격기, 도검류, 총알, 폭죽류 등<br>
							</dd>
						</dl>
						<a href="#" role="button" class="deta_btn">자세히 보기</a>
					</div>
				</li>
				<li > <!-- style="display: none;" --> 
					<div class="pop_g">
						<p class="pop_img">
							<img alt="" src="${pageContext.request.contextPath }/resources/images/POPUP_INFO_201609291045190613405561.png" class="img-responsive">
						</p>
						<dl>
							<dt>공항 이용시 대중교통 이용 협조 요청</dt>
							<dd>이용객 증가에 따라 주차장이 혼잡하오니 공항 이용시 대중교통을 적극 이용하여 주시기 바랍니다.
							</dd>
						</dl>
						<a href="#" role="button" class="deta_btn">자세히 보기</a>
					</div>
				</li>
				
			</ul>
		 </div> 
 		<div class="pop_ctrl">
 		
 		<!-- <a class="carousel-control-prev" href="#demo" data-slide="prev"> -->
			<button class="pop_btn_Prev">
				<img alt="" src="${pageContext.request.contextPath }/resources/images/ar_prev_pop.png" class="prev">
				 <!--  <span class="carousel-control-prev-icon"></span> -->
			</button>
			<!--  </a> -->
			 
			 <!-- <a class="carousel-control-next" href="#demo" data-slide="next"> -->
			<button class="pop_btn_Next">
				<img alt="" src="${pageContext.request.contextPath }/resources/images/ar_next_pop.png" class="next" >
				 <!--  <span class="carousel-control-prev-icon"></span> -->
			</button>
			<!-- </a> -->
			
			<span class="pop_count">
				<strong class="count">1</strong> / 2
			</span>
			<button class="pop_btn_Play">
				<img alt="" src="${pageContext.request.contextPath }/resources/images/btn_rolling_stop.png">
			</button>
		</div>
		
		<!-- </div> -->
		
	</div>
</div>
<div class="container top">
	<h1 id="swAir"><a href="${pageContext.request.contextPath }" class="navbar-logo">SW AIR</a></h1>
</div> 
<div class="modal fade" id="loginPopModal" tabindex="-1" role="dialog" aria-labelledby="loginPopModalLabel" style="display: none;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" title="팝업닫기">
						<span aria-hidden="true" >
							<img alt="팝업닫기" src="${pageContext.request.contextPath }/resources/images/btn_close.gif" class="mt10">
						</span>
						</button>
						<h4 class="modal-title" id="loginPopModalLabel">
							<strong>로그인</strong>
						</h4>				
				</div>
				<form action="${pageContext.request.contextPath }/user/loginPost" method="post">
					<div class="modal-body">
						<div class="msg-log">
							SW AIR 홈페이지에 방문해 주셔서 감사합니다.<br>
							아이디와 비밀번호를 입력해 주십시오.
						</div>
						<div class="section row pop_cont">
						
							<div class="col-md-9">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
											<label class="input-group-addon" for="user_id">
												<img alt="" src="${pageContext.request.contextPath }/resources/images/id_img.gif">
											</label>
											<input type="text" class="form-control" name="userid" id="userid" placeholder="아이디를 입력해주세요." autofocus="autofocus" required="required">
										</div>
									</div>
									<div class="col-xs-12">
										<div class="input-group">
											<label class="input-group-addon" for="user_pwd">
												<img alt="" src="${pageContext.request.contextPath }/resources/images/pass_img.gif">
											</label>
											<input type="password" class="form-control" name="userpw" id="userpwd" placeholder="비밀번호를 입력해주세요." required="required">
										</div>
									</div>
								</div>	
							</div>
									
							<div class="col-md-3 mb10">
								<button type="submit" class="btn pop_btn">로그인</button>
							</div>
							<div class="pop_list">
								<div class="row">
									<div class="col-md-3 kloop text-center br">
										<a href="${pageContext.request.contextPath }/search/searchId" class="find_id" style="color:#e92949 !important; padding-left:16px">아이디 찾기</a>
									</div>
									<div class="col-md-3 kloop text-center br">
										<a href="${pageContext.request.contextPath }/search/searchPw" class="find_id" style="color:#e92949 !important; padding-left:16px">비밀번호 찾기</a>
									</div>
									<div class="col-md-3 kloop text-center br">
										<a href="${pageContext.request.contextPath }/join/joininfo" class="find_id" style="color:#5c5b5b !important">회원가입</a>
									</div>
									<div class="col-md-3 kloop text-center">
										<a href="#" class="find_id"  style="color:#5c5b5b !important">직원로그인</a>
									</div>
								</div>
							</div>
								
							
						</div>
					</div>
				
				</form>
				
			</div>
		</div> 
	</div> 
	
	<c:if test="${modal != null }">
				<script>
					$("#loginPopModal").modal("show");
					</script>
	</c:if>
	<div class="etc-navi">
	<div class="container text-right">
		<div>
			<div class="etc_navi">
				<ul>
					<li class="none-no">
						<div class="btn_pop_open">
							<a href="#popupzone_btn" class="popupzone_btn">팝업존 열기</a>
						</div>
						<div class="btn_pop_close">
							<a href="#popupzone_btn" class="popupzone_btn" >팝업존 닫기</a>
						</div>
					</li>
					
					 <li class="dropdown none-no">
						<a href="#" type="button" data-toggle="dropdown" class="dept1"><strong>패밀리사이트</strong></a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<ul class="mb0" style="padding-left: 30px">
										<li>
											<a href="#">한국공항공사</a>
										</li>
									</ul>
								</li>
								<li class="divider"></li>
								<li>
									<ul class="mb0">
										<li>
											<a href="#" role="menuitem">김포국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">김해국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">제주국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">대구국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">울산공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">청주국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">무안국제공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">광주공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">여수공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">포항공항</a>
										</li>
										<li>
											<a href="#" role="menuitem">양양국제공항</a>
										</li>
										<li>
											<a href="#">사천공항</a>
										</li>
										<li>
											<a href="#">군산공항</a>
										</li>
										<li>
											<a href="#">원주공항</a>
										</li>
									</ul>
							</li>
							
						</ul>
					</li>
					
					<li class="dropdown hidden-xs hidden-sm">
						<a href="#" type="button" data-toggle="dropdown" class="dept1">LANGUAGE</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">한국어</a></li>
							<li><a href="#">English</a></li>
							<li><a href="#">日本語</a></li>
							<li><a href="#">中國語</a></li>
						</ul>
					</li> 
					
					<li class="hidden-xs hidden-sm">
						<a href="#">사이트맵</a>
					</li>
					
					<li class="hidden-xs hidden-sm">
					
						<c:if test="${login !=null }">
						<span>${login.name }</span>님 환영합니다.						
						<a href="${pageContext.request.contextPath }/user/logout" id="loginBtn" role="button">로그아웃</a><a href="">마이페이지</a>
						</c:if>
						<c:if test="${login==null }">
							<a href="#" id="loginBtn" data-toggle="modal" data-target="#loginPopModal" role="button">로그인</a>
						</c:if>
					
					</li>
						
					<li class="hidden-xs hidden-sm">
						<a href="${pageContext.request.contextPath }">홈</a>
					</li>
								
				</ul>
			</div>
		</div>
	</div>
</div>

<nav class="navbar">
	<div id="lnb-web" class="lnb hidden-xs hidden-sm">
		<div class="lnb-bg">
			<div class="container">
				<div class="row">
					<ul class="lnb-bg-wrap navbar-right">
						<li class="navi1m-loop" id="top_web_480">
							<a href="${pageContext.request.contextPath }/airport/air" class="navi1m" >운항현황</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath }/airport/air"><span>실시간 운항정보</span></a>
									</li>
									<li>
									<a href="#"><span>운항스케줄</span></a>
									</li>
									<li>
									<a href="#"><span></span></a>
									</li>
									<li>
									<a href="#"><span></span></a>
									</li>
									<li>
									<a href="#"><span></span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_481">
							<a href="#" class="navi1m">탑승안내</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									
									</li>
									<li>
									<a href="${pageContext.request.contextPath }/boardInfo/homePass"><span>빠른수속</span></a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath }/boardInfo/security"><span>보안검색</span></a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath }/boardInfo/flightEtiquette"><span>항공기탑승</span></a>
									</li>
									<li>
									
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_482">
							<a href="#" class="navi1m">교통/주차</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>오시는길</span></a>
									</li>
									<li>
									
									</li>
									<li>
									
									</li>
									<li>
									
									</li>
									<li>
									<a href="#"><span>주차안내</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_483">
							<a href="#" class="navi1m">공항정보</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>공항소개</span></a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath }/airportInfo/pregnantchildren"><span>공항이용 가이드</span></a>
									</li>
									<li>
									<a href="#"><span>공항시설</span></a>
									</li>
									<li>
									
									</li>
									<li>
									<a href="#"><span></span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_485">
							<a href="#" class="navi1m">고객센터</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top: 20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>공지사항</span></a>
									</li>
									<li>
									
									</li>
									<li>
									
									</li>
									<li>
									
									</li>
									<li>
									<a href="${pageContext.request.contextPath}/board/info"><span>고객의 소리</span></a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</nav>




<!-- popup슬라이드 -->
<script type="text/javascript">	
$(function() {
	$(".btn_pop_close").hide();
	$(".popupzone_btn").click(function() {
		$("#pop").slideToggle();				
		if($(".btn_pop_open").is(":hidden")==true){
			$(".btn_pop_open").show();
			$(".btn_pop_close").hide();

		}else{
			$(".btn_pop_close").show();
			$(".btn_pop_open").hide();
		}
		
	});	
	
	
	
});

</script>



<script type="text/javascript">

//popupzone
(function($){	
	$.fn.PopupZone = function(options) {
		
		var settings = {
			prevBtn : '',
			nextBtn : '',
			playBtn : '',
			waitingTime : ''
		};
		
		$.extend(settings, options);
		settings.areaDiv = this;
		settings.prevBtn = $(settings.prevBtn);
		settings.nextBtn = $(settings.nextBtn);
		settings.playBtn = $(settings.playBtn);
		
		settings.cnt = settings.areaDiv.find('.pop_list li').length;		
		settings.waitingTime = parseInt(settings.waitingTime);
		settings.nowNum = 0;
		settings.moveFlag = true; 
		settings.moveType;
		settings.setTimeOut;
		var status=true;
		
		function emptySetting() {
			settings.areaDiv.find('.count').html(settings.nowNum+1);
			settings.areaDiv.find('.pop_list li').hide();
		}
		function setRolling(aniFlag) {
			if(!settings.moveFlag){
				if(settings.moveType=="next" || settings.moveType == null){ 
					settings.nowNum++;
					if(settings.nowNum == settings.cnt) settings.nowNum = 0;
				} else if(settings.moveType=="prev") {
					settings.nowNum--;
					if(settings.nowNum < 0) settings.nowNum = (settings.cnt-1);
				}
			}			
			emptySetting();
			
			if(aniFlag) settings.areaDiv.find('.pop_list li').eq(settings.nowNum).show();
			else settings.areaDiv.find('.pop_list li').eq(settings.nowNum).fadeIn('normal');
			 // 기본 : aniFlag 설정 없으면 fade 효과 - 조정
			
			aniFlag = false;
			settings.moveFlag = false;
			if(status){
				settings.setTimeOut= setTimeout(setRolling , settings.waitingTime);
			}
		}
		function playRolling(){
			if(status){
				clearTimeout(settings.setTimeOut);
				settings.playBtn.find('img').attr('src',"${pageContext.request.contextPath }/resources/images/btn_rolling_stop_on.png");
				settings.playBtn.find('img').attr('alt',"팝업 롤링 재생");
				status = false;
			}else{
				settings.playBtn.find('img').attr('src',"${pageContext.request.contextPath }/resources/images/btn_rolling_stop.png");
				settings.playBtn.find('img').attr('alt',"팝업 롤링 정지");
				status = true;
				setRolling();
			}
			return false;
		}
		function prevRolling(){
			clearTimeout(settings.setTimeOut);
			settings.moveType = "prev";
			setRolling();
			return false;
		}
		function nextRolling() {
			clearTimeout(settings.setTimeOut);
			settings.moveType = "next";
			setRolling();
			return false;
		}
		setRolling();
		settings.prevBtn.click(prevRolling);
		settings.nextBtn.click(nextRolling);
		settings.playBtn.click(playRolling);
		
	};

})(jQuery);

$(document).ready(function(){
	
	try {
	 $('#pop').PopupZone({
		prevBtn : '.pop_btn_Prev', 
		nextBtn : '.pop_btn_Next',
		playBtn : '.pop_btn_Play',
		waitingTime : '5000'

	});
	 
	} catch(e) {}
});

</script>
<script type="text/javascript">



</script>


</header>


