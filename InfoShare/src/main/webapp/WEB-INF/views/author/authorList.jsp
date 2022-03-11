<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>홈그라운드 작가 요청</title>
<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
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

    <div class="authorlist-wrap">
        <span>글 번호</span>
        <span>작성자</span>
        <span>작성시간</span>
    </div>

    <div class="author-reg-bottom">
        <a class="author-reg" href="/authorInsert">작가 등록하기</a>
    </div>

</body>
</html>