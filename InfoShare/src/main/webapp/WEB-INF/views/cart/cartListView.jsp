<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈그라운드 장바구니</title>
    <link href="<c:url value="/css/boardListView.css"/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/css/cartlist.css">
    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/cartListView.js'/>"></script>	
		 <script type="text/javascript" src="<c:url value='/js/boardListView.js'/>"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
<div class="cart-wrap">
    <h1>장바구니</h1>
    <hr>
    <form action="<c:url value='/'/>" method="post">
    <div class="cart-product">
    	<table id="product" >
    	<tr id="cart-header">
    	<td><input type="checkbox" id="allCheck" name="allCheck">전체 선택</td>
    	<td>이미지</td><td>상품명</td><td>가격</td><td>수량</td><td>배송비</td><td>합계</td>
    	<c:forEach items="${ clocartList}" var="cart">
    	<tr><td><input type="checkbox" class="chkDelete" name="chkDelete" data-cartNo=${cart.cartNo }></td>
    	<td><img class="prdImg" src="${cart.cloPrdImg}"></td>
    	<td>${cart.cloPrdName }</td>
    	<td>${cart.cloPrdPrice }</td>
    	<td>${cart.cartQty }</td>
    	<td>${cart.cloPrdCost }</td>
    	<td>${cart.cartQty*cart.cloPrdPrice+cart.cloPrdCost}</td>
    	<c:set var="cloamount" value="${cart.cartQty*cart.cloPrdPrice}"></c:set>
    	<c:set var="closum" value="${cloamount+closum+cart.cloPrdCost }"></c:set>
    	</tr>
    	</c:forEach>
    	<c:forEach items="${ fdcartList}" var="fd">
    	<tr><td><input type="checkbox" class="chkDelete" name="chkDelete" data-cartNo=${fd.cartNo }></td>
    	<td><img class="prdImg"  src="${fd.fdPrdImg}"></td>
    	<td>${fd.fdPrdName }</td>
    	<td>${fd.fdPrdPrice }</td>
    	<td>${fd.cartQty }</td>
    	<td>${fd.fdPrdCost }</td>
    	<td>${fd.cartQty*fd.fdPrdPrice+fd.fdPrdCost}</td>
    	</tr>
    	<c:set var="fdamount" value="${fd.cartQty*fd.fdPrdPrice}"></c:set>
    	<c:set var="fdsum" value="${fdamount+fdsum+fd.fdPrdCost }"></c:set>
    	</c:forEach>
    	</table>
    	<c:set var="amount" value="${fdsum+closum }"></c:set>
    </div>
    <div class="cart-bottom">
    
    <input type="hidden" id="memId" name="memId" value="${sessionScope.sid }">
    </div>
    <hr>
    <div id="delete">
    <input type="button" class="cart-del" value="선택상품삭제" id="deleteProduct" name="deletProduct">
    <input type="button" class="cart-del" value="장바구니비우기" id="deleteCart" name="deletCart">
    </div>
    <div class="amount">
    결제 예정 금액 : <fmt:formatNumber value="${amount}" pattern="#,### 원" />  
    </div>
    <div class="cart-order">
    
    <input type="submit" class="cart-prorder" value="상품 주문">
    </div>
     </form>
</div>
</body>
</html>