<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k04agvr2et&submodules=geocoder"></script>
		
	</head>
	<body>
		<div id="map" style="width:500px;height:500px;"></div>
		<script src="<c:url value='/js/AreaCRET.js'/>"></script>
	</body>
</html>