function log(msg){
    var log = document.getElementById("log");
    if(!log){
        log = document.querySelector(".log");
    }
    if(log) log.innerHTML += msg + "<br>";
}
/*���� ��¥�� ���ڿ��� ��ȯ */
function dateToString(){
    var date = new Date();
    var result = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    return result;
}