/**
 * 
 */
 $(function(){
	
	$('#delete').on('click',function(){
		var revNo=$('#revNo').val();
		var ctgId=$('#ctgId').val();
		var deCtgId=$('#deCtgId').val();
		var check=confirm("삭제 하시겠습니까?");
		if(check){
		location.href="/reviewDelete?revNo="+revNo+"&ctgId="+ctgId+"&deCtgId="+deCtgId;
		}
		});
		
	
	
});