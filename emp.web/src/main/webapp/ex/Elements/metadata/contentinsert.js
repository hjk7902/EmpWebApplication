(function() {
	document.write("<div id=\"holder\"></div>");
	
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "asynctest.js";
	script.id = "asynctest";
	script.setAttribute("async", "async");
	
	var head = document.documentElement.firstChild;
	head.appendChild(script);
})();