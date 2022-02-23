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
		   var boardTitle = $("#boardTitle").val();
		    var boardText = document.getElementById("smartEditor").value;
		    var boarImage= $('#boardImage').val();
		      if (boardTitle == null || boardTitle == "")
		       { alert("제목을 입력해주세요."); $("#boardTitle").focus(); 
		       return;
		        } if(boardText == "" || boardText == null || boardText == '&nbsp;' || boardText == '<br>' || boardText == '<br/>' || boardText == '<p>&nbsp;</p>')
		        { alert("본문을 작성해주세요."); 
		        oEditors.getById["smartEditor"].exec("FOCUS"); 
		        //포커싱 return; 
		        } //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다.
		         var result = confirm("등록 하시겠습니까?");
		          if(result){ alert("등록 완료!"); 
		          $("#boardInsertForm").submit();
		           }else{ return; }
		            });
		             });
	 
			
