<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 작가 조회</title>
		<link rel="stylesheet" href="/css/authorList.css">
    <style>
        .authorlist-wrap {
            display: flex;
            justify-content: space-around;
        }

        .author-reg-bottom {
            display: flex;
            justify-content: center;
        }
    </style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
			<h3>작가님들 소개</h3>
			<br><br>
			
			<table border="1" width="600">
			
			   <c:forEach items="${authorList }" var="author">
			   		<tr>
			   			<td><img src="<c:url value='/images/${author.authorId}.jpg'/>" width="30" height="20">
			   					<!-- 또는  -->
			   			        <img src="/images/${author.authorId}.jpg" width="30" height="20"></td>
			   			<td><a href="<c:url value='/author/detailViewAuthor/${author.authorId}'/>">${author.authorId }</a></td>
			   			<td>${author.authorNick }</td>
			   			
			   			<td>${author.authorClass }</td>
			   			<td>${author.authorDescript }</td>
			   	</tr>
			   </c:forEach>
			</table><br>				
	</body>
</html>