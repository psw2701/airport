<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <style>
 .footer_wrap{
 	width: 100%;
 	border-top:1px solid #8394a3;
 }
.footer_area {
	width: 100%;
	position: relative;
	overflow: hidden;

	padding-top: 20px;	
}
.container text-center{
	width: 100%;
}

.footer_wrap .container .footer_area {
	height: 127px;
}
.footer_navi a.btn.btn-link{
	color: #8394a3;
}

.footer_area em {
	font-style: normal;
}

.txt_y3 {
	color: #d8af50;
}

.txt_w {
	color: #8394a3;
}

.footer_wrap {
	height: 130px;
	color: #8394a3;
	margin-top: 60px;
	font-size: 95%;
	font-weight: 700;
}

.footer_area .footer_navi a {
	display: inline;
	padding: 0 8px 0 12px;
}

.footer_navi a {
	font-size: 100%;
}

.mb10 {
	margin-bottom: 10px;
}

address {
	margin-bottom: 20px;
	font-style: normal;
	line-height: 1.5;
}
</style>

   <footer class="footer_wrap">
   	<div class="container text-center">
    	<div class="footer_area">
    		<div class="footer_link">
    			<div class="footer_navi col-md-12 text-center">
	    			<div class="mb10">
	    				<a href="#" class="btn btn-sm btn-link">홈페이지 이용안내</a>
	    				<a href="#" class="btn btn-sm btn-link">서비스 제휴안내</a>
	    				<a href="#" class="btn btn-sm btn-link"><strong>개인 정보처리방침</strong></a>
	    				<a href="#" class="btn btn-sm btn-link">영상정보처리기기 운영관리 방침</a>
	    				<a href="#" class="btn btn-sm btn-link">이메일 무단 수집 거부</a>
	    				<a href="#" class="btn btn-sm btn-link">고객서비스 헌장</a>
	    				<a href="#"><img src="${pageContext.request.contextPath }/resources/images/sns_blog.png" alt="블로그"></a>
	    				<a href="#"><img src="${pageContext.request.contextPath }/resources/images/sns_facebook.png" alt="페이스북"></a>
	    				<a href="#"><img src="${pageContext.request.contextPath }/resources/images/sns_instagram.png" alt="인스타그램"></a>
	    			</div>
	    			<div class="footer_copy mtext-center">
	    				<em>41052 대구 동구 수완로 333</em>
	    				<em class="txt_y3">
	    					[ 전화번호 1661-0303 ] <span class="txt_w">말로 하는 전화 0303 + '공항'</span>
	    				</em>
	    				<address class="mb10">Copyright © 2016 KAC. All Rights Reserved.</address>
	    			</div>
    			</div>
    		</div>
    	</div>
    </div>
   </footer>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery.datetimepicker.css"/>
<script src="${pageContext.request.contextPath }/resources/js/jquery.datetimepicker.full.min.js"></script>
 </body>
 
</html>  