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
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
	<section>
	<div>            
			<c:if test="${not empty sessionScope.sid }">
			<a href='<c:url value="/writeReview?ctgId=${ctgId }&deCtgId=${deCtgId }"/>' id="write" class="btn btn-success">리뷰쓰기</a>     
			</c:if>
     </div>
	<div id="container">
		<table class="table table-striped table-hover">
		<tr><th id="No">번호</th>
		<th id="title">제목</th>
		<th id="image">제품 사진</th>
		<th id="name">작성자</th>
		<th id="date">작성일</th>
		</tr>
		<c:forEach items="${list }" var="li">
		<tr><td><c:out value="${li.revNo }"/></td>
		<td><a href="<c:url value='/readReview?revNo=${li.revNo }&ctgId=${ctgId }&deCtgId=${deCtgId }' />"><c:out value="${li.revTitle }"/></a></td>
		<td><img src="${li.revImage }"></td>
		<td><c:out value="${li.memId }"/></td>
		<td><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${li.revDate}"/></td>
		</tr>
		</c:forEach>
		</table>
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous" id="pageNum"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li id="pageNum2" class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "Active":"" }" id="select"><a href="${num }">${num}</a></li>
					</c:forEach>
					
				  <c:if test="${pageMaker.next}">
                    <li id="pageNum3" class="pageInfo_btn NEXT"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>  
				</ul>
				
			</div>
		</div>
		<form method="get" id="moveForm">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="ctgId" id="ctgId" value="${ctgId }">
			<input type="hidden" name="deCtgId" id="deCtgId" value="${deCtgId }">
		</form>
		<div id="search_wrap">
		<div id="search_area">
				<select id="type" name="type">
				<option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>검색조건을 선택하세요</option>
				<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
				<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
				<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
				</select>
				<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력해주세요">
				<input type="button" id="search" value="검색">
			</div>
			</div>
		</div>
		</section>
		</div>
	</body>
</html>