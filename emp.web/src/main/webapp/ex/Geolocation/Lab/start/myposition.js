(function() {
    function log(msg){
        var log = document.getElementById("log") || document.querySelector(".log");
        if(log) log.innerHTML += msg + "<br>";
    }
    window.onload = function(){  
        document.getElementById("start").onclick = function(){
            //계속 위치 정보를 받고 싶을 때 watchPosition사용
            //성공 시 success메서드, 실패 시 error메서드 호출
            //maximumAge 위치정보의 유효 시간
            watchId = window.navigator.geolocation.watchPosition(
                success,
                error, 
                { 
                    enableHighAccuracy: document.getElementById("gps").checked,
                    timeout: 5000,
                    maximumAge: 0
                }
            );
        };

        document.getElementById("stop").onclick = function(){
            // TODO 위치 추적을 중지한다.
            //watchPosition으로부터 리턴받은 id값을 인자로 제공함

		};

        // TODO 구글맵을 불러옵니다.
        // LatLng와 Map음 http://maps.google.com/maps/api/js에 정의된 클래스
        // 위도, 경도를 가지고 있는 클래스
        
		 



    }

    // 위치 확인 성공 시
    function success(position){
        // TODO 지도의 중앙을 현재 위치로 세팅한다. 위도, 경도 인자
       
		

        map.setCenter(center);  
        // TODO 마커 표시
        
		 


    }

    // 위치 확인 실패 시
    function error(error){
        log("조회 실패: " + error.code);
    }
})();