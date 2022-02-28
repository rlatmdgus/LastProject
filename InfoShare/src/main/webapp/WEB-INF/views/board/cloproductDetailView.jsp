<%@page import="java.util.ArrayList"%>
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
	  <script type="text/javascript">
			var qty = 1;
			
			// '+'. '-' 버튼 클릭 시 주문수량 증감 처리
			function qtyChange(num){
				qty = qty + num;
				if(qty < 1) qty = 1; // 주문수량이 0이하가 되지 않도록
				calAmount();
			}
			
			// 주문액 계산			
			function calAmount(){
				var cartQty = document.getElementById('cartQty'); // 주문수량 값 읽어오기
				var amount = document.getElementById('amount'); // 주문액 출력
				
				//주문액 계산 = 주문수량 * 상품가격
				var total = qty * ${read.cloPrdPrice}+${read.cloPrdCost };
								
				cartQty.value = qty; // 변경된 주문수량 출력 
				// 계산액 출력
				amount.innerHTML = total.toLocaleString()+"원";
			}
		
		</script>
	</head>
	<body>
		<div id="wrap">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
			<h3>${read.cloPrdName }</h3>
			<section id="itemBox">
				<div id="imageBox">
					<%-- <img  src="<c:url value='${read.fdPrdImg }'/>"> --%>
					<img  src="${read.cloPrdImg }">
					<input type="hidden" id="cloPrdSize" name="cloPrdSize" value="${read.cloPrdSize }">

				</div>	
				<div id="prdBox">
				<form method="post" action="<c:url value='/insertCart'/>">
					<table>
					<tr><td>작가 </td><td>${read.authorId }</td></tr>
					<tr><td>평점</td><td> ${read.cloPrdGrade }</td></tr>
					<tr><td>사이즈</td><td><select>
					<c:forEach items="${list }" var="li">
					<option>${li }</option>
					</c:forEach>
					</select> </td></tr>
					<tr><td>색상</td><td><select>
					<c:forEach items="${colorlist }" var="coli">
					<option>${coli }</option>
					</c:forEach>
					</select> </td></tr>
					<tr><td>가격</td><td><fmt:formatNumber value="${read.cloPrdPrice}" pattern="#,###원"/></td></tr>
					<tr><td>배송비</td><td><fmt:formatNumber value="${read.cloPrdCost }" pattern="#,###원"/></td></tr>
					<tr><td><input type="button" value="-" onClick="qtyChange(-1)">
										<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
										<input type="button" value="+" onClick="qtyChange(1)"> 개
								</td>
						<td><span id="amount"><fmt:formatNumber value="${read.cloPrdPrice+read.cloPrdCost}" pattern="#,###원"/></span></td>
								</tr>
					</table>
					<input type="hidden" id="cloPrdNo" name="cloPrdNo" value="${read.cloPrdNo }">
					<input type="submit" value="장바구니" class="b">
					<input type="button" value="주문하기" class="b">
					</form>
				</div>
				
				
			</section>
			<section id="textBox">
			<div id="descriptBox">
					${read.cloPrdDescript }
				</div>
			</section>
		</div>
	</body>
</html>