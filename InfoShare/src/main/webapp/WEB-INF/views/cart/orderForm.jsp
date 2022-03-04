<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문서 작성</title>
		<link href="<c:url value='/css/orderForm.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<!-- 다음 우편번호 API 사용하기 -->
		<script src="<c:url value='http://dmaps.daum.net/map_js_init/postcode.v2.js'/>"></script>
		<script type="text/javascript">
			function searchZipcode(){
				new daum.Postcode({
				    oncomplete: function(data) {
				        //팝업 창에서 검색 결과 항목을 클릭했을 때 실행할 코드 작성
				        var address1 = '';
				        //법정명과 건물명 : (~동, ~건물) (~동, ~아파트)
				        var dong_building = ''; 
				        
				        //도로명 주소인 경우
				        if(data.userSelectedType == 'R'){
				        	
				        	address1 = data.roadAddress + " (" + data.bname + ", " + data.buildingName + ")";
				        	
				        } else { //지번 주소인 경우
				        	address1 = data.jibunAddress;			        	
				        }				        
				        
				    	document.getElementById('ordRcvZipcode').value = data.zonecode;
				    	document.getElementById('ordRcvAddress1').value = address1;
				    	//상세주소 입력하도록 출력된 값 삭제하고 포커스 주기
				    	var address2 =  document.getElementById('ordRcvAddress2');
				    	address2.value = '';
				    	address2.focus();
				    }
				}).open();
			}
		</script>
		
	</head>
	<body>
		<div id="wrap">
			<!--  TOP  -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true" /> 
			
			<section>
				<br>
				<form method="post"  action="<c:url value="/orderComplete"/>">
					<h3>주문자 정보</h3>
					<table border="1" width="700">
						<tr><th>주문자</th>
								<td width="200">${memDto.memName}
															<input type="hidden" name="memId" value="${memDto.memId}"></td>
						<th>연락처</th>
								<td>${hp1} - ${hp2} - ${hp3}</td></tr>
					</table>
					<br>
					<h3>수령인 정보</h3>
					<table border="1" width="700">
						<tr><th>받는분</th><td width="200"><input type="text" name="ordReceiver" value="${memDto.memName}" ></td>
						<th>연락처</th>
								<td><input type="text" name="hp1" size="3" value="${hp1}"> - 
										<input type="text" name="hp2" size="4"  value="${hp2}"> - 
										<input type="text" name="hp3" size="4"  value="${hp3}"></td></tr>
						<tr><th>배송지 주소</th>
								<td colspan="3">
										<input type="text" id="ordRcvZipcode" name="ordRcvZipcode"   size="5"  value="" > 
										<input type="button" id="searchZip" name="searchZip" value="우편번호찾기" readonly 
													onclick="searchZipcode()"><br>
										<input type="text"  id="ordRcvAddress1"  name="ordRcvAddress1" size="70"  
													value="${memDto.memAddress}"  readonly><br> 
										<input type="text" id="ordRcvAddress2"  name="ordRcvAddress2" size="70" 
													  placeholder="상세 주소 입력">
								</td></tr>		
						<tr><th>배송메시지</th>
								<td colspan="3"><select name="ordRcvMsg">
												<option value="배송전 전화주세요">배송전 전화주세요
												<option value="부재중 전화주세요">부재중 전화주세요
												<option value="부재중 문앞에 놓고 가세요">부재중 문앞에 놓고 가세요
												</select></td></tr>				
					</table><br>				
					
					<h3>주문 상품 목록</h3>
					<table id="cartTable" border="1" width="700">
						<tr><th>상품번호</th><th>사진</th><th>상품명</th><th>가격</th>
							    <th>주문수량 </th><th>구매예정금액</th></tr>				 
				   		<c:forEach items="${clocartList}" var="clo">   
							 <tr>  
							 	  <td>${clo.cloPrdNo}</td>     					      
							      <td><img  src="<c:url value='${clo.cloPrdImg }'/>" width="50px" height="30px"></td>					      	
							      <td>${clo.cloPrdName}</td>	      
							      <td align="right"><fmt:formatNumber value="${clo.cloPrdPrice}" pattern="#,###" /> 원 </td> 						      			
							      <td>		
							      			${clo.cartQty }
											<input type="hidden" name="cartQty" value="${clo.cartQty}" >
							      			<input type="hidden" name="prdNo" value="${clo.cloPrdNo}">
							      			<input type="hidden" name="prdPrice" value="${clo.cloPrdPrice}">
							      			
								  </td>		
								  <td  align="right"> <span class="amount">
								  				<c:set var="amount" value="${clo.cloPrdPrice * clo.cartQty+clo.cloPrdCost }" />
								  				<c:set var="sum" value="${sum + amount }" />
												<fmt:formatNumber value="${amount}" pattern="#,###" />
										    </span> 원 </td>	
								  </tr>
								  </c:forEach>
								  <c:forEach items="${fdcartList }" var="fd">
								  <tr>
								  <td>${fd.fdPrdNo}</td>     					      
							      <td><img  src="<c:url value='${fd.fdPrdImg }'/>" width="50px" height="30px"></td>					      	
							      <td>${fd.fdPrdName}</td>	      
							      <td align="right"><fmt:formatNumber value="${fd.fdPrdPrice}" pattern="#,###" /> 원 </td> 						      			
							      <td>		${fd.cartQty}
											<input type="hidden" name="cartQty" value="${fd.cartQty}" size="1">
							      			<input type="hidden" name="prdNo" value="${fd.fdPrdNo}">
							      			<input type="hidden" name="prdPrice" value="${fd.fdPrdPrice}">
							      			
								  </td>		
								  <td  align="right"> <span class="amount">
								  				<c:set var="amount" value="${fd.fdPrdPrice * fd.cartQty+fd.fdPrdCost }" />
								  				<c:set var="sum" value="${sum + amount }" />
												<fmt:formatNumber value="${amount}" pattern="#,###" />
										    </span> 원 </td>	
						     </tr>							     						
							</c:forEach>
						<tr><td colspan="5" >총구매예정금액 </td>
								<td align="right"><fmt:formatNumber value="${sum}" pattern="#,###" /> 원<br></td></tr>			
					</table><br>
					
					<h3>결제 정보</h3>
					<table  border="1" width="700">
						<tr><th>결제방법</th>
								<td ><input type="radio" name="ordPay" value="card" checked>신용카드
                                   <input type="radio" name="ordPay" value="bank">실시간계좌이체</td></tr>
					</table><br>
					<div id="btnwrap">
					<input type="submit" value="결제완료" id="submit">
					</div>
				</form>
				</section>
		     
	      </div>		
	</body>
</html>





