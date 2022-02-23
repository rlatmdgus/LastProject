/* 아이디 중복 체크 */
 $(document).ready(function(){
	$('#idCheck').on('click',function(){
	event.preventDefault();
		$.ajax({
			type:"post",
			url:"memIdCheck",
			data:{
				"memId":$('#memId').val()
			},
			dataType:'text',
			success:function(result){
				if(result == "no_use"){
					message = "사용 가능한 아이디 입니다";
					//toastr.options.escapeHtml = true;
					//toastr.options.closeButton = true;
					//toastr.options.newestOnTop = false;
					//toastr.options.progressBar = true;
					//toastr.info('사용 가능한 아이디 입니다.', '', {timeOut: 3000})
				}else{
					message = "사용 불가능한 아이디 입니다";
					//toastr.options.escapeHtml = true;
					//toastr.options.closeButton = true;
					//toastr.options.newestOnTop = false;
					//toastr.options.progressBar = true;
					//toastr.warning('사용 불가능한 아이디 입니다.', '', {timeOut: 3000})
				}
				   
				alert(message);
			},
			error:function(data, textStatus){
				alert("전송 실패");
			},

		});
	});
	
});