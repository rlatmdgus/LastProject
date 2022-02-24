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
	  <script type="text/javascript" src="<c:url value='/js/ProductListView.js'/>"></script>
	  <script type="text/javascript" src="<c:url value='/js/foodproductListView.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		
			<section id="content_box">
				<h3>음식</h3>
				<div class="box">
			<c:forEach items="${list }" var="fd">
				<ul class="item">
					<li><img class="move" src="<c:url value='${fd.fdPrdImg}'/>"></li>
					<li class="a">${fd.fdPrdName }</li>
					<li class="b">${fd.fdPrdPrice }</li>
					<li class="c">${fd.fdPrdDescript }</li>
					<li class="d">${fd.fdPrdGrade }/5</li>
				</ul>
				<input type="hidden" value="${fd.fdPrdNo }" id="fdPrdNo">
					</c:forEach>
				</div>
				<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num }">${num}</a></li>
					</c:forEach>
					
				  <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>  
				</ul>
				</div>
			</div>
			<form method="get" id="moveForm">
			<input type="hidden" name="pageNum" id="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		
		</form>
			</section>
		
		</div>
	</body>
</html>