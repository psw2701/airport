<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
 
      $.ajax({        
            url: 'PublicData.do',
            type: 'get',
            dataType: 'json',
            success: function(msg){
                console.log(msg.response.body.items.item);
                var myItem = msg.response.body.items.item;
                 
                for(var i=0; myItem.length; i++){
                    var output = '';
                    console.log(myItem.length);
                    output += '<h3>'+ i + '번째 서울 축제 데이터' +'</h3>';
                    output += '<h4>'+myItem[i].cityChina+'</h4>';
                    output += '<h4>'+myItem[i].cityCode+'</h4>';
                    output += '<h4>'+myItem[i].cityEnglish+'</h4>';
                    document.body.innerHTML += output;
                }
            }
        }); 
 
</script>
</body>
</html>