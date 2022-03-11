$(function(){
	
	$('#product').on('change',function(){
		
		var option=$('#product').val();
		if(option=='food'){
			$("#fdPrdNo").css("display","inline");
			$("#cloPrdNo").css("display","none");
		}else if(option =='cloths'){
			$("#fdPrdNo").css("display","none");
			$("#cloPrdNo").css("display","inline");
		}else if(option==''){
			$("#fdPrdNo").css("display","none");
			$("#cloPrdNo").css("display","inline");
		}
	});
	
	
});