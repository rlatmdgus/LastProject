/**
 * 
 */
$(document).ready(function(){
    $("#submit").on("click", function(){
        if($("#memPw").val()==""){
            alert("비밀번호를 입력해주세요.");
            $("#memPw").focus();
            return false;
        }
        $.ajax({
            url : "/member/infoeditForm",
            type : "POST",
            dataType : "text",
            data : {"memName":$('#memName').val(),
            		"memId":$('#memId').val(),
            		"memPw":$('#memPw').val(),
            		"memHp":$('#memHp').val(),
            		"memEmail":$('#memEmail').val(),
                    "memBirth":$('#memBirth').val()},
            success: function(data){
                    alert("수정 되었습니다");
                    location.href="/";
            },
            error:function(data, textStatus){
                alert("전송 실패");
            },
        });
        
    });

});