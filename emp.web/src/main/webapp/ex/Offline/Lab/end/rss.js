//rss.js
var xhr = new XMLHttpRequest();	//ajax를 위한 객체 생성

function init(){
	var links = document.querySelectorAll("div[data-role='content'] p > a");

	for(var i=0, n=links.length ; i<n; i++) {
		//console.log(links[i]);
		links[i].addEventListener('click', getRssData);
	}
};
function getRssData(event) {
    //event.preventDefault(); //넣으면 페이지 전환 안됨
	getAllNews();//데이터베이스의 정보를 미리 화면에 뿌림

    var rss_url = this.dataset.rssurl;
    if (rss_url == "") {
    	alert('RSS address is empty.');
    	return false;
    }
    xhr.onreadystatechange = function() {
    	if(xhr.readyState == 4 && xhr.status == 200){
    	    displayResult(xhr.responseXML);//결과를 XML로 받아야 파싱이 가능함
	    }
	};
	rss_url = encodeURIComponent(rss_url);//주소 인코딩,주소에 한글이 포함되어 있을 경우
	xhr.open("GET", "./proxy_common.jsp?rssurl=" + rss_url, true);
	xhr.send(null);
}
function displayResult(result) {
    var items = result.querySelectorAll('item');
    //console.log(items.length);

	var target = document.querySelector("#news_rss div[data-role=content] .content-list");

	target.innerHTML = "";
    if(items.length > 0) {
    	clearNews();//데이터베이스에 저장된 정보를 지움
    }
    for(var i=0, n=items.length; i<n; i++) {
		var title = items[i].querySelector('title').textContent;//뉴스 title, textContent는 Node의 텍스트를 Set/Return
		//var title = items[i].getElementsByTagName('title')[0].textContent; //위의 코드와 동일함
		var link = items[i].querySelector('link').textContent;//뉴스 링크 주소
		var desc = items[i].querySelector('description').textContent;//뉴스 설명
		var t_el = document.createElement("p");	//<p> 엘리먼트 객체 생성
		
		t_el.innerHTML = (i+1) +". <a href='" + link + "'>" + title + "</a><span>" + desc + "</span>";
		target.appendChild(t_el);
		
		addNews(title, link, desc);
    }
};

init();