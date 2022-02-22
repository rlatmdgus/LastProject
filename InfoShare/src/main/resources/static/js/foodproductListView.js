/**
 * 
 */
 $(function(){
	
	$('.move').on('click',function(){
		var fdPrdNo=$("#fdPrdNo").val()
		var ctgId=$('#ctgId').val();
		location.href="/readProduct?fdPrdNo="+fdPrdNo;
		
	})
	
});