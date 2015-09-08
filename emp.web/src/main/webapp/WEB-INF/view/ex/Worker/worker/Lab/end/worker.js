//worker.js
onmessage = function(me){
    //worker는 js 확장자로 생성함
    //워커발생시 message 이벤트가 발생하고 message가 넘어옴
    //워커는 독립된프로세스이므로 화면에 표현안됨. 메인 프로그램에 결과를 넘겨주면 처리해야 함
    //워커는 비즈니스 로직과 UI를 분리시키는 역할을 함
    if(me.data.msg == "calc"){
		setTimeout(function() {
			var sum = 0;
			for(var i=1; i<=me.data.num; i++){
				sum += i;
			}
			// TODO 작업 결과 전송 워커를 생성한 곳으로 메시지 전송 
			postMessage("워커수행결과 :" + sum);
		}, 2000);

    }else{
        // TODO 받은 메세지 반송
        postMessage("반사 :" + me.data);  
    }
};