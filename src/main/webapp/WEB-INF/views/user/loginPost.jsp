<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
		/* 모달 로그인창이 그대로 띄어져 있는 상황 */
		location.href="${pageContext.request.contextPath}?modal=open";
	</script>
</body>
</html>