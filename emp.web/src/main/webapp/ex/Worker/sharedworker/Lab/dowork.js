//doorker.js
var target;
// ������Ŀ ���� �� ȣ��
onconnect = function(me){
    target = me.ports[0];//���������� ������Ŀ�� ������ ��Ʈ ������ ������

    target.onmessage = function(e){
    	//��׶���� ó���Ǿ�� �� �۾�
		setTimeout(function() {
			var sum = 0;
	        for(var i=1; i<=e.data; i++){
				sum += i;
	        }
	        target.postMessage(sum);
		}, 5000);//5�ʰ� ��
    };
};