//rss.js
var xhr = new XMLHttpRequest();	//ajax�� ���� ��ü ����

function init(){
	var links = document.querySelectorAll("div[data-role='content'] p > a");

	for(var i=0, n=links.length ; i<n; i++) {
		//console.log(links[i]);
		links[i].addEventListener('click', getRssData);
	}
};
function getRssData(event) {
    //event.preventDefault(); //������ ������ ��ȯ �ȵ�
	getAllNews();//�����ͺ��̽��� ������ �̸� ȭ�鿡 �Ѹ�

	var rss_url = this.dataset.rssurl;
    if (rss_url == "") {
    	alert('RSS address is empty.');
    	return false;
    }
    xhr.onreadystatechange = function() {
    	if(xhr.readyState == 4 && xhr.status == 200){
    	    displayResult(xhr.responseXML);//����� XML�� �޾ƾ� �Ľ��� ������
	    }
	};
	rss_url = encodeURIComponent(rss_url);//�ּ� ���ڵ�,�ּҿ� �ѱ��� ���ԵǾ� ���� ���
	xhr.open("GET", "./proxy_common.jsp?rssurl=" + rss_url, true);
	xhr.send(null);
}
function displayResult(result) {
    var items = result.querySelectorAll('item');
    //console.log(items.length);

	var target = document.querySelector("#news_rss div[data-role=content] .content-list");

	target.innerHTML = "";
    if(items.length > 0) {
    	clearNews();//�����ͺ��̽��� ����� ������ ����
    }
	for(var i=0, n=items.length; i<n; i++) {
		var title = items[i].querySelector('title').textContent;//���� title, textContent�� Node�� �ؽ�Ʈ�� Set/Return
		//var title = items[i].getElementsByTagName('title')[0].textContent; //���� �ڵ�� ������
		var link = items[i].querySelector('link').textContent;//���� ��ũ �ּ�
		var desc = items[i].querySelector('description').textContent;//���� ����
		var t_el = document.createElement("p");	//<p> ������Ʈ ��ü ����
		
		t_el.innerHTML = (i+1) +". <a href='" + link + "'>" + title + "</a><span>" + desc + "</span>";
		target.appendChild(t_el);
		
		addNews(title, link, desc);
    };
};

init();