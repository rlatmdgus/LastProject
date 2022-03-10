<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내 정보 관리</title>
		<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
		<link href="<c:url value='/css/memUpdate.css'/>" rel="stylesheet" type="text/css">
		
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/infoedit.js'/>"></script>
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>
		
		<section class="w">
			<div class="memUpdate">
				<div class="title-style">
					<h2 class="title-txt">내 정보 관리</h2>
				</div>
				<form class="info-from" method="post">
					<table class="info-table">
			            <tr class="info-tr"><th class="info-th">이름</th><td class="info-td"><input type="text" class="text-input" id="memName" name="memName" value="${mem.memName}" ></td></tr>
			            <tr class="info-tr"><th class="info-th">ID</th><td class="info-td"><input type="text" class="text-input" id="memId" name="memId" value="${mem.memId}" style="background-color: #f5f5f5" readonly></td></tr>
			            <tr class="info-tr"><th class="info-th">비밀번호</th><td class="info-td"><input type="password" class="text-input" id="memPw" name="memPw" value=""></td></tr>
			            <tr class="info-tr"><th class="info-th">전화번호</th><td class="info-td"><input type="text" class="text-input" id="memHp" name="memHp" value="${mem.memHp}"></td></tr>   
			            <tr class="info-tr"><th class="info-th">이메일</th><td class="info-td"><input type="text" class="text-input" id="memEmail" name="memEmail" value="${mem.memEmail}"></td></tr>
			            <tr class="info-tr"><th class="info-th">생년원일</th><td class="info-td"><input type="text" class="text-input" id="memBirth" name="memBirth" value="${mem.memBirth}"></td></tr>
			        </table>    
				</form>
				<div class="btn-box">
			       	<input class="edit-btn" type="button" id="submit" value="내 정보 수정하기"> 
			       	<input class="info-delete-btn" type="button" value="회원탈퇴" onclick="location.href='/accountDelete'">
			    </div> 
				<div class="delete-btn-box">
			        
			    </div>
			     
			</div>
		</section>
	</body>
</html>