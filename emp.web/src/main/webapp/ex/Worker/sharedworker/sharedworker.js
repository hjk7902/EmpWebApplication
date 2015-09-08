//sharedWorker.js
var clients = [];
// 공유워커 생성 시 호출
onconnect = function(me){
    //메세지 이벤트에서 넘어온 ports는 클라이언트가 통신할 수 있는 채널이 됨
    //sharedworker는 배열에 여러 클라이언트가 보낸 채널정보를 배열로 관리
    //브라우저상에서는 여러 창에 동일한 메세지를 보냄
    clients.push(me.ports[0]);
    me.ports[0].postMessage("connected...");
    // TODO message 이벤트 처리(UI 스레드에서 보낸 메세지를 clients 목록에 전달한다.)
    //메세지를 받으면 모든 ui스레드(여러 창)에게 보냄
    me.ports[0].onmessage = function(e){
    	//백그라운드로 처리되어야 할 작업

        for(var i=0; i<clients.length; i++){
            clients[i].postMessage("From Shared Worker: " + e.data);
        }
    };
};