<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈그라운드 장바구니</title>
    <link rel="stylesheet" href="/css/cartlist.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
<div class="cart-wrap">
    <h1>장바구니</h1>
    <div class="cart-header">
        <div class="check">선택</div>
        <div class="img">이미지</div>
        <div class="pdname">상품명</div>
        <div class="price">가격</div>
        <div class="num">수량</div>
        <div class="sum">합계</div>
        <div class="del">삭제</div>
    </div>
    <hr>
    <div class="cart-bottom">
    <a class="cart-del" href="#">선택상품삭제</a>&nbsp;&nbsp;&nbsp;
    <a class="cart-del" href="#">장바구니비우기</a>
    </div>
    <hr>
    <div class="cart-order">
    <a class="cart-prorder" href="#">선택한 상품 주문</a>
    </div>
</div>
</body>
</html>