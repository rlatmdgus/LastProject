/**
 * 
 */
 $(document).ready(function() {
	$(".find_pw_btn").click(function() {
		event.preventDefault();
        const id = $(".memId").val();
		const email = $(".memEmail").val();
		const name = $(".memName").val();
		
        if(id == ''){
            alert("아이디를 입력해주세요.");
			$('.memId').focus();
			return false;
        }
		else if( name ==''){
			alert("이름을 입력해주세요.");
			$('.memName').focus();
			return false;
		} else if( email ==''){
			alert("이메일을 입력해주세요.");
			$('.memEmail').focus();
			return false;
		}
		
		$.ajax({
			type:"post",
			url:"/serachpw",
			data:{"memId": id,
                  "memEmail": email,
				  "memName": name}, 
			dataType:'JSON',
			success:function(result){
				if(result == ""){
					$('#pw_value').text("회원 정보를 확인해주세요!");	
					$('#pw_value').css('color', '#CC3729');
				} else {
					$('#pw_value').text("비밀번호는 "+result[0].memPw+" 입니다");
					$('#pw_value').css('color', '#0F4D2B');
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	})
})