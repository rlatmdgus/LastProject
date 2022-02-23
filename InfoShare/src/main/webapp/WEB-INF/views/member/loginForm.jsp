<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="UTF-8">
      <title>로그인 창</title>
      <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">
      <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	  <script src="<c:url value='/js/login.js'/>"></script>
  </head>
<body class="lg-body">

  <!-- TOP -->
  
  <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>

  <section>
    <div class="login-form">
        <form id="loginForm" name="loginForm">
          <h2 class="title">로그인</h2>
          <input type="text" id="memId" name="memId" class="text-field">
          <input type="password" id="memPw" name="memPw" class="text-field">
          <input type="submit" value="로그인" class="bt">
        </form>
          <div class="links">
            아직 회원이 아니신가요?&emsp;<a href="<c:url value='/joinForm'/>" style="font-size: 14px;">회원가입</a>
          </div>
          
      </div>
  </section>

  

  <!-- -->

</body>
</html>