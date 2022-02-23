/**
 * 
 */
 $(document).ready(function() {
    $("#submit").on('click',function(){
        var num = 0;
        if( $("#cb2").is(":checked") == true){
            num = 1;
        }
        if(num==1){
            location.href="/joinForm";
        }else{
            alert("개인정보 약관에 동의하셔야 합니다.");
           
    }
    }); 
});