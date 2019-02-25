<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
<style>
#airwrap{
	width: 1130px;
	margin: 0 auto;
}
tr,td,th{
	text-align: center;
}

</style>
<script type="text/javascript">
$.ajax({        
    url: '${pageContext.request.contextPath }/airport/air',
    type: 'post',
    dataType: 'json',
    success: function(data){
  	  console.log(data);
        var myItem = data.response.body.items.item;
        var output = '';
        
        output += '<table class="table table-condensed">';
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
         
            console.log(myItem.length);
           	output += '<tr>';         
            output += '<td>'+myItem[i].airlineKorean+'</td>';
            output += '<td>'+myItem[i].airFln+'</td>';
            output += '<td>'+myItem[i].std+'</td>'; 
            output += '<td>'+myItem[i].etd+'</td>';
            output += '<td>'+myItem[i].boardingKor+'</td>';
            output += '<td>'+myItem[i].arrivedKor+'</td>';
            output += '<td>'+myItem[i].line+'</td>';
            output += '<td>'+myItem[i].gate+'</td>';
            output += '<td>'+myItem[i].rmkKor+'</td>';
            output += '</tr>';     
           //document.body.innerHTML += output;   
        }
     	output += '</tbody>'
        output += '</table>'
   	 $("#airwrap").append(output)
   	
        
    },
	error: function(XMLHttpRequest, textStatus, errorThrown) { 
  	alert("Status: " + textStatus); alert("Error: " + errorThrown); 
	} 
});

</script>

<div id="airwrap"></div>

<%@ include file="../include/footer.jsp"%>