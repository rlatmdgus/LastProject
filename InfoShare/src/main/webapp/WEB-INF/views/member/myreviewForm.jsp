<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내가 쓴 후기</title>
		<link rel="icon" type="image/png" sizes="96x96" href="/favicon.ico/favicon-96x96.png">
		<link rel="stylesheet" href="<c:url value='/css/review.css'/>">
	  	<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<!-- SIDE -->
		<jsp:include page="/WEB-INF/views/layout/side.jsp" flush="true"/>

	<section class="w">
		<div class="mymenu-box">
			<div class="title-style">
				<h2 class="title-txt">내가 쓴 후기</h2>
				<div class="grid-box">
					<form class="reviewListbox" id="revieListView" method="post" action="">
						<c:forEach items="${list}" var="rlist">
							<div class="reviewbox"
								onclick="location.href='<c:url value="/readReview?revNo=${rlist.revNo}&ctgId=${rlist.ctgId}&deCtgId=${rlist.deCtgId}"/>'">
								<div class="reviewindex">
									<div class="review_titleindex">
										<span class="review_title" type="text" name="review_Title">${rlist.revTitle}</span>
										<img src="${rlist.revImage}"
											style="width: 252px; height: 252px;">
									</div>
									<div class="posttitleBottom">
										<span class="review_date" type="text" name="review_date">
											<fmt:formatDate pattern="yyyy/MM/dd hh:mm:ss" value="${rlist.revDate}" />
										</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>