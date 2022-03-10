/**
 * 
 */
 $(document).ready(function() {
	$(".find_btn").click(function() {
		event.preventDefault();
		const email = $(".memEmail").val();
		const name = $(".memName").val();
		
		if( name ==''){
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
			url:"/serachid",
			data:{"memEmail": email,
				  "memName": name}, 
			dataType:'JSON',
			success:function(result){
				if(result == ""){
					$('#id_value').text("회원 정보를 확인해주세요!");	
					$('#id_value').css('color', '#CC3729');
				} else {
					$('#id_value').text("아이디는 "+result[0].memId+" 입니다");
					$('#id_value').css('color', '#0F4D2B');
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	})
})
