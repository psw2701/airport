<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head>
<script type="text/javascript">

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
</script>


<title>Insert title here</title>
<style type="text/css">
 body{
	color: #777;
	line-height: 1.8;
	font-size: 14px;
	position: relative;
}
	 header .container{
		position: relative;
	}
	.container{
		width: 1130px;
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
		padding: 2.7% 2%;
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
	height: 72px;
	border-radius: 0;
	margin-bottom: 10px;
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

ul{
	list-style: none;
}
</style>
</head>
<body>

<header>
<div class="container top">
	<h1><a href="#" class="navbar-logo">SW공항</a></h1>
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
				<form action="">
				</form>
				
			</div>
		</div> 
	</div> 
	<div class="etc-navi">
	<div class="container text-right">
		<div>
			<div class="etc_navi">
				<ul>
					<li class="none-no">
						<div class="btn_pop_open">
							<a href="#" class="popupzone_btn">팝업존 열기</a>
						</div>
						<div class="btn_pop_close">
							<a href="#" class="popupzone_btn" style="display: none;">팝업존 닫기</a>
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
						<a href="#">로그인</a>
					</li>
						
					<li class="hidden-xs hidden-sm">
						<a href="#">홈</a>
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
							<a href="#" class="navi1m">운항현황</a>
							<div class="navi2m" style="display: none; height: 109px; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>실시간 운항정보</span></a>
									</li>
									<li>
									<a href="#"><span>항공권 예약</span></a>
									</li>
									<li>
									<a href="#"><span>운항스케줄</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_481">
							<a href="#" class="navi1m">탑승안내</a>
							<div class="navi2m" style="display: none; height: 109px;; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>탑승시뮬레이션</span></a>
									</li>
									<li>
									<a href="#"><span>빠른수속</span></a>
									</li>
									<li>
									<a href="#"><span>보안검색</span></a>
									</li>
									<li>
									<a href="#"><span>항공기탑승</span></a>
									</li>
									<li>
									<a href="#"><span>도착시뮬레이션</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_482">
							<a href="#" class="navi1m">교통/주차</a>
							<div class="navi2m" style="display: none; height: 109px;; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>오시는길</span></a>
									</li>
									<li>
									<a href="#"><span>대중교통</span></a>
									</li>
									<li>
									<a href="#"><span>렌터카</span></a>
									</li>
									<li>
									<a href="#"><span>렌터카예약</span></a>
									</li>
									<li>
									<a href="#"><span>주차안내</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_483">
							<a href="#" class="navi1m">공항정보</a>
							<div class="navi2m" style="display: none; height: 132px; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>공항소개</span></a>
									</li>
									<li>
									<a href="#"><span>공항이용 가이드</span></a>
									</li>
									<li>
									<a href="#"><span>공항시설</span></a>
									</li>
									<li>
									<a href="#"><span>모바일앱 소개</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_484">
							<a href="#" class="navi1m">여행상품</a>
							<div class="navi2m" style="display: none; height: 109px; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>비행기 국내여행</span></a>
									</li>
									<li>
									<a href="#"><span>비행기 해외여행</span></a>
									</li>
									<li>
									<a href="#"><span>알짜여행팁</span></a>
									</li>
									<li>
									<a href="#"><span>여행후기</span></a>
									</li>
									<li>
									<a href="#"><span>여행지 정보</span></a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="navi1m-loop" id="top_web_485">
							<a href="#" class="navi1m">고객센터</a>
							<div class="navi2m" style="display: none; height: 155px; padding-top:20px; margin-top: 0px; padding-bottom: 20px; margin-bottom: 0px;">
								<ul>
									<li>
									<a href="#"><span>공지사항</span></a>
									</li>
									<li>
									<a href="#"><span>이벤트 정보</span></a>
									</li>
									<li>
									<a href="#"><span>FAQ</span></a>
									</li>
									<li>
									<a href="#"><span>유실물센터</span></a>
									</li>
									<li>
									<a href="#"><span>고객의 소리</span></a>
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



</header>


