/**
 * 
 */
 $(function(){
	
	$('#pageInfo a').on('click',function(e){
		var ctgId=$('#ctgId').val();
		 e.preventDefault();
       	 $("input[name='pageNum']").val($(this).attr("href"));
       	$("#moveForm").attr("action", "/foodListView/"+ctgId);
        	$("#moveForm").submit();
	});

		
		
	
	
});