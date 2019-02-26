<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet"  type="text/css">
<style>
	#container{
		width: 1130px;
		margin: 10px auto;
	}
</style>
<div id="container">
<P>  The time on the server is ${serverTime} </P>



<script type="text/javascript">
function airCallAjax(){
 
	 $.ajax({        
		    url: '${pageContext.request.contextPath }/airsch',
		    type: 'get',
		    dataType: 'json',
		    success: function(data){
		  	  console.log(data);
		        var myItem = data.response.body.items.item;
		        var output = '';
		        
		        output += '<table class="table table-condensed">';
	            output += '<thead>';
	            output += '<tr>';
	            
	            output += '<th>'+'예정시간'+'</th>';
	            output += '<th>'+'항공사'+'</th>';
	            output += '<th>'+'편명'+'</th>';
	            output += '<th>'+'구분'+'</th>';
	            output += '<th>'+'도착지'+'</th>';
	            output += '<th>'+'탑승구'+'</th>';
	            output += '<th>'+'현황'+'</th>';
    
		        output += '</tr>';
		        output += '</thead>'
		        output += '<tbody>'
		        
		        
		        	for(var i=1; i< myItem.length; i++){
				        
				            console.log("++++++=========="+myItem[i].airlineKorean);
				           	output += '<tr>'; 
				           	output += '<td>'+myItem[i].std+'</td>'; 
				            output += '<td>'+myItem[i].airlineKorean+'</td>';
				            output += '<td>'+myItem[i].airFln+'</td>';
				            output += '<td>'+myItem[i].line+'</td>';
				            output += '<td>'+myItem[i].arrivedKor+'</td>';
				            var gates =myItem[i].gate+"";   
			 	            if(gates !="undefined"){
			 	            	gates=myItem[i].gate;
			 	            }else{
			 	            	gates="";
			 	            }
				            output += '<td>'+gates+'</td>';
				            var rmkKors =myItem[i].rmkKor+"";              
					           if(rmkKors !="undefined"){
					        	   rmkKors=myItem[i].rmkKor;
				 	            }else{
				 	            	rmkKors="";
				 	            }
				 	            output += '<td>'+rmkKors+'</td>';

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
		}


		airCallAjax();

</script>

<script type="text/javascript">
function airCallAjax(){
 
	 $.ajax({        
		    url: '${pageContext.request.contextPath }/portsch',
		    type: 'get',
		    dataType: 'json',
		    success: function(data){
		  	  console.log(data);
		        var myItem = data.response.body.items.item;
		        var output = '';
		        
		        output += '<table class="table table-condensed">';
	            output += '<thead>';
	            output += '<tr>';
	            
	            output += '<th>'+'예정시간'+'</th>';
	            output += '<th>'+'항공사'+'</th>';
	            output += '<th>'+'편명'+'</th>';
	            output += '<th>'+'구분'+'</th>';
	            output += '<th>'+'출발지'+'</th>';
	            output += '<th>'+'탑승구'+'</th>';
	            output += '<th>'+'현황'+'</th>';
    
		        output += '</tr>';
		        output += '</thead>'
		        output += '<tbody>'
		        
		        
		        	for(var i=1; i< myItem.length; i++){
				        
				            console.log("++++++=========="+myItem[i].airlineKorean);
				           	output += '<tr>'; 
				           	output += '<td>'+myItem[i].std+'</td>'; 
				            output += '<td>'+myItem[i].airlineKorean+'</td>';
				            output += '<td>'+myItem[i].airFln+'</td>';
				            output += '<td>'+myItem[i].line+'</td>';
				            output += '<td>'+myItem[i].boardingKor+'</td>';
				            var gates =myItem[i].gate+"";   
			 	            if(gates !="undefined"){
			 	            	gates=myItem[i].gate;
			 	            }else{
			 	            	gates="";
			 	            }
				            output += '<td>'+gates+'</td>';
				            var rmkKors =myItem[i].rmkKor+"";              
					           if(rmkKors !="undefined"){
					        	   rmkKors=myItem[i].rmkKor;
				 	            }else{
				 	            	rmkKors="";
				 	            }
				 	            output += '<td>'+rmkKors+'</td>';

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
		}


		airCallAjax();

</script>
<div id="airwrap"></div>
</div>

<%@ include file="./include/footer.jsp"%>