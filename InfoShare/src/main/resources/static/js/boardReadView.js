/**
 * 
 */
 $(function(){
	event.preventDefault();
	 var like=0;
		 var hate=0;	
	$('#boardLike').on('click',function(){
		 var formData = new FormData($('#chatbotForm')[0]);
		$.ajax({
			type:"post",
			url:"likeCount",
			processData: false,  // 필수
			contentType: false,  // 필스
			data:formData,
			success:function(){
				if(like=0){
					
				}
			},
			error:function(){
				alert("오류가 발생했습니다.");
			}
			
		});
		
	})
	
	
});