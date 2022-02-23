<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>게시판 목록</title>
	  <link href="<c:url value="/css/boardListView.css"/>" rel="stylesheet" type="text/css">
	  <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	  <script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	  <script type="text/javascript" src="<c:url value='/js/boardListView.js'/>"></script>
	</head>
	<body>
	<div id="wrap">
	<section>
	<div>            
            <a href='<c:url value="/write"/>' id="write" class="btn btn-success">글쓰기</a>            
     </div>
	<div id="container">
		<table class="table table-striped table-hover">
		<tr><th id="No">번호</th>
		<th id="title">제목</th>
		<th id="name">작성자</th>
		<th id="date">작성일</th>
		<th id="hit">조회수</th>
		</tr>
		<c:forEach items="${list }" var="li">
		<tr><td><c:out value="${li.boardNo }"/></td>
		<td><a href="<c:url value='/readView?boardNo=${li.boardNo}' />"><c:out value="${li.boardTitle }"/></a></td>
		<td><c:out value="${li.memId }"/></td>
		<td><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${li.boardDate}"/></td>
		<td><c:out value="${li.boardHit }"/></td></tr>
		</c:forEach>
		</table>
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num }">${num}</a></li>
					</c:forEach>
					
				  <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>  
				</ul>
				
			</div>
		</div>
		<form method="get" id="moveForm">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		
		</form>
		
		</div>
		</section>
		</div>
	</body>
</html>