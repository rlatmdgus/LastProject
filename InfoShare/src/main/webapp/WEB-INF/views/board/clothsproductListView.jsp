<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html>
	<head>
	  <meta charset="UTF-8">
	  <title>상품 조회 </title>
	  <link rel="stylesheet" href="<c:url value="/css/foodproductListView.css"/>">
	  <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	  <script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	  <script type="text/javascript" src="<c:url value='/js/clothsproductListView.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
			<section id="content_box">
			<c:if test="${ctgId == '1'}">
			<h3>서울</h3>
			</c:if>
			<c:if test="${ctgId == '2'}">
			<h3>부산</h3>
			</c:if>
			<c:if test="${ctgId == '3'}">
			<h3>대구</h3>
			</c:if>
			<c:if test="${ctgId == '4'}">
			<h3>인천</h3>
			</c:if>
			<c:if test="${ctgId == '5'}">
			<h3>광주</h3>
			</c:if>
			<c:if test="${ctgId == '6'}">
			<h3>대전</h3>
			</c:if>
			<c:if test="${ctgId == '7'}">
			<h3>울산</h3>
			</c:if>
			<c:if test="${ctgId == '8'}">
			<h3>세종</h3>
			</c:if>
			<c:if test="${ctgId == '9'}">
			<h3>경기</h3>
			</c:if>
			<c:if test="${ctgId == '10'}">
			<h3>강원</h3>
			</c:if>
			<c:if test="${ctgId == '11'}">
			<h3>충북</h3>
			</c:if>
			<c:if test="${ctgId == '12'}">
			<h3>충남</h3>
			</c:if>
			<c:if test="${ctgId == '13'}">
			<h3>경북</h3>
			</c:if>
			<c:if test="${ctgId == '14'}">
			<h3>경남</h3>
			</c:if>
			<c:if test="${ctgId == '15'}">
			<h3>전북</h3>
			</c:if>
			<c:if test="${ctgId == '16'}">
			<h3>전남</h3>
			</c:if>
			<c:if test="${ctgId == '17'}">
			<h3>제주</h3>
			</c:if>
				<h4>의류</h4>
				<div class="box">
			<c:forEach items="${list }" var="clo">
				<ul class="item">										
					<li><a href="<c:url value='/readCloProduct?cloPrdNo=${clo.cloPrdNo }'/> " ><img class="move" src="<c:url value='${clo.cloPrdImg }'  />" onerror="this.src='<c:url value="/image/noimage.jpg"/>'"></a></li>
					<li class="a">${clo.cloPrdName }</li>
					<li class="b">${clo.cloPrdPrice }</li>
					<li class="c">${clo.cloPrdDescript }</li>
					<li class="d">${clo.cloPrdGrade }/5</li>
				</ul>
				<input type="hidden" value="${clo.cloPrdNo }" id="cloPrdNo" name="cloPrdNo">
					</c:forEach>
				</div>
				<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "Active":"" }"><a href="${num }">${num}</a></li>
					</c:forEach>
					
				  <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn NEXT"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>  
				</ul>
				</div>
			</div>
			<form method="get" id="moveForm">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="ctgId" id="ctgId" value="${ctgId }">
		
		</form>
			</section>
		
		</div>
	</body>
</html>