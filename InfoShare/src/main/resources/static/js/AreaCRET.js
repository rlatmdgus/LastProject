/**
 * 
 */
// 현재 위치로 이동 이미지
var curtBtn = '<img src="/imgs/now_local.png" alt="현재위치로 이동">';

// 현재 위치 위도, 경도 좌표 객체를 담을 변수
var curtLoca = "";

// 멀티캠퍼스 위/경도 좌표 객체
var MCLoca = new naver.maps.LatLng(37.5058978, 127.05489490000001);

// Map 초기화
var map = new naver.maps.Map('map', {
	center: MCLoca,    // X, Y 값 설정
	scaleControl: false,      // 우측 하단 scale 표시
	mapDataControl: false,    // 좌측 하단 @ NAVER Corp 표시
	zoom: 17                  // 지도 줌 레벨
});


// Map 사용자 정의 컨트롤 이벤트 추가 (현재위치로 이동 버튼을 추가)
naver.maps.Event.once(map, 'init_stylemap', function() {
	/*
		현재 위치로 이동 img tag 변수를 CustomControl에 설정
		표시될 위치는 맵의 우측 상단
	*/
	var cstmCtrl = new naver.maps.CustomControl(curtBtn, {
		position: naver.maps.Position.RIGHT_TOP
	});

	// CustomControl를 Map에 설정
	cstmCtrl.setMap(map);

	// 클릭 이벤트 리스너 설정
	naver.maps.Event.addDOMListener(cstmCtrl.getElement(), 'click', function() {
		if (curtLoca) {
			// 얻은 좌표를 지도의 중심으로 설정
			map.setCenter(curtLoca);

			// 지도의 줌 레벨을 변경
			map.setZoom(10);
		}
		else {
			alert("위치 액세스가 거부되었습니다.\n사용하시려면 위치 액세스를 허용해주세요.");
		}
	});
});

//var nowmarker = "";
//var pcy = "";
//var pcx = "";
//
//// getCurrentPosition 성공 콜백 함수
//var onSuccessGeolocation = function(position) {
//	// 현재위치
//	pcy = position.coords.latitude;
//	pcx = position.coords.longitude;
//	curtLoca = new naver.maps.LatLng(pcy, pcx);//
//	console.log(pcy, pcx);
//	// 얻은 좌표를 지도의 중심으로 설정합니다.
//	map.setCenter(curtLoca);
//
//	// 지도의 줌 레벨을 변경합니다.
//	map.setZoom(10);
//
//	// 현재 위치에 마커 표시
//	nowmarker = new naver.maps.Marker({
//		position: curtLoca,
//		map: map,
//		icon: { url: "/imgs/maker.png"}
//	});
//
//	var nowmarkerClick = function() {
//		return function(e) {
//			//alert("현재 위치 " + pcy + "," + pcx);
//			const result = searchCoordinateToAddress(e.coord);
//			alert("현재 위치: "+result);
//		}
//	}
//	naver.maps.Event.addListener(nowmarker, 'click', nowmarkerClick());
//	
//}
//
//// getCurrentPosition 에러 콜백 함수
//var onErrorGeolocation = function() {
//
//	var agent = navigator.userAgent.toLowerCase(), name = navigator.appName;
//
//	if (name === 'Microsoft Internet Explorer' || agent.indexOf('trident') > -1 || agent.indexOf('edge/') > -1) {
//		alert("지원하지 않는 브라우져입니다.");
//	}
//	else {
//		console.log("현재 위치를 가져오는데 에러가 발생하였습니다.");
//	}
//}
//
//// Geolocation HTML5 API를 통해 얻은 현재 위치 좌표로 지도를 이동합니다.
//if (navigator.geolocation) {
//	/**
//	 * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
//	 * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
//	 * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
//	 */
//	navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
//}
//else {
//	console.log("Geolocation Not supported Required");
//}
//
var infoWindow = new naver.maps.InfoWindow({
  anchorSkew: true
});

map.setCursor('pointer');

var area = "";

function searchCoordinateToAddress(latlng) {

  infoWindow.close();

  naver.maps.Service.reverseGeocode({
    coords: latlng,
    orders: [
      naver.maps.Service.OrderType.ADDR,
      naver.maps.Service.OrderType.ROAD_ADDR
    ].join(',')
  }, function(status, response) {
    if (status === naver.maps.Service.Status.ERROR) {
      if (!latlng) {
        return alert('ReverseGeocode Error, Please check latlng');
      }
      if (latlng.toString) {
        return alert('ReverseGeocode Error, latlng:' + latlng.toString());
      }
      if (latlng.x && latlng.y) {
        return alert('ReverseGeocode Error, x:' + latlng.x + ', y:' + latlng.y);
      }
      return alert('ReverseGeocode Error, Please check latlng');
    }

    var address = response.v2.address;
    console.log(address);
    
//    if (address.jibunAddress !== '' || address.roadAddress !== ''){
//		if(address.jibunAddress.substr(0,4) == '경상북도' || address.jibunAddress.substr(0,4) == '경상남도' 
//		|| address.jibunAddress.substr(0,4) == '전라북도' || address.jibunAddress.substr(0,4) == '전라남도'
//		|| address.jibunAddress.substr(0,4) == '충청북도' || address.jibunAddress.substr(0,4) == '충청남도'){
//			area = address.jibunAddress.substr(0,1)+address.jibunAddress.substr(2,1);
//		}
//		else{
//			area = address.jibunAddress.substr(0,2);
//		}
//	}
	if(address.roadAddress == ''){
		area = address.jibunAddress;
	}
	else{
		area = address.roadAddress;
	}
  });
  return area;
}

$(document).ready(function() {
	
	var lat = "";
	var long = "";
	
	$.getJSON('http://www.geoplugin.net/json.gp', function(data) {
		console.log(JSON.stringify(data, null, 2));
		
		lat = data.geoplugin_latitude;
		long = data.geoplugin_longitude;
		console.log("위도, 경도 얻는 부분: "+lat + ", " + long);
		Position();
	});
	
	function Position(){
		console.log("현재 위치 " + lat + ", " + long);
	
		curtLoca = new naver.maps.LatLng(lat, long);
		console.log(curtLoca);
		map.setCenter(curtLoca);
	
		// 지도의 줌 레벨을 변경합니다.
		map.setZoom(10);
	
		// 현재 위치에 마커 표시
		nowmarker = new naver.maps.Marker({
			position: curtLoca,
			map: map,
			icon: { url: "/imgs/maker.png" }
		});
		
		var nowmarkerClick = function() {
			return function(e) {
				//alert("현재 위치 " + pcy + "," + pcx);
				const result = searchCoordinateToAddress(curtLoca);
				alert("현재 위치: " + result);
			}
		}
	
		naver.maps.Event.addListener(nowmarker, 'click', nowmarkerClick());
	}
		

	$('#locCheck').on('click', function() {
		self.close();
	});
});