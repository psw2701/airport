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
<input id="date_timepicker_start" type="text" >
<input id="date_timepicker_end" type="text" >
</body>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery.datetimepicker.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.datetimepicker.full.min.js"></script>
<script>
  $( function() {

	  
	    $( "#date_timepicker_start" ).datetimepicker({
	    	 format:'Y-m-d H:m',
	    	 onShow:function( ct ){
	    		   this.setOptions({
	    		    maxDate:jQuery('#date_timepicker_end').val()?jQuery('#date_timepicker_end').val():false
	    		   })
	    		  },
	    		  
	    });
	    $( "#date_timepicker_end" ).datetimepicker({
	    	format:'Y-m-d H:m',
	    	 onShow:function( ct ){
	    		   this.setOptions({
	    		    minDate:jQuery('#date_timepicker_start').val()?jQuery('#date_timepicker_start').val():false
	    		   })
	    		  },
	    		  
	    });  
	    $.datetimepicker.setLocale('ko');
	  } );
  </script>
</html>