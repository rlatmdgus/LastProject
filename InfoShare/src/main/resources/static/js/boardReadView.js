/**
 * 
 */
 $(function(){
	 var boardNo=$('#boardNo').val();
	 var ctgId=$('#ctgId').val();
	 var deCtgId=$('#deCtgId').val();
	  commentList(boardNo);
		$('#insert').click(function(){ //댓글 등록 버튼 클릭시 
		var insertData = $('#comment_form').serialize();
		    commentInsert(insertData); //Insert 함수호출(아래)
		});
 
	$('#delete').on('click',function(){
		var boardNo=$('#boardNo').val();
		var ctgId=$('#ctgId').val();
		var deCtgId=$('#deCtgId').val();
		var check=confirm("삭제 하시겠습니까?");
		if(check){
		location.href="/boardDelete?boardNo="+boardNo+"&ctgId="+ctgId+"&deCtgId="+deCtgId;
		}
	})
 
 //댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(comNo, comText){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+comNo+'" value="'+comText+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+comNo+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+comNo).html(a);
    
};
 
/*//댓글 수정
function commentUpdateProc(comNo){
    var updateContent = $('[name=content_'+comNo+']').val();
    
    $.ajax({
        url : '/update',
        type : 'post',
        data : {'comText' : updateContent, 'comNo' : comNo},
        success : function(data){
            if(data == 1) commentList(boardNo); //댓글 수정후 목록 출력 
        }
    });
};
 
//댓글 삭제 
function commentDelete(comNo){
    $.ajax({
        url : '/delete/'+cno,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(boardNo); //댓글 삭제후 목록 출력 
        }
    });
};*/
 
//댓글 목록 
function commentList(boardNo){
    $.ajax({
        url : '/commentList',
        type : 'get',
        data :{"boardNo":boardNo,
        		"ctgId":ctgId,
        		"deCtgId":deCtgId},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
				var today = new Date(value.comDate);
					var year = today.getFullYear();
					var month = ('0' + (today.getMonth() + 1)).slice(-2);
					var day = ('0' + today.getDate()).slice(-2);
					var hours = ('0' + today.getHours()).slice(-2); 
					var minutes = ('0' + today.getMinutes()).slice(-2);
					var seconds = ('0' + today.getSeconds()).slice(-2); 
					var time=year + '-' + month  + '-' + day+" "+hours + ':' + minutes  + ':' + seconds;
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.comNo+'">'+'작성자 : '+value.memId+"</div>";
               // a += '<div style="float:right;font-size:12px"><a style="cursor:pointer"  onclick="commentUpdate('+value.comNo+',\''+value.comText+'\')"> 수정 </a>';
               // a += '<a style="cursor:pointer" href="javascript:void(0); onclick="commentDelete('+value.comNo+')"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.comNo+'"><p>'+value.comText +'</p>';
                a +='<p id="date">'+time+'</p>';
                a += '</div></div>';
            });
            
            $(".commentList").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert(insertData){
    $.ajax({
        url : '/commentinsert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('#comText').val('');
            }
        }
    });
}
 

});