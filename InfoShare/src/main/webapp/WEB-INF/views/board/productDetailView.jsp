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
				var total = qty * ${read.fdPrdPrice}+${read.fdPrdCost };
								
				cartQty.value = qty; // 변경된 주문수량 출력 
				// 계산액 출력
				amount.innerHTML = total.toLocaleString()+"원";
			}
		
		</script>
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
				<form method="post" action="<c:url value='/insertFoodCart'/>">
					<table>
					<tr><td>작가 </td><td>${read.authorId }</td></tr>
					<tr><td>평점</td><td> ${read.fdPrdGrade }</td></tr>
					<tr><td>용량</td><td> ${read.fdPrdWeight }</td></tr>
					<tr><td>가격</td><td><fmt:formatNumber value="${read.fdPrdPrice}" pattern="#,###원"/></td></tr>
					<tr><td>배송비</td><td><fmt:formatNumber value="${read.fdPrdCost }" pattern="#,###원"/></td></tr>
					<tr><td>설명</td><td>${read.fdPrdDescript }</td>
					<tr><td><input type="button" value="-" onClick="qtyChange(-1)" class="qty">
										<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
										<input type="button" value="+" onClick="qtyChange(1)" class="qty">
								</td>
						<td><span id="amount"><fmt:formatNumber value="${read.fdPrdPrice+read.fdPrdCost}" pattern="#,###원"/></span></td>
								</tr>
								
					</table>
					<input type="hidden" id="fdPrdWeight" name="fdPrdWeight" value="${read.fdPrdWeight }">
					<input type="hidden" id="fdPrdNo" name="fdPrdNo" value="${read.fdPrdNo }">
					<input type="submit" value="장바구니" class="b">
					<input type="button" value="주문하기" class="b">
					</form>
				</div>
				
				
			</section>
		</div>
	</body>
</html>