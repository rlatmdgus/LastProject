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
	   <script type="text/javascript" src="<c:url value='/js/boardListView.js'/>"></script>
	   <script type="text/javascript" src="<c:url value='/js/review.js' />"></script>
	  <script type="text/javascript" src="<c:url value='/nse_files/js/HuskyEZCreator.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<section>
		<h2>리뷰 작성</h2>
		<hr>
		<a href='<c:url value="/reviewlist/${ctgId }/${deCtgId }"/>' id="list" class="btn btn-success">글목록</a> 
		<form id="reviewInsertForm" action="<c:url value='/updateReviewPost'/>" method="post">
		<input type="button" value="수정" name="savebutton" id="savebutton" class="btn btn-success">
		<input type="text" name="revTitle" id="revTitle" placeholder="제목을 입력해 주세요" value="${read.revTitle}">
		<c:forEach items="${cloList }" var="clo">
			<c:if test="${clo.cloPrdNo eq vo.cloPrdNo }"><p>${clo.cloPrdName }</p></c:if>
		</c:forEach>
		<c:forEach items="${fdList }" var="fd">
			<c:if test="${fd.fdPrdNo eq vo.fdPrdNo }"><p>${fd.fdPrdName }</p></c:if>
		</c:forEach>
		<input type="hidden" id="revImage" name="revImage" value="${ rlFileNm}">
		<input type="hidden" id="ctgId" name="ctgId" value="${ctgId }">
		<input type="hidden" id="deCtgId" name="deCtgId" value="${deCtgId }">
		<input type="hidden" id="revNo" name="revNo" value="${read.revNo }">
		<input type="hidden" id="cloPrdNo" name="cloPrdNo" value="${vo.cloPrdNo }">
		<input type="hidden" id="fdPrdNo" name="fdPrdNo" value="${vo.fdPrdNo }">
		<!-- SmartEditor2 --> 
		<div class="jsx-2303464893 editor"> 
			<div class="fr-box fr-basic fr-top" role="application">
				 <div class="fr-wrapper show-placeholder"  style="overflow: scroll;">
				  <textarea name="smartEditor" id="smartEditor" style="width: 100%; height: 412px;">${read.revText }</textarea>
				   </div> 
		   </div> 
	   </div>
	   </form>
	   </section>
	</div>

	</body>
	<script type="text/javascript" src="<c:url value='/js/updateReview.js'/>" ></script>
</html>
