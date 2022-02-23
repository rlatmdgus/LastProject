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
            url : "/member/accountDelete",
            type : "POST",
            dataType : "text",
            data : {"memId":$('#memId').val(),
                    "memPw":$('#memPw').val()},
            success: function(data){
                if(data==0){
                    alert("패스워드가 틀렸습니다.");
                    return;
                }else{
                    alert("탈퇴 되었습니다");
                    location.href="/";
                }
            },
            error:function(data, textStatus){
                alert("전송 실패");
            },
        });
        
    });

});