<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="UTF-8">
      <title>로그인 창</title>
      <link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
      <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">
      <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
  </head>
<body>

  <!-- TOP -->
  
  <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>

	<section>
		<div class="login-form">
			<form id="loginForm" name="loginForm">
				<h2 class="title">로그인</h2>
				<input type="text" id="memId" name="memId" class="text-field" placeholder="아이디" required>
				<input type="password" id="memPw" name="memPw" class="text-field" placeholder="비밀번호" required>
				<input type="submit" value="로그인" class="bt">
			</form>
			<div class="findbox">
				<a href="<c:url value='/findid'/>" style="font-size: 14px;"
					class="find-a">아이디</a>
				<a style="font-size: 14px;"
					class="find-a">/</a>
				<a href="<c:url value='/findpw'/>"
					style="font-size: 14px;" class="find-a">비밀번호 찾기</a>
			</div>
			<div class="links">
				아직 회원이 아니신가요?&nbsp;<a href="<c:url value='/consentForm'/>"
					style="font-size: 14px;">회원가입</a>
			</div>
		</div>
	</section>

	<!-- -->

</body>
</html>