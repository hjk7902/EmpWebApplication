//파일명 : network.js
var net_msg = document.querySelector(".net-status-msg");

function init(){
	//브라우저가 페이지를 로딩했을 때 네트워크 상태 체크
	var status = navigator.onLine ? "online" : "offline";
	if(status == "offline") {
		console.log("오프라인 상태 입니다.");
		net_msg.innerText = "오프라인 상태 입니다.";
	}else {
		console.log("온라인 상태 입니다.");
		net_msg.innerText = "온라인 상태 입니다.";
	}
	
	//캐시 업데이트 기능
	window.applicationCache.onupdateready = function() {
		applicationCache.swapCache();
		if(confirm('페이지가 수정되었습니다. 페이지를 다시 로드할까요?')) {
			window.location.reload();
		}
	
	};
	
	//인터넷 연결이 끊겼을 때
	window.onoffline = function() {
		console.log("offline");
		net_msg.innerText = "인터넷 연결이 끊겼습니다.";
	};
	
	//인터넷 연결되었을 때
	window.ononline = function() {
		console.log("online");
		net_msg.innerText = "인터넷이 연결되었습니다.";
	};
};
init();