<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내 정보</title>
		<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>
		
		<section class="w">
			<div class="mymenu-box">
				<div class="title-style">
					<h2 class="title-txt">최근 주문내역</h2>
					<div class="grid-box">
					</div>
				</div>
				<div class="title-style">
					<h2 class="title-txt">찜한 작품</h2>
					<div class="grid-box">
					</div>
				</div>
				<div class="title-style">
					<h2 class="title-txt">팔로우하는 작가</h2>
					<div class="grid-box">
					</div>
				</div>
			</div>
		</section>
		
	</body>
</html>