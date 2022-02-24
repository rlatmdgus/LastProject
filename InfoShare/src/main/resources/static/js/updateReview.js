/**
 * 
 */
 
 var oEditors = []; 
 	nhn.husky.EZCreator.createInIFrame({
	 oAppRef : oEditors,
	  elPlaceHolder : "smartEditor",
	  sSkinURI : "nse_files/SmartEditor2Skin.html",
	   fCreator : "createSEditor2",
	    htParams : {  bUseToolbar : true,
	     // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	      bUseVerticalResizer : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	       bUseModeChanger : false } });
	        $(function() {
		
		 $("#savebutton").click(function() {
		   oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD", []);
		  //textarea의 id를 적어줍니다.
		   var revTitle = $("#revTitle").val();
		    var revText = document.getElementById("smartEditor").value;
		      if (revTitle == null || revTitle == "")
		       { alert("제목을 입력해주세요."); $("#boardTitle").focus(); 
		       return;
		        } if(revText == "" || revText == null || revText == '&nbsp;' || revText == '<br>' || revText == '<br/>' || revText == '<p>&nbsp;</p>')
		        { alert("본문을 작성해주세요."); 
		        oEditors.getById["smartEditor"].exec("FOCUS"); 
		        //포커싱 return; 
		        } //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다.
		         var result = confirm("수정 하시겠습니까?");
		          if(result){ alert("수정 완료!"); 
		          $("#reviewInsertForm").submit();
		           }else{ return; }
		            });
		             });
	 
			
