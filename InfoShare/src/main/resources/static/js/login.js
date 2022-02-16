/* 로그인 확인 */

$(document).ready(function(){
	$('#loginForm').on('submit', function(){
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"login",
			data:{"memId": $('#memId').val(),
				 "memPw":  $('#memPw').val()},  /* 컨트롤러에서 받을 때 : memId, memPw로 받음*/
			dataType:'text',
			success:function(result){
				if(result == "success"){
					location.href="/";
				}else{
				    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
					//toastr.options.escapeHtml = true;
					//toastr.options.closeButton = true;
					//toastr.options.newestOnTop = false;
					//toastr.options.progressBar = true;
					//toastr.warning('아이디 또는 비밀번호가 일치하지 않습니다.', '', {timeOut: 5000})
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});