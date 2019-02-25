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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$.ajax({
		uri: 'AirportData.do',
		type: 'get',
		dataType: "json",
		success: function(msg) {
			console.log(msg.response.body.items.item);
			var myItem = msg.response.body.items.item;
			
			for (var i = 0; myItem.length; i++){
				var output = '';
				console.log(myItem.length);
				output += '<h3>'+ i + '항공스케줄데이터' + '</h3>';
				output += '<h4>'+myItem[i].airlineKorean+'</h4>';
                output += '<h4>'+myItem[i].arrivalcity+'</h4>';
                output += '<h4>'+myItem[i].domesticArrivalTime+'</h4>';
                output += '<h4>'+myItem[i].domesticNum+'</h4>';
                document.body.innerHTML += output;
			}
		}
	})
</script>
</body>
</html>