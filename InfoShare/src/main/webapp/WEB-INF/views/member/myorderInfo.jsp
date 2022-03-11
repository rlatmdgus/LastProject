<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>내 주문 정보</title>
	  <link rel="stylesheet" href="<c:url value='/css/myorderInfo.css'/> ">
	</head>
	<body>
		<div id="wrap">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>
			<table id="orderInfo">
			<tr><th>주문번호</th><th>주문자</th><th>주문일시</th><th>주문자번호</th><th>받는이</th><th>받을 장소</th>
			<th>메송메세지</th><th>결제방법</th></tr>
			<c:forEach items="${ordInfoList }" var="my">
			<tr><td class="info">${my.ordNo }</td><td class="info">${my.memId }</td><td class="info"><fmt:formatDate pattern = "yyyy/MM/dd" value="${my.ordDate}"/></td>
			<td class="info">${my.ordRcvPhone }</td><td class="info">${my.ordReceiver}</td>
			<td class="info">${my.ordRcvAddress1 } ${my.ordRcvAddress2 }</td>
			<td class="info">${my.ordRcvMsg }</td><td>${my.ordPay }</td></tr>
			<c:forEach items="${ordProductList }" var="prd">
			<tr>
			<c:if test="${ my.ordNo == prd.ordNo}">
			<c:if test="${not empty prd.cloPrdNo }">
			<c:forEach items="${cloAlllist }" var="clo">
			<c:if test="${prd.cloPrdNo==clo.cloPrdNo }"><td colspan="3">${clo.cloPrdName }</td>
			<td colspan="3"><img  src="${clo.cloPrdImg }" class="prd"></td>
			</c:if>
			</c:forEach>
			</c:if>
			<c:if test="${not empty prd.fdPrdNo }">
			<c:forEach items="${Alllist }" var="fd">
			<c:if test="${prd.fdPrdNo==fd.fdPrdNo }">
			<td colspan="3">${fd.fdPrdName }</td>
			<td colspan="3"><img src="${fd.fdPrdImg }" class="prd"></td>
			</c:if>
			</c:forEach></c:if>
			<td>${prd.cartPrdOption }</td>
			<td>수량 : ${prd.ordQty }</td>
			</c:if>
			</tr>
			</c:forEach>
			
			</c:forEach>
			
			
			
			</table>
		</div>
	</body>
</html>