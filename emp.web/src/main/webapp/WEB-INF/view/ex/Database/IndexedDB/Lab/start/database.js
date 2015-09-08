var indexedDB = window.indexedDB || window.webkitIndexedDB || window.mozIndexedDB || window.oIndexedDB || window.msIndexedDB;

if ('webkitIndexedDB' in window) {
    window.IDBTransaction = window.webkitIDBTransaction;
    window.IDBKeyRange = window.webkitIDBKeyRange;
}

var newsdomain = {};
newsdomain.indexedDB = {};
newsdomain.indexedDB.db = null;

newsdomain.indexedDB.onerror = function(e) {
    console.log(e);
};

NewsData = function(title, link, desc){
    this.title = title;
    this.link = link;
    this.desc = desc;
};

var dbVersion = "1.0";
newsdomain.indexedDB.open = function() {
    var request = indexedDB.open("newsList");

    request.onsuccess = function(e) {
    	console.log("newsList db opened");
        newsdomain.indexedDB.db = e.target.result;
        var db = newsdomain.indexedDB.db;
        if (typeof db.setVersion === "function") {
        	console.log("ss");
            if (dbVersion != db.version) {
                var setVrequest = db.setVersion(v);

                setVrequest.onerror = newsdomain.indexedDB.onerror;
                setVrequest.onsuccess = function(e) {
                    if(db.objectStoreNames.contains("news")) {
                        db.deleteObjectStore("news");
                    }
                    var store = db.createObjectStore("news", {keyPath: "id", autoIncement: true});
                    store.createIndex("index_title", "title", { unique: true});
                };
            }
            getAllNews();
        }
    };

    request.onerror = function(e) {
    	console.log(e);
    };
    
    request.onupgradeneeded = function(e){
        console.log("onupgradeneeded : ", e);
        var db = e.target.result;
        console.log(db);
        if(db.objectStoreNames.contains("news") === false) {
	        //TODO : Object Store�� �����ؾ� �մϴ�.
			//Ű�н��� id, autoIncrement�� true�� �����ϼ���.
        }
    };
};

newsdomain.indexedDB.addNews = function(newsData) {
    var db = newsdomain.indexedDB.db;
    var trans = db.transaction(["news"], "readwrite");
    var store = trans.objectStore("news");

    //TODO
	//newsData�κ��� title, link, desc ������ ��ȸ�ؼ�
	//�ڹٽ�ũ��Ʈ ��ü�� ������ �մϴ�.



	//TODO �ڹٽ�ũ��Ʈ ��ü�� ���� �����ؾ� �մϴ�.


    request.onsuccess = function(e) {
        //console.log("add success");
    };

    request.onerror = function(e) {
        console.log("Error Adding: ", e);
    };
};

newsdomain.indexedDB.deleteAllNews = function() {
    var db = newsdomain.indexedDB.db;
    var trans = db.transaction(["news"], "readwrite");
    var store = trans.objectStore("news");

	//TODO : ������� ��� �����͸� �����մϴ�.


    request.onsuccess = function(e) {
    	console.log("Store Cleared");
    };

    request.onerror = function(e) {
        console.log("Error Clearing: ", e);
    };
};

newsdomain.indexedDB.getAllNewsItems = function() {
    var db = newsdomain.indexedDB.db;
    console.log(db);
    var trans = db.transaction(["news"], "readwrite");
    var store = trans.objectStore("news");

    var keyRange = IDBKeyRange.lowerBound(0);
    var cursorRequest = store.openCursor(keyRange);
	var target = document.querySelector("#news_rss div[data-role=content] .content-list");
	target.innerHTML = "";
	var t_el = document.createElement("p");	//<p> ������Ʈ ��ü ����
	var i=1;
    cursorRequest.onsuccess = function(e) {
        var result = e.target.result;
        if(!!result == false)
        return;

        var row = result.value;
        console.log(row.title);
		var title = row.title;
		var desc = row.desc;
		t_el.innerHTML += (i++) + ". "  + title + "<span>" + desc + "</span>";
		target.appendChild(t_el);
        result.continue();
    };

    cursorRequest.onerror = newsdomain.indexedDB.onerror;
};

function addNews(title, link, desc) {
	var newsData = new NewsData(title, link, desc);
    newsdomain.indexedDB.addNews(newsData);
};

function getAllNews() {
	newsdomain.indexedDB.getAllNewsItems();
}

function clearNews() {
	newsdomain.indexedDB.deleteAllNews();
}

newsdomain.indexedDB.open();
