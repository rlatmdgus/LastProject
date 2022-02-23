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
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>
		
		<section>
			<div class="title-style">
				<h2 class="title-txt">최근 주문내역</h2>
			</div>
			<div class="title-style">
				<h2 class="title-txt">찜한 작품</h2>
			</div>
			<div class="title-style">
				<h2 class="title-txt">팔로우하는 작가</h2>
			</div>
		</section>
		
	</body>
</html>