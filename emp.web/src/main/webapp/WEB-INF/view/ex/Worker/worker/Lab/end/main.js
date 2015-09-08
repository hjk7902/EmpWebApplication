(function(){  
    function log(msg){
        var log = document.getElementById("log")|| document.querySelector(".log");
        if(log) log.innerHTML += msg + "<br>";
    }

    // TODO ��Ŀ ����
    //�����Ǵ� �� worker.js�� ������ ������. ������ ������ �����̾���
    var worker = new Worker("worker.js");

    // TODO message �̺�Ʈ ó��
    //ui��  �ڵ鸵�� ���⼭
    worker.onmessage = function(me){
        log(me.data);
        //ȭ�鿡 ����Ǿ�����  ��ư Ȱ��ȭ. �۾��� �̹��� ����
        calc.removeAttribute("disabled");
        document.getElementById("workerImg").innerHTML = "";
    };  

    var sendBtn = document.getElementById("send");
    sendBtn.onclick = function(){
        var msg = document.getElementById("msg").value;
        // TODO ��Ŀ�� �޼��� ����
        worker.postMessage(msg);   
    };

    var calcBtn = document.getElementById("calc");
    calcBtn.onclick = function(){
        var num = document.getElementById("msg").value;
        // TODO ��Ŀ�� �޼��� ����("calc");
        worker.postMessage({"msg":"calc", "num":num});
        //������ ���۸��ϰ� ��ư ����
        calcBtn.setAttribute("disabled", "disabled");
        //�۾������� ȭ�鿡 ������
        document.getElementById("workerImg").innerHTML = "<img src='worker.png'>";
    };

    var stopBtn = document.getElementById("stop");
    stopBtn.onclick = function(){
        // TODO ��Ŀ ���� ��Ŀ�� ������ ���� 
        worker.terminate();   
        calcBtn.removeAttribute("disabled");
        document.getElementById("workerImg").innerHTML = "";
    };
})();