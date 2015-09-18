//doorker.js
var target;
// 공유워커 생성 시 호출
onconnect = function(me){
    target = me.ports[0];//마지막으로 공유워커를 생성한 포트 정보를 저장함

    target.onmessage = function(e){
    	//백그라운드로 처리되어야 할 작업
		setTimeout(function() {
			var sum = 0;
	        for(var i=1; i<=e.data; i++){
				sum += i;
	        }
	        target.postMessage(sum);
		}, 5000);//5초간 쉼
    };
};