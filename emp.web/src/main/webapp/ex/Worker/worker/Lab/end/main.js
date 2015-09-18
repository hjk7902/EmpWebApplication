(function(){  
    function log(msg){
        var log = document.getElementById("log")|| document.querySelector(".log");
        if(log) log.innerHTML += msg + "<br>";
    }

    // TODO 워커 생성
    //생성되는 때 worker.js의 내용을 수행함. 지금은 수행할 내용이없음
    var worker = new Worker("worker.js");

    // TODO message 이벤트 처리
    //ui단  핸들링은 여기서
    worker.onmessage = function(me){
        log(me.data);
        //화면에 종료되었으니  버튼 활성화. 작업중 이미지 제거
        calc.removeAttribute("disabled");
        document.getElementById("workerImg").innerHTML = "";
    };  

    var sendBtn = document.getElementById("send");
    sendBtn.onclick = function(){
        var msg = document.getElementById("msg").value;
        // TODO 워커에 메세지 전송
        worker.postMessage(msg);   
    };

    var calcBtn = document.getElementById("calc");
    calcBtn.onclick = function(){
        var num = document.getElementById("msg").value;
        // TODO 워커에 메세지 전송("calc");
        worker.postMessage({"msg":"calc", "num":num});
        //여러번 동작못하게 버튼 제어
        calcBtn.setAttribute("disabled", "disabled");
        //작업중임을 화면에 보여줌
        document.getElementById("workerImg").innerHTML = "<img src='worker.png'>";
    };

    var stopBtn = document.getElementById("stop");
    stopBtn.onclick = function(){
        // TODO 워커 종료 워커를 강제로 종료 
        worker.terminate();   
        calcBtn.removeAttribute("disabled");
        document.getElementById("workerImg").innerHTML = "";
    };
})();