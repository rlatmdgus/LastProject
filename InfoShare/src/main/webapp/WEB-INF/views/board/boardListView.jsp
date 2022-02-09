<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>게시판 목록</title>
	  <link href="<c:url value="/css/boardListView.css"/>" rel="stylesheet" type="text/css">
	</head>
	<body>
	<div id="wrap">
		<table id="list">
		<tr><th id="No">번호</th><th id="title">제목</th><th id="name">작성자</th><th id="date">작성일</th><th id="hit">조회수</th></tr>
		<c:forEach items="${list }" var="li">
		<tr><td>${li.boardNo }</td><td>${li.boardTitle }</td><td>${li.memNickname }</td>
		<td><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${li.boardDate}"/></td>
		<td>${li.boardHit}</td></tr>
		</c:forEach>
		
		</table>
		
		</div>
	</body>
</html>