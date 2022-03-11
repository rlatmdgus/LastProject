<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원탈퇴</title>
		<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
		<link href="<c:url value='/css/accountDelete.css'/>" rel="stylesheet" type="text/css">
		
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/accountDelete.js'/>"></script>
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>
		
		<section class="w">
            <div class="delete-form">
                <h2 class="title-txt">회원 탈퇴</h2>
                <form  method="post" action="<c:url value='/member/accountDelete'/>" id="delForm">
                	<div>
                		<p class="delete-caution">회원탈퇴 하기 전에 확인해주세요.</p>
                	</div>
                	<div class="content-box">
                		<p>탈퇴 후 회원정보 및 이용기록은 모두 삭제되며, 다시 복구 할 수 없습니다.</p>
                	</div>
                	<div class="input-box">
                		<div>
		                    <p class="delete-title" for="memId">아이디</p>
		                </div>
		                <div>
		               		<input class="text-input" type="text" id="memId" name="memId" value="${sessionScope.sid}" readonly/>
		                </div>
	                   	<div>
		                   	<p class="delete-title" for="memPw">비밀번호</p>
		                </div>
		                    <div>
		                        <input class="text-input" type="password" id="memPw" name="memPw" />
		                    </div>
                	</div>
                </form>
                <button class="accountDelete-btn" type="button" id="submit">홈 그라운드 탈퇴</button>
            </div>
		</section>
	</body>
</html>