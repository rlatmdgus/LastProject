<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈그라운드 작가 등록</title>
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
    <link rel="stylesheet" href="/css/authorinsert.css">
    <script src="/js/jquery-3.6.0.min.js"></script>
    <script src="/js/authorinsert.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true" />
	<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true" />
	<div class="authorInsert-wrap">
		<h1 class="author-insert-title">작가 등록 신청</h1>
		<form action="/insertAuthor" method="post"
			enctype="multipart/form-data" class="authorInsert-form">
			<!-- 할 일
            1.

        -->
<%-- 			<input type="hidden" name="authorId" value="${sessionScope.sid}" /> --%>
<!-- 			<input type="hidden" name="authorHp" value="010-1234-5678" /> -->
<!-- 			<input type="hidden" name="authorEmail" value="tmdgus123@naver.com" />  -->
<!-- 			<input type="hidden" name="authorAddress" value="관악구 어딘가" /> -->

			<table>
				<tr>
					<td bgcolor="#E6F0E5">작가 이름</td>
					<td align="center"><input name="authorName"
						value="${sessionScope.sname}" readonly /></td>
				</tr>
				<tr>
					<td bgcolor="#E6F0E5">작가 닉네임</td>
					<td align="center"><input name="authorNick" type="text" /></td>
				</tr>
				<tr>
					<td bgcolor="#E6F0E5" width="100">작품 종류</td>
					<td align="center"><select name="authorClass">
							<option value="food">음식</option>
							<option value="goods">물품</option>
					</select></td>
				</tr>
				<tr>
					<td bgcolor="#E6F0E5">작가 소개</td>
					<td align="center"><textarea name="authorDescript" cols="40"
							rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="#E6F0E5">첨부파일</td>
					<td align="center">
					<input type="file" name="authorImage" class="addbtn" value="첨부파일" /></td>
				</tr>
			</table>

			<div class="author-insert-bottom">
				<button class="author-insert-update" value="글 올리기">글올리기</button>

			</div>
		</form>


	</div>
</body>
</html>