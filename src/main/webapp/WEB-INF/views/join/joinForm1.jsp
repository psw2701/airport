<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp"%>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <link href="${pageContext.request.contextPath }/resources/css/form.css?aaaaaaaa" rel="stylesheet"  type="text/css">

 <script>
    $(function(){
      $("#f1").submit(function(){
         $(".error").css("display","none");
         $(".error2").css("display","none");
         
         var name = $("input[name='name']").val();
         if(name == ""){
            $("input[name='name']").next().css("display","inline");
            return false;/*submit을 막음*/
         }
         var regName = /^[가-힣]{2,5}$/;
         if(regName.test(name) == false){
            $("input[name='name']").nextAll(".error2").css("display","inline");
            return false;
         }     
         
         var id = $("input[name='id']").val();
         if(id == ""){
            $("input[name='id']").nextAll(".error").css("display","inline");
            return false;/*submit을 막음*/
         }
         var regId = /^[a-z0-9]{6,15}$/i;
         if(regId.test(id) == false){
            $("input[name='id']").nextAll(".error2").css("display","inline");
            return false;
         }
        
         
         var password = $("input[name='password']").val();
         if(password == ""){
            $("input[name='password']").next().css("display","inline");
            return false;/*submit을 막음*/
         }
         var regPassword = /^[a-z0-9!@#$%]{6,20}$/i;
         if(regPassword.test(password) == false){
            $("input[name='password']").nextAll(".error2").css("display", "inline");
            return false;
         }
         
         var confirmPassword = $("input[name='confirmPassword']").val();
         if(confirmPassword == ""){
            $("input[name='confirmPassword']").next().css("display","inline");
            return false;/*submit을 막음*/
         }
         if(password != confirmPassword){
            $("input[name='confirmPassword']").nextAll(".error2").css("display","inline");
            return false;
         }
         
         return true;
      });
      
      $("#duplicatedIdBtn").click(function(){
         var id = $("input[name='id']").val();
         
         $.ajax({
            url:"duplicatedId.do",
            type:"get",
            data:{"id":id},
            dataType:"json",
            success:function(data){
               console.log(data);
               if(data.result == true){
                  alert("사용중인 ID입니다.");
               }else{
                  alert("ID를 사용할 수 있습니다.");
               }
            }
         })
      })
      
      
      	$(function () {
		$("#BtnPost").click(function() {
			sample6_execDaumPostcode()
			
		})
	})
	
	 $( function() {
		    $( "#datepicker" ).datepicker({
		      showOn: "button",
		      buttonImage: "images/btn_calendar.gif",
		      buttonImageOnly: true,
		      buttonText: "Select date",
		      changeMonth: true,
		      changeYear: true,
		      
		    });
		    $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
		  
		  } );
      

		 
      
   })
   
</script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script>
$(function() {
	 $(document).on('click','#submit',function(){
		 $(opener.document).find('#zipcode').val($('#sample6_postcode').val());
		$(opener.document).find('#address').val($('#sample6_address').val());
		$(opener.document).find('#detailAddr').val($('#sample6_detailAddress').val());
		
		window.close();
	})
	
	$("#domain").change(function() {
		
		$("#email2").val($("#domain").val());
	})
})
	
</script>
<div id="container">
		<section>
		<div id="form">
		<h1>회원가입</h1>
		<h5>정보를 입력해 주세요.</h5>
   <form action="join.do" method="post" id="f1">
   <fieldset id="Join">
      <p>
         <label>이름</label>
         <input type="text" name="name"> 
         <span class="error">이름을 입력하세요</span>
         <span class="error2">한글 (2~5)</span>
      </p>
      <p>
         <label>아이디</label>
         <input type="text" name="id" > 
         <button type="button" id="duplicatedIdBtn">중복체크</button>
         <span class="error">ID를 입력하세요</span>
         <span class="error2">영어, 숫자 (6~15)</span>
      </p>
     
      <p>
         <label>비밀번호</label>
         <input type="password" name="password"> 
         <span class="error">비밀번호를 입력하세요</span>
         <span class="error2">영어,숫자, 특수문자 (6~20)</span>
      </p>
      <p>
         <label>비밀번호 확인</label>
         <input type="password" name="confirmPassword"> 
         <span class="error">비밀번호 확인을 입력하세요</span>
         <span class="error2">비밀번호 일치하지 않습니다</span>
      </p>
      
      
      
  <p>
         <label>전화번호</label>
        <select name="phone">
        	<!-- <option selected="selected" value="opt">선택하세요</option> -->
        	<option value="010">010</option>
        	<option value="011">011</option>
        	<option value="017">017</option>
        </select>
      - <input type="text" name="phone2"> - <input type="text" name="phone3">
        
      </p>
       <p>
         <label>이메일</label>
         <input type="text" name="email1"> @ 
          <input type="text" name="email2"  id="email2">
        
        <select name="email2" id="domain">
        
        	<!-- <option value="a">선택하세요</option> -->
        	<option value="naver.com">naver.com</option>
        	<option value="gmail.com">gmail.com</option>
        	<option value="daum.net">daum.net</option>
        	<option value="nate.com">nate.com</option>
        </select>
      </p>
         
      
      <p>
       <label>우편번호</label>
      <input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode">
     <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="btnSearchPost"><br>
      </p>
      
      <p>
       <label>주소</label>   
      	<input type="text" id="sample6_address" placeholder="주소" name="address"><br>
      </p>
      
      <p>
       <label>상세주소</label>   
      <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="detailAddr">
       	<input type="text" id="sample6_extraAddress" placeholder="참고항목"><br>
      </p>
      
	
      
      <p id="send">  
        
         <input type="reset" value="초기화" id="reset"> 
          <input type="submit" value="회원가입" id="ok"> 
      </p>
      </fieldset>
   </form>
</div>
		</section>
	</div>
	
<%@ include file="../include/footer.jsp"%>