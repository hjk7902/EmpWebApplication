(function() {
    function log(msg){
        var log = document.getElementById("log") || document.querySelector(".log");
        if(log) log.innerHTML += msg + "<br>";
    }
    window.onload = function(){  
        document.getElementById("start").onclick = function(){
            //��� ��ġ ������ �ް� ���� �� watchPosition���
            //���� �� success�޼���, ���� �� error�޼��� ȣ��
            //maximumAge ��ġ������ ��ȿ �ð�
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
            // TODO ��ġ ������ �����Ѵ�.
            //watchPosition���κ��� ���Ϲ��� id���� ���ڷ� ������

		};

        // TODO ���۸��� �ҷ��ɴϴ�.
        // LatLng�� Map�� http://maps.google.com/maps/api/js�� ���ǵ� Ŭ����
        // ����, �浵�� ������ �ִ� Ŭ����
        
		 



    }

    // ��ġ Ȯ�� ���� ��
    function success(position){
        // TODO ������ �߾��� ���� ��ġ�� �����Ѵ�. ����, �浵 ����
       
		

        map.setCenter(center);  
        // TODO ��Ŀ ǥ��
        
		 


    }

    // ��ġ Ȯ�� ���� ��
    function error(error){
        log("��ȸ ����: " + error.code);
    }
})();