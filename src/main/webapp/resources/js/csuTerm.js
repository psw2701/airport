$(function() {
	$("#btnNext").click(function() {
		if (!$('input[name="agree01"]').is(':checked')) {
			alert("회원약관에 동의해 주십시오.");
			return false;
		}
		
		if (!$('input[name="chkTerms"]').is(':checked')) {
			alert("개인정보 수집 이용 안내에 대하여 동의해 주십시오.");
			return false;
		}
	})
})

$(function() {

	$("#checkAll").bind('change', function(e) {
		$("input:checkbox").prop('checked', $(this).prop('checked'));
	});

	
});

setTitle("03.약관동의 : 회원가입 : 한국항공공사");