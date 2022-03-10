<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
<link href="<c:url value='/css/allsearch.css'/>" rel="stylesheet" type="text/css">
</head>
<body>

<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>

	<div id="MenuBox">
		<div id="MainTitle"><a>자유게시판</a></div>
	</div>
	<div>
		<c:if test="${not empty boardList }">
			<form class="boardListbox" id="boardListView">
		    	<c:forEach items="${boardList}" var="blist">
		         	<div class="boardbox" onclick="location.href='<c:url value="/readView?boardNo=${blist.boardNo}&ctgId=${blist.ctgId}&deCtgId=${blist.deCtgId}"/>'">
						<div class="boardindex">
	                            <div class="titleindex">
	                            	<span class="board_title" type="text" name="boardTitle">${blist.boardTitle}</span>
	                                <img src="${blist.boardImage}" style="width: 252px; height: 252px;">
	                            </div>
	                            <div class="posttitleBottom">
	                                <span class="titlebottom" type="text" name="boardHit">조회수 ${blist.boardHit}</span>
	                            </div>
	                        </div>
					</div>
				</c:forEach>
		    </form>
	    </c:if>
	</div>
	<c:if test="${empty boardList }">
      	 <div class="searchDiv">
         	<p class="psearch">검색결과가 없습니다.</p>
         </div>
    </c:if>
	<div id="MenuBox">
		<div id="MainTitle"><a>작품후기</a></div>
	</div>
	<div>
		<c:if test="${not empty reviewList }">
			<form class="boardListbox" id="boardListView">
		    	<c:forEach items="${reviewList}" var="rlist">
		         	<div class="boardbox" onclick="location.href='<c:url value="readReview?revNo=${rlist.revNo}&ctgId=${rlist.ctgId}&deCtgId=${rlist.deCtgId}"/>'">
						<div class="boardindex">
	                    	<div class="titleindex">
	                            <span class="board_title" type="text" name="boardTitle">${rlist.revTitle}</span>
	                            <img src="${rlist.revImage}" style="width: 252px; height: 252px;">
	                        </div>
	                    </div>
					</div>
				</c:forEach>
		    </form>
		</c:if>
	</div>
	<c:if test="${empty reviewList }">
      	 <div class="searchDiv">
         	<p class="psearch">검색결과가 없습니다.</p>
         </div>
    </c:if>
	<div id="MenuBox">
		<div id="MainTitle"><a>상품</a></div>
	</div>
	<div>
		<c:if test="${not empty prdList }">
			<form class="boardListbox" id="boardListView">
				<c:forEach items="${prdList}" var="plist">
					<div class="boardbox" onclick="location.href='<c:url value="readProduct?FdPrdNo=${plist.fdPrdNo}"/>'">
						<div class="boardindex">
							<div class="titleindex">
								<img src="${plist.fdPrdImg}"
									style="width: 252px; height: 252px;">
							</div>
							<div class="product-title-Bottom">
								<span class="titlebottom" type="text" name="boardHit">${plist.fdPrdName}</span>
								<span class="titlebottom" type="text" name="boardHit">${plist.fdPrdPrice}</span>
								<span class="titlebottom" type="text" name="boardHit">${plist.fdPrdGrade}</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</form>
		</c:if>
	</div>
	<c:if test="${empty prdList }">
      	 <div class="searchDiv">
         	<p class="psearch">검색결과가 없습니다.</p>
         </div>
    </c:if>
</body>
</html>