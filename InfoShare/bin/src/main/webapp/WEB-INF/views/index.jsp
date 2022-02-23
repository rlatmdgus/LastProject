<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

			<div id="MenuBox">
				<div id="MainTitle">
					<a>나만 불편해?</a>
				</div>
				<div id="AreaSel"><a>지역 선택</a></div>
				<div id="AreaBox">
					<input type="button" value="서울" id="AreaBt">
					<input type="button" value="부산" id="AreaBt">
					<input type="button" value="대구" id="AreaBt">
					<input type="button" value="인천" id="AreaBt">
					<input type="button" value="광주" id="AreaBt">
					<input type="button" value="대전" id="AreaBt">
					<input type="button" value="울산" id="AreaBt">
					<input type="button" value="세종" id="AreaBt">
					<input type="button" value="경기도" id="AreaBt">
					<input type="button" value="강원도" id="AreaBt">
					<input type="button" value="충북" id="AreaBt">
					<input type="button" value="충남" id="AreaBt">
					<input type="button" value="경북" id="AreaBt">
					<input type="button" value="경남" id="AreaBt">
					<input type="button" value="전북" id="AreaBt">
					<input type="button" value="전남" id="AreaBt">
					<input type="button" value="제주도" id="AreaBt">
				</div>
			</div>
		</section>
		
		<!-- BOTTOM -->
		
		
	</body>
</html>