$(document).ready(function() {
	
	$("#SearchBtn").on("click", () => {
		$("#SearchInput-Form").submit();
	});
	
	
    /*$('#SearchInput-Form').on('submit', function() {
        event.preventDefault();
        
        

        //serialize() : 폼에 입력한 값을 쿼리스트링 방식의 데이터로 변환시킴.
        //type = postTitle&keyword=자바
       /* $.ajax({
            type:"post",
            url:"postSearch",
            data:formData,
            success:function(result){   // 컨트롤러에서 반환한 postList 를 result 가 받음
                //alert(result.length);
                // 반환된 결과(ArrayList<PostVO>)를  searchResultBox 에 테이블 형태로 출력
                $('#detailViewPost').empty();
                if(result == "") {
                    $('#detailViewPost').append('<h3>검색 결과가 없습니다.</h3>');
                } else {
                    for (let i = 0; i < result.length; i++) {
                        var post = $('#posttitleEx').clone();
                        post.attr('onclick', 'location.href="/post/detailViewPost/' + result[i].post_no + '"');
                        post.find('.post_title').val(result[i].post_title);
                        post.find('.titlebottom').val("by " + result[i].mem_id);
                        post.find('.thumbnail').attr("src", '/resource/photo_upload/' + result[i].post_img);
                        post.show();

                        $('#detailViewPost').append(post);

                    }
              

                }
            },
            error:function(data, textStatus){
                alert("post Search 전송 실패");
            }
        });*/
    //});*/
});


