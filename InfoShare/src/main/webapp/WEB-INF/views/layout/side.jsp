<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="<c:url value='/css/side.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="myinfo-arrange">
			<aside class="my-info">
				<div class="my-name">
					<strong>${sessionScope.sname}</strong>
				</div>
				<div class="my-menu">
					<b class="my-menu-tite">나의 메뉴</b>
					<nav class="my-menu-nav">
						<a href="<c:url value=''/>" class="my-menu-a">
							<span>주문내역</span>
						</a>
						<a href="<c:url value=''/>"  class="my-menu-a"><span>취소 & 환불내역</span></a>
						<a href="<c:url value=''/>" class="my-menu-a"><span>내가 쓴 후기</span></a>
						<a href="<c:url value=''/>" class="my-menu-a"><span>찜 목록</span></a>
						<a href="<c:url value=''/>" class="my-menu-a"><span>팔로우하는 작가</span></a>
						<a href="<c:url value='/infoedit/${sessionScope.sid}'/>" class="my-menu-a"><span>내 정보 관리</span></a>
					</nav>
				</div>
			</aside>
		</div>
	</body>
</html>