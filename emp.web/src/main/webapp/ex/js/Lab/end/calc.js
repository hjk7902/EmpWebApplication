(function() {
	var add = function(num1, num2) {
		return num1 + num2;
	}
	var button = document.querySelector("[type=button]");

//	button.onclick = function() {
//		var op1 = parseInt(document.querySelector("#op1").value);
//		var op2 = parseInt(document.querySelector("#op2").value);
//		var span = document.querySelector("#result");
//		span.textContent = add(op1, op2);
//	}
	button.addEventListener("click", function() {
		var op1 = parseInt(document.querySelector("#op1").value);
		var op2 = parseInt(document.querySelector("#op2").value);
		var span = document.querySelector("#result");
		span.textContent = add(op1, op2);
		event.stopPropagation();
	});
})();