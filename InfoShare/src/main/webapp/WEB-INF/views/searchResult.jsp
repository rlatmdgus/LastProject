<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>

	<h3>게시판 내용</h3>
	<div>
		<c:forEach items="${boardList}" var="blist">
			<div>${blist.boardTitle}</div>
			<div>${blist.boardImage}</div>
			<div>${blist.boardHit}</div>
		</c:forEach>
	</div>
	
	<br><br><br>
	
	<h3>상품 내용</h3>
	<div>
		<c:forEach items="${prdList}" var="plist">
			<div>${plist.fdPrdImg}</div>
			<div>${plist.fdPrdName}</div>
			<div>${plist.fdPrdPrice}</div>
			<div>${plist.fdPrdCost}</div>
		</c:forEach>
	</div>
</body>
</html>