/**
 * 
 */
 $(function(){
	
	$('#pageInfo a').on('click',function(e){
		
		 e.preventDefault();
       	 $("input[name='pageNum']").val($(this).attr("href"));
       	$("#moveForm").attr("action", "/list");
        	$("#moveForm").submit();
	});

		
		
	
	
});