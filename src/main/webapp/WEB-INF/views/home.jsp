<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet"  type="text/css">
<h1>
	Hello world!!
	
</h1> 
 <p id="id">안녕하세요!A</p>
<P>  The time on the server is ${serverTime}... </P>

<%@ include file="./include/footer.jsp"%>