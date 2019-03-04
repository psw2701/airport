<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/mLogin.css?Aaaaaaa" rel="stylesheet"  type="text/css">
<div id="mLogin">			
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal_top_title">
						<h2>로그인</h2>
				</div>	
				
	<form action="${pageContext.request.contextPath }/user/mLogin" method="post">
		<div class="modal-body">
			<div class="msg-log">
				<p>한국공항공사 직원 로그인 페이지입니다.<br>아이디와 비밀번호를 입력해 주십시오.</p>
			</div>
			<div class="section row pop_cont">
				<div class="col-md-9">
					<div class="row">
						<div class="col-xs-12">
							<div class="input-group">
								<label class="input-group-addon" for="user_id">
									<img alt="" src="${pageContext.request.contextPath }/resources/images/id_img.gif">
								</label>
								<input type="text" class="form-control" name="id" id="userid" placeholder="아이디를 입력해주세요." autofocus="autofocus" required="required"  autocomplete="off" maxlength="20">
							</div>
						</div>
						<div class="col-xs-12">
							<div class="input-group">
								<label class="input-group-addon" for="user_pwd">
									<img alt="" src="${pageContext.request.contextPath }/resources/images/pass_img.gif">
								</label>
								<input type="password" class="form-control" name="pw" id="userpwd" placeholder="비밀번호를 입력해주세요." required="required"  autocomplete="off" maxlength="20">
							</div>
						</div>
					</div>	
				</div>
						
				<div class="col-md-3 mb10">
					<button type="submit" class="btn pop_btn">로그인</button>
				</div>
					
				
			</div>
		</div>
	
	</form>
				
	</div>
</div>
</div>			
<%@ include file="../include/footer.jsp"%>				