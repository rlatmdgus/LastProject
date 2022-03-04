/**
 * 
 */
var themeObj = {
	searchBgColor: "#28CC71", //검색창 배경색
	queryTextColor: "#FFFFFF", //검색창 글자색
	outlineColor: "#28CC71" //테두리
};

$(document).ready(function() {

	$('#searchZip').on('click', function() {
		new daum.Postcode({theme: themeObj,
			oncomplete: function(data) {
				var address1 = '';

				//var dong_building = '';

				if (data.userSelectedType == 'R') {
					address1 = data.roadAddress + "(" + data.bname + data.buildingName + ")";
				} else {
					address1 = data.jibunAddress;
				}

				document.getElementById('zipcode').value = data.zonecode;
				document.getElementById('address1').value = address1;

				var address2 = document.getElementById('address2');
				address2.value = "";
				address2.focus();
			}
		}).open();

	});
});