<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index 페이지</title>
	</head>
	<body>
		<!-- TOP -->
		
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true"/>
		
		<section>
			<div class="slideshow-container">
				<div class="mySlides fade">
					<img class="main_slideImg" src="imgs/slide_img_01.jpg">
					<div class="text">One</div>
				</div>
				<div class="mySlides fade">
					<img class="main_slideImg" src="imgs/slide_img_02.jpg">
					<div class="text">Two</div>
				</div>
				<div class="mySlides fade">
					<img class="main_slideImg" src="imgs/slide_img_03.jpg">
					<div class="text">Three</div>
				</div>
				<div class="mySlides fade">
					<img class="main_slideImg" src="imgs/slide_img_04.jpg">
					<div class="text">Four</div>
				</div>
				<div class="mySlides fade">
					<img class="main_slideImg" src="imgs/slide_img_05.jpg">
					<div class="text">Five</div>
				</div>
				<a class="prev" onclick="moveSlides(-1)">❮</a>
				<a class="next"onclick="moveSlides(1)">❯</a>
			</div>
				
			<br>
				
			<div class="dotbox" style="text-align: center">
				<span class="dot" onclick="currentSlide(0)"></span> 
				<span class="dot" onclick="currentSlide(1)"></span>
				<span class="dot" onclick="currentSlide(2)"></span>
				<span class="dot" onclick="currentSlide(3)"></span>
				<span class="dot" onclick="currentSlide(4)"></span>
			</div>

			
		</section>
		
		<section>
			<div id="MenuBox">
				<div id="MainTitle"><a>인기작품</a></div>
			</div>
			<form class="boardListbox" id="boardListView" method="post" action="">
	                <c:forEach items="${FPlist}" var="FPlist">
	                    <div class="boardbox"
	                         onclick="location.href='<c:url value="readProduct?FdPrdNo=${FPlist.fdPrdNo}"/>'">
	                        <div class="boardindex">
	                            <div class="titleindex">
	                                <img src="${FPlist.fdPrdImg}" onerror="this.src='<c:url value="/image/noimage.jpg"/>'" style="width: 252px; height: 252px;">
	                            </div>
	                            <div class="product-title-Bottom">
	                                <span class="titlebottom" type="text" name="boardHit">${FPlist.fdPrdName}</span>
	                                <span class="titlebottom" type="text" name="boardHit">${FPlist.fdPrdPrice}</span>
	                                <span class="titlebottom" type="text" name="boardHit">${FPlist.fdPrdGrade}</span>
	                            </div>
	                        </div>
	                    </div>
	                </c:forEach>
            	</form>
		</section>
		<section>
			<div id="MenuBox">
				<div id="MainTitle"><a>인기 게시물</a></div>
			</div>
			<form class="boardListbox" id="boardListView" method="post" action="">
	                <c:forEach items="${list}" var="blist">
	                    <div class="boardbox"
	                         onclick="location.href='<c:url value="/readView?boardNo=${blist.boardNo}&ctgId=${blist.ctgId}&deCtgId=${blist.deCtgId}"/>'">
	                        <div class="boardindex">
	                            <div class="titleindex">
	                            	<span class="board_title" type="text" name="boardTitle">${blist.boardTitle}</span>
	                                <img src="${blist.boardImage}" onerror="this.src='<c:url value="/image/noimage.jpg"/>'" style="width: 252px; height: 252px;">
	                            </div>
	                            <div class="posttitleBottom">
	                                <span class="titlebottom" type="text" name="boardHit">조회수 ${blist.boardHit}</span>
	                            </div>
	                        </div>
	                    </div>
	                </c:forEach>
            	</form>
		</section>
		
		<!-- BOTTOM -->
		
		
	</body>
</html>