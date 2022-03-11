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
	<!--  게시판-->
	<div id="wrap">
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
	<section>
	<c:if test="${ctgId == '1'}">
			<h3>서울</h3>
			</c:if>
			<c:if test="${ctgId == '2'}">
			<h3>부산</h3>
			</c:if>
			<c:if test="${ctgId == '3'}">
			<h3>대구</h3>
			</c:if>
			<c:if test="${ctgId == '4'}">
			<h3>인천</h3>
			</c:if>
			<c:if test="${ctgId == '5'}">
			<h3>광주</h3>
			</c:if>
			<c:if test="${ctgId == '6'}">
			<h3>대전</h3>
			</c:if>
			<c:if test="${ctgId == '7'}">
			<h3>울산</h3>
			</c:if>
			<c:if test="${ctgId == '8'}">
			<h3>세종</h3>
			</c:if>
			<c:if test="${ctgId == '9'}">
			<h3>경기</h3>
			</c:if>
			<c:if test="${ctgId == '10'}">
			<h3>강원</h3>
			</c:if>
			<c:if test="${ctgId == '11'}">
			<h3>충북</h3>
			</c:if>
			<c:if test="${ctgId == '12'}">
			<h3>충남</h3>
			</c:if>
			<c:if test="${ctgId == '13'}">
			<h3>경북</h3>
			</c:if>
			<c:if test="${ctgId == '14'}">
			<h3>경남</h3>
			</c:if>
			<c:if test="${ctgId == '15'}">
			<h3>전북</h3>
			</c:if>
			<c:if test="${ctgId == '16'}">
			<h3>전남</h3>
			</c:if>
			<c:if test="${ctgId == '17'}">
			<h3>제주</h3>
			</c:if>
	<div>            
			<c:if test="${not empty sessionScope.sid }">
			<a href='<c:url value="/write?ctgId=${ctgId }&deCtgId=${deCtgId }"/>' id="write" class="btn btn-success">글쓰기</a>     
			</c:if>
			<!-- dddssssssd; -->
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
		<td><a href="<c:url value='/readView?boardNo=${li.boardNo}&ctgId=${ctgId}&deCtgId=${deCtgId }' />"><c:out value="${li.boardTitle }"/></a></td>
		<td><c:out value="${li.memId }"/></td>
		<td><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${li.boardDate}"/></td>
		<td><c:out value="${li.boardHit }"/></td></tr>
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
		<form method="post" id="moveForm">
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