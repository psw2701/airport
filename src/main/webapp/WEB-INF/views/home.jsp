<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/home.css?Aaaaaa" rel="stylesheet"  type="text/css">
<div class="container" id="homeContainer">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    
	
      <div class="item active">
        <img src="${pageContext.request.contextPath }/resources/images/20181022141409918_0.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
         <div class="visual-text-box">
	        <div class="visual-text  " style="font-size: 70px; color: rgb(255, 255, 255); opacity: 1; position:absolute; top: -1500%;">
	        	SW Airport
	        </div>    
	                     
	        <div class="visual-text  " style="font-size: 34px; color: rgb(255, 255, 255); opacity: 1; position:absolute; top: -1200%;">
	        	7개 항공사 제2여객터미널 추가 이전 
	        </div>    
	        
	              
	        <div class="visual-text  " style="font-size: 34px; color: rgb(255, 255, 255); opacity: 1;  position:absolute; top: -1000%;">
	        	2018. 10. 28. 
	        </div>
	        
	         </div>
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/20180119091708723_0.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
         <div class="visual-text-box">
	        
	        <div class="visual-text text-right " style="font-size: 70px; color: rgb(255, 255, 255); opacity: 1; top: 0px;">
	        	SW Airport
	        </div>
	        
	        <div class="visual-text text-right " style="font-size: 34px; color: rgb(255, 255, 255); opacity: 1; top: 0px;">
	        	사람과 사람을 잇는 SW국제공항
	        </div>
	            
	      </div>
        </div>
      </div>
      
       <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/20180119091730268_0.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <div class="visual-text-box">
	        
	        <div class="visual-text text-right " style="font-size: 70px; color: rgb(255, 255, 255); opacity: 1; top: 0px;">
	        	SW Airport
	        </div>
	        
	        <div class="visual-text text-right " style="font-size: 34px; color: rgb(255, 255, 255); opacity: 1; top: 0px;">
	        	모두가 행복해지는 SW국제공항
	        </div>

	        
	      </div>
        </div>
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<%@ include file="./include/footer.jsp"%>