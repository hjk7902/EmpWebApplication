 $(function(){
    if (!window.localStorage){
      function createCookie(name,value,days) {
    	var expires = "";
        if (days) {
          var date = new Date();
          date.setTime(date.getTime()+(days*24*60*60*1000));
          expires = "; expires="+date.toGMTString();
        } 
        document.cookie = name+"="+value+expires+"; path=/";
      }

      function readCookie(name) {
        var result = "";
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
          var c = ca[i];
          while (c.charAt(0)==' ') c = c.substring(1,c.length);
          if (c.indexOf(nameEQ) == 0){
             result = c.substring(nameEQ.length,c.length);
          }else{
            result = "";
          }
       }
        return(result);
      }
      localStorage = (function () {
        return {
          setItem: function (key, value) {
            createCookie(key, value, 3000);
          },

          getItem: function (key) {
            return(readCookie(key));
          },
          
          removeItem: function(key) {
        	createCookie(key, value, 0);
          }
        };
      })();
    }

    load_settings();

    $('form#preferences').submit(function(event){
      event.preventDefault();
      save_settings();
    });
    
    $("#reset").click(function(event) {
//    event.preventDefault(); //<-- 퀴즈입니다.^^ 여기에서 preventDefault를 사용하지 않는 이유는? 
      restore_settings();
    });
});
 
function restore_settings(){
	localStorage.removeItem("background_color");
	localStorage.removeItem("border_color");
	localStorage.removeItem("text_color");
	localStorage.removeItem("text_size");
}
function save_settings(){
    localStorage.setItem("background_color", $("#background_color").val());
    localStorage.setItem("border_color", $("#border_color").val());
    localStorage.setItem("text_color", $("#text_color").val());
    localStorage.setItem("text_size", $("#text_size").val());
    apply_preferences_to_page();
}

function apply_preferences_to_page(){
    $("#wrapper").css("backgroundColor", $("#background_color").val());
    $("#wrapper").css("border-color", $("#border_color").val());
    $("#footer").css("border-color", $("#border_color").val());
    $("#content").css("color", $("#text_color").val());
    $("body").css("fontSize", $("#text_size").val() + "em");
}

function load_settings(){
    var bgcolor = localStorage.getItem("background_color");
    var border_color = localStorage.getItem("border_color");
    var text_color = localStorage.getItem("text_color");
    var text_size = localStorage.getItem("text_size");

    $("#background_color").val(bgcolor);
    $("#border_color").val(border_color);
    $("#text_color").val(text_color);
    $("#text_size").val(text_size);

    apply_preferences_to_page();
}
