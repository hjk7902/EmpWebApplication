//���ϸ� : network.js
var net_msg = document.querySelector(".net-status-msg");

function init(){
	//�������� �������� �ε����� �� ��Ʈ��ũ ���� üũ
	var status = navigator.onLine ? "online" : "offline";
	if(status == "offline") {
		console.log("�������� ���� �Դϴ�.");
		net_msg.innerText = "�������� ���� �Դϴ�.";
	}else {
		console.log("�¶��� ���� �Դϴ�.");
		net_msg.innerText = "�¶��� ���� �Դϴ�.";
	}
	
	//ĳ�� ������Ʈ ���
	window.applicationCache.onupdateready = function() {
		applicationCache.swapCache();
		if(confirm('�������� �����Ǿ����ϴ�. �������� �ٽ� �ε��ұ��?')) {
			window.location.reload();
		}
	
	};
	
	//���ͳ� ������ ������ ��
	window.onoffline = function() {
		console.log("offline");
		net_msg.innerText = "���ͳ� ������ ������ϴ�.";
	};
	
	//���ͳ� ����Ǿ��� ��
	window.ononline = function() {
		console.log("online");
		net_msg.innerText = "���ͳ��� ����Ǿ����ϴ�.";
	};
};
init();