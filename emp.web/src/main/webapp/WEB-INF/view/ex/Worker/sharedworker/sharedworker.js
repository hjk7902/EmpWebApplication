//sharedWorker.js
var clients = [];
// ������Ŀ ���� �� ȣ��
onconnect = function(me){
    //�޼��� �̺�Ʈ���� �Ѿ�� ports�� Ŭ���̾�Ʈ�� ����� �� �ִ� ä���� ��
    //sharedworker�� �迭�� ���� Ŭ���̾�Ʈ�� ���� ä�������� �迭�� ����
    //�������󿡼��� ���� â�� ������ �޼����� ����
    clients.push(me.ports[0]);
    me.ports[0].postMessage("connected...");
    // TODO message �̺�Ʈ ó��(UI �����忡�� ���� �޼����� clients ��Ͽ� �����Ѵ�.)
    //�޼����� ������ ��� ui������(���� â)���� ����
    me.ports[0].onmessage = function(e){
    	//��׶���� ó���Ǿ�� �� �۾�

        for(var i=0; i<clients.length; i++){
            clients[i].postMessage("From Shared Worker: " + e.data);
        }
    };
};