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
				<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
			<nav>
				<h3>자유 게시판</h3>
			  <a href="<c:url value='/'/>" class="btn btn-success" >홈</a> <a href="<c:url value='/list'/>" class="btn btn-success" > 목록</a>
			  <c:if test="${read.memId ==sessionScope.sid }">
			  	<button class="btn btn-success" id="delete" >삭제</button> <a href="<c:url value='/updateBoard?boardNo=${read.boardNo}'/>" class="btn btn-success" > 수정</a>
			  </c:if>
			</nav>
			<hr />
			<section id="container">
				
					<table >
						<tr><td><h3>${read.boardTitle }</h3></td></tr>
						<tr><td>작성자 : ${read.memId }</td></tr>
						<tr><td id="time">작성일 : <fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${read.boardDate}"/></td>
							<td>#${read.boardTag }</td>
							</tr>
						<tr><td colspan="2"><hr>${read.boardContext }</td></tr>	
					</table>
					
							
					<div class="comments">
							<p id="comment">댓글
							<hr>
							<div class="container">
      						  <div class="commentList"></div>
    						</div>	
						<div class="comment_form">
							<form id="comment_form">
				
								<div id="comment_area">
								</div>
								<input type="hidden" id="boardNo" name="boardNo" value="${read.boardNo }">
								<c:if test="${not empty sessionScope.sid }">
								<input type="text" id="comText" name="comText" placeholder="댓글을 입력하세요"> <input type="submit" id="insert" value="등록"  class="btn btn-success">
								</c:if>
							</form>
						</div>
					</div>
			</section>
			<hr />
		</div>
	</body>
</html>