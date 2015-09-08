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
            //watchPosition�� �־��־��� id���� ���ڷ�
            window.navigator.geolocation.clearWatch(watchId);
        };

        // TODO ���۸��� �ҷ��ɴϴ�.
        // LatLng�� Map�� http://maps.google.com/maps/api/js�� ���ǵ� Ŭ����
        // ����, �浵�� ������ �ִ� Ŭ����
        var center = new google.maps.LatLng(37.519768, 126.939769);
        map = new google.maps.Map(document.getElementById("map"), {
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            zoom:17,
            center: center
        });  
    }

    // ��ġ Ȯ�� ���� ��
    function success(position){
        // TODO ������ �߾��� ���� ��ġ�� �����Ѵ�. ����, �浵 ����
        var center = new google.maps.LatLng(
            position.coords.latitude,
            position.coords.longitude
        );  
        map.setCenter(center);  
        // TODO ��Ŀ ǥ��
        var marker = new google.maps.Marker({
            position: center,
            title: "����ġ",
            map: map
        });  
    }

    // ��ġ Ȯ�� ���� ��
    function error(error){
        log("��ȸ ����: " + error.code);
    }
})();