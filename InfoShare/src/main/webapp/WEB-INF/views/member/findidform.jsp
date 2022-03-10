<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="UTF-8">
      <title>아이디 찾기</title>
      <link href="<c:url value='/css/findid.css'/>" rel="stylesheet" type="text/css">
      <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	  <script src="<c:url value='/js/findId.js'/>"></script>
  </head>
<body>

	<!-- TOP -->

	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true" />

	<section>
		<div class="findid-form">
			<form id="findidForm" name="findidForm">
				<h2 class="title_id">아이디 찾기</h2>
				<h4 id="id_value" class="id_notice"></h4>
					<input type="text" id="memName" name="memName" class="memName"
						placeholder="회원가입한 이름을 입력하세요" required> <input type="text"
						id="memEmail" name="memEmail" class="memEmail"
						placeholder="회원가입한 이메일을 입력하세요" required>
					<button class="find_btn">찾기</button>
					<div class="findbox">
						<a href="<c:url value='/findpw'/>" style="font-size: 14px;"
							class="find-a">비밀번호 찾기</a>
					</div>
			</form>
		</div>
	</section>

	<!-- -->

</body>
</html>