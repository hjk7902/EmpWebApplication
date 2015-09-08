function readFile(file) {
    document.getElementById("fileName").textContent = file.name;
    document.getElementById("fileSize").textContent = "(" + file.size + "byte)";

    var reader = new FileReader();

    reader.onload = function() {
        var display = document.getElementById("droparea");
        display.textContent = reader.result;
    };

    reader.onerror = function(evt) {
        alert(evt.target.error.code);
    };

    var encodingList = document.getElementById("encoding");
    var encoding = encodingList.options[encodingList.selectedIndex].value;  

    reader.readAsText(file, encoding);
};

$(function() {
    var readButton = $("#read");
    readButton.click(function() {
        readFile(document.getElementById("file").files[0]);
        if(event.preventDefault) event.preventDefault(); 
        return false;
    });
    
    var target = $("#droparea");
    target.bind("dragover", function(event) {
        if(event.preventDefault) event.preventDefault();
        return false;
    });
    
    target.bind("dragenter", function(event){
        $(this).addClass("hover");
		if(event.preventDefault) event.preventDefault();
        return false;
    });
 
    target.bind("dragleave", function(event){
        $(this).removeClass("hover");
        if(event.preventDefault) event.preventDefault(); 
        return false;
    });
 
    target.bind("dragend", function(event){
        if(event.preventDefault) event.preventDefault();
        return false;
    });
    
    target.bind("drop", function(event){
        $(this).removeClass("hover");
        var data = event.originalEvent.dataTransfer.files[0];
        if(event.preventDefault) event.preventDefault();
        readFile(data);
    });
});