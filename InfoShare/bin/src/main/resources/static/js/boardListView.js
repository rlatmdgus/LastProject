/**
 * 
 */
 $(function(){
	
	$('#pageInfo a').on('click',function(e){
		var ctgId=$('#ctgId').val();
		var deCtgId=$('#deCtgId').val();
		
		 e.preventDefault();
       	 $("input[name='pageNum']").val($(this).attr("href"));
       	$("#moveForm").attr("action", "/list/"+ctgId+"/"+deCtgId);
        	$("#moveForm").submit();
	});

	$('#search').on('click',function(e){
		
		e.preventDefault();
        
        let type = $("#type").val();
        let keyword = $("#keyword").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }        
        $("input[name='type']").val(type);
        $("input[name='keyword']").val(keyword);
        $("input[name='pageNum']").val(1);
        moveForm.submit();
	})
	
});