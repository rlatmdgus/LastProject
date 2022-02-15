<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html>
	<head>
	 	<title>게시판</title>
	 	<link rel="stylesheet" href="<c:url value='/css/bootstrap.css'/>">
	 	<link rel="stylesheet" href="<c:url value='/css/boardReadView.css'/> ">
	  <script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>" ></script>
	  <script type="text/javascript" src="<c:url value='/js/boardReadView.js'/>" ></script>
	</head>
	<body>
	
		<div id="wrap">
				
			<nav>
				<h1>자유 게시판</h1>
			  <a href="<c:url value='/'/>" class="btn btn-success" >홈</a> <a href="<c:url value='/list'/>" class="btn btn-success" > 목록</a>
			</nav>
			<hr />
			<section id="container">
			<form id="count">
					<table >
						<tr><td>${read.boardTitle }</td></tr>
						<tr><td>작성자 : ${read.memId }</td></tr>
						<tr><td id="time">작성일 : <fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${read.boardDate}"/></td>
							<td id="like">
					<c:choose>
						<c:when test="${ltlike ==0}">
							<button type="button" class="btn btn-light" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>					
						<c:when test="${ltlike ==1}">
							<button type="button" class="btn btn-danger" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>
					</c:choose>					
				</td>
							</tr>
						<tr><td colspan="2"><hr>${read.boardContext }</td></tr>	
					</table>
					<input type="hidden" id="memId" name="memId" value="${read.memId }">
					<input type="hidden" id="boardNo" name="boardNo" value="${read.boardNo }">
					<input type="hidden" id="boardLike" name="boardLike" value="${read.boardLike }"> 
					<input type="hidden" id="boardHate" name="boardHate" value="${read.boardHate }"> 
					
					</form>	
					<div class="comments">
						<div class="comment_form">
							<form action="">
								<p>댓글
								<hr>
								<div id="comment_area">
								</div>
								<input type="text" id="comment" name="comment" placeholder="댓글을 입력하세요"> <input type="submit" value="등록"  class="btn btn-success">
							</form>
						</div>
					</div>
			</section>
			<hr />
		</div>
	</body>
</html>