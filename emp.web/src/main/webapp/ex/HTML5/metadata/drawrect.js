//HTML5/metadata/drawrect.js
var ContentFilter = {
	fill : function (id) {
		var toFill = document.getElementById(id);
		if(toFill) {
			toFill.style.width = "300px";
			toFill.style.height = "50px";
			toFill.style.backgroundColor = "#FF9900";
		}
	}
};
function drawRect() {
	var id = "located-content";
	var child = document.createElement("div");
	child.id = id;
	var parent = document.getElementById("holder");
	parent.appendChild(child);
	if(ContentFilter) ContentFilter.fill(id);
	console.log(document.querySelector("img[alt=second]"));
}
setTimeout(drawRect, 5000);