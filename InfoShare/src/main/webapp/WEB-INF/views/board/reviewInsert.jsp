<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>글쓰기 </title>
	   <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	   <link rel="stylesheet" href="<c:url value="/css/reviewInsert.css"/>">
	  <script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	  <script type="text/javascript" src="<c:url value='/js/review.js' />"></script>
	   <script type="text/javascript" src="<c:url value='/js/boardListView.js'/>"></script>
	  <script type="text/javascript" src="<c:url value='/nse_files/js/HuskyEZCreator.js'/> "></script>
	</head>
	<body>
		<div id="wrap">
		<section>
		<h2>리뷰 작성</h2>
		<hr>
		<a href='<c:url value="/reviewlist/${ctgId }/${deCtgId }"/>' id="list" class="btn btn-success">글목록</a> 
		<form id="reviewInsertForm" action="<c:url value='/saveReview'/>" method="post">
		<input type="button" value="등록" name="savebutton" id="savebutton" class="btn btn-success">
		<input type="text" name="revTitle" id="revTitle" placeholder="제목을 입력해 주세요" >
		
		<select id="product" name="product">
		<option value="">카테고리를 선택하세요</option>
		<option value="food">음식</option>
		<option value="cloths">의류</option>  
		</select>
		<select id="fdPrdNo" name="fdPrdNo">
		<option value="">항목를 선택하세요</option>
		<c:forEach items="${fdList }" var="fd">
		<option value="${fd.fdPrdNo }">${fd.fdPrdName }</option>
		</c:forEach>
		</select>
		<select id="cloPrdNo" name="cloPrdNo">
		<option value="">항목를 선택하세요</option>
		<c:forEach items="${cloList }" var="clo">
		<option value="${clo.cloPrdNo }">${clo.cloPrdName }</option>
		</c:forEach>
		</select>
		<input type="hidden" id="revImage" name="revImage" value="${ rlFileNm}">
		<input type="hidden" id="ctgId" name="ctgId" value="${ctgId }">
		<input type="hidden" id="deCtgId" name="deCtgId" value="${deCtgId }">
		<!-- SmartEditor2 --> 
		<div class="jsx-2303464893 editor"> 
			<div class="fr-box fr-basic fr-top" role="application">
				 <div class="fr-wrapper show-placeholder"  style="overflow: scroll;">
				  <textarea name="smartEditor" id="smartEditor" style="width: 100%; height: 412px;"></textarea>
				   </div> 
		   </div> 
	   </div>
	   </form>
	   </section>
	</div>

	</body>
	<script type="text/javascript" src="<c:url value='/js/InsertReview.js'/>" ></script>
	
</html>
