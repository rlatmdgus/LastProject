/**
 * 
 */
 $(function(){
	
	$('.move').on('click',function(){
		var fdPrdNo=$("#fdPrdNo").val()
		location.href="/readProduct?fdPrdNo="+fdPrdNo;
		
	})
	
});