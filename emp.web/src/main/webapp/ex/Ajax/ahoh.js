//ÆÄÀÏ¸í : ahoh.js
function ahoh(url, target) {
	document.getElementById(target).innerHTML = ' Fetching data...';
	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if (req != undefined) {
		req.onreadystatechange = function() {
			ahohDone(target);
		};
		req.open("GET", url, true);
		req.send("");
	}
}
function ahohDone(target) {
	if (req.readyState == 4) {   // only if req is "loaded"
		if (req.status == 200) { // only if "OK"
			document.getElementById(target).innerHTML = req.responseText;
		} else {
			document.getElementById(target).innerHTML=" AHOH Error:\n"+ req.status + "\n" +req.statusText;
		}
	}
}
