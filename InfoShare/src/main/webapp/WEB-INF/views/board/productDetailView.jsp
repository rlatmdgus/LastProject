<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>상품 상세 조회</title>
	   <link rel="stylesheet" href="<c:url value="/css/productDetailView.css"/>">
	  <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	  <script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
			<h3>${read.fdPrdName }</h3>
			<section id="itemBox">
				<div id="imageBox">
					<%-- <img  src="<c:url value='${read.fdPrdImg }'/>"> --%>
					<img  src="${read.fdPrdImg }">
				</div>	
				<div id="prdBox">
					<table>
					<tr><td>작가 </td><td>${read.authorId }</td></tr>
					<tr><td>평점</td><td> ${read.fdPrdGrade }</td></tr>
					<tr><td>가격</td><td><fmt:formatNumber value="${read.fdPrdPrice}" pattern="#,###원"/></td></tr>
					<tr><td>배송비</td><td><fmt:formatNumber value="${read.fdPrdCost }" pattern="#,###원"/></td></tr>
					</table>
					<button class="b">장바구니</button>
					<button class="b">주문하기</button>
				</div>
				
				
			</section>
			<section id="textBox">
			<div id="descriptBox">
					${read.fdPrdDescript }
				</div>
			</section>
		</div>
	</body>
</html>