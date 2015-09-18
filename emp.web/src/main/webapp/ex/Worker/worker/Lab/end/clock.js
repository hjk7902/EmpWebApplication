(function() {
    var canvas = document.getElementById("clockCanvas");
    var ctx = canvas.getContext("2d");
    var centerX = centerY = 150;
    
    ctx.lineCap = "round";
    setInterval(clock, 10);
    clock();
    function clock() {
        ctx.clearRect(0, 0, 300, 300);
        
        //테두리
        var clockBorder = 15;
        var radgrad = ctx.createRadialGradient(150,150,100+clockBorder,150,150,100);
        radgrad.addColorStop(0, '#554400');
        radgrad.addColorStop(0.5, '#FFEE88');
        radgrad.addColorStop(0.99, '#442200');
        radgrad.addColorStop(0.99, '#FFFFAA');
        
        ctx.beginPath();
        ctx.fillStyle = radgrad;
        ctx.arc(centerX,centerY,100+clockBorder, 0, Math.PI*2, true);
        ctx.fill();
        ctx.closePath();
        
        //숫자판
        for(var i=0; i<12; i++) {
            ctx.beginPath();
            ctx.fillStyle = "#000000";

            var a = (360/12) * i * Math.PI/180;
            var x = 150+Math.sin(a)*90;
            var y = 150-Math.cos(a)*90;
            ctx.lineWidth = 1;
            ctx.arc(x, y, 3, 0, Math.PI*2, true);

            ctx.fill();
            ctx.closePath();
        }
        
        //SECONDS
        ctx.beginPath();
        ctx.moveTo(150,150);
        var seconds = (new Date().getTime() / 1000) % 60;//new Date().getSeconds();
        var angle = (360/60) * seconds * Math.PI/180; //radian 값 
        ctx.strokeStyle = "#ff0000"; // line color
        ctx.lineWidth = 1;     
        ctx.lineTo(150+Math.sin(angle)*80, 150-Math.cos(angle)*80);
        ctx.stroke();
        ctx.closePath();
        
        //MINUTE
        var minutes = new Date().getMinutes();
        ctx.beginPath();
        ctx.lineWidth = 3;     
        ctx.strokeStyle = "#000000"; // line color
        ctx.moveTo(150,150);
        angle = (360/60) * minutes * Math.PI/180; //radian 값
        ctx.lineTo(150+Math.sin(angle)*75, 150-Math.cos(angle)*75);
        ctx.stroke();
        ctx.closePath();
        
        //HOUR
        var hours = new Date().getHours();
        ctx.beginPath();
        ctx.lineWidth = 5;
        ctx.moveTo(150,150);
        angle = (360/12) * hours * Math.PI/180; //radian 값
        ctx.lineTo(150+Math.sin(angle)*60, 150-Math.cos(angle)*60);
        ctx.stroke();
        ctx.closePath();
    }
})();
