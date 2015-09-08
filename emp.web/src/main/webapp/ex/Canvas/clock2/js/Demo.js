var clockImage = document.getElementById("img1");
var hourImage = document.getElementById("img2");
var minuteImage = document.getElementById("img3");
var secondImage = document.getElementById("img4");
var SCALE = .9;
var CLOCKWIDTH = 281 * SCALE;
var CLOCKHEIGHT = 349 * SCALE;
var HANDWIDTH = 18 * SCALE;
var HANDHEIGHT = 153 * SCALE;

var lCtx, rCtx;
var PERIOD = 10;
var leftClock, rightClock;
var WIDTH = 317 * SCALE;
var HEIGHT = 317 * SCALE;
var featureSupport = true;

function init() 
{
    var leftCanvas = document.getElementById("leftCanvas");
    var rightCanvas = document.getElementById("rightCanvas");

    lCtx = leftCanvas.getContext('2d');
    rCtx = rightCanvas.getContext('2d');

    leftClock = new clock();
    if (window.msAnimationStartTime) rightClock = new clock(window.msAnimationStartTime);
    else rightClock = new clock();

    setTimeout(renderLoopTimer, PERIOD);
    if (window.requestAnimationFrame) window.requestAnimationFrame(renderLoopRAF);
    else if (window.msRequestAnimationFrame) window.msRequestAnimationFrame(renderLoopRAF);
    else if (window.mozRequestAnimationFrame) window.mozRequestAnimationFrame(renderLoopRAF);
    else if (window.webkitRequestAnimationFrame) window.webkitRequestAnimationFrame(renderLoopRAF);
    else displayWarning();
}

function clock() {
    this.degree = 0;
    this.startTime = new Date().getTime();
    this.numCallbacks = 0;
    this.hour = new Date().getHours();
    this.minute = new Date().getMinutes();
    this.second = new Date().getSeconds();
}

function displayWarning() {
    featureSupport = false;
    document.getElementById("DemoWarning").style.display = "block";

    document.getElementById("leftExpectedCallbacks").innerHTML = "N/A";
    
    document.getElementById("rightExpectedCallbacks").innerHTML = "N/A";
    document.getElementById("rightActualCallbacks").innerHTML = "N/A";
    document.getElementById("rightCallbackEfficency").innerHTML = "N/A";
    document.getElementById("rightPowerConsumption").innerHTML = "N/A";
    document.getElementById("rightCPUEfficency").innerHTML = "N/A";
    document.getElementById("rightBackgroundInterference").innerHTML = "N/A";
    document.getElementById("rightPowerConsumption").style.color = "black";
    document.getElementById("rightCPUEfficency").style.color = "black";
    document.getElementById("rightBackgroundInterference").style.color = "black";
}

function renderLoopTimer() 
{
    var currTime = (new Date().getTime() - leftClock.startTime) / 1000;
    currTime %= 60;

    drawClock(lCtx, new Date().getHours(), new Date().getMinutes(), currTime);

    //determine callbacks
    leftClock.numCallbacks++;
    if (featureSupport) document.getElementById("leftExpectedCallbacks").innerHTML = rightClock.numCallbacks;
    var highPrecisionTimer = Math.abs(leftClock.numCallbacks - rightClock.numCallbacks) >= 10;
    
    //high precision timer not available
    switch (PERIOD) {
        case 1:
            if (!highPrecisionTimer && featureSupport) document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(rightClock.numCallbacks * (16.7 / 4));
            else document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(leftClock.numCallbacks);
            document.getElementById("leftCallbackEfficency").innerHTML = "24.0%";
            break;
        case 10:
            if (!highPrecisionTimer && featureSupport) document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(rightClock.numCallbacks * (16.7 / 10));
            else document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(leftClock.numCallbacks);
            document.getElementById("leftCallbackEfficency").innerHTML = "59.7%";
            break;
        case 15:
            if (!highPrecisionTimer && featureSupport) document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(rightClock.numCallbacks * (16.7 / 15));
            else document.getElementById("leftActualCallbacks").innerHTML = Math.ceil(leftClock.numCallbacks);
            document.getElementById("leftCallbackEfficency").innerHTML = "89.5%";
            break;
    }
    setTimeout(renderLoopTimer, PERIOD);
}


function renderLoopRAF() 
{
    var currTime = (new Date().getTime() - rightClock.startTime) / 1000;
    currTime %= 60;
    
    drawClock(rCtx, new Date().getHours(), new Date().getMinutes(), currTime);
    
    //determine callbacks
    document.getElementById("rightExpectedCallbacks").innerHTML = ++rightClock.numCallbacks;
    document.getElementById("rightActualCallbacks").innerHTML = rightClock.numCallbacks;

    if (window.requestAnimationFrame) window.requestAnimationFrame(renderLoopRAF);
    else if (window.msRequestAnimationFrame) window.msRequestAnimationFrame(renderLoopRAF);
    else if (window.mozRequestAnimationFrame) window.mozRequestAnimationFrame(renderLoopRAF);
    else if (window.webkitRequestAnimationFrame) window.webkitRequestAnimationFrame(renderLoopRAF);

}

function drawClock(ctx, hour, minute, second) {
    ctx.save();
    //outside circle
    ctx.clearRect(0, 0, 335, 335);

    ctx.shadowOffsetX = 5;
    ctx.shadowOffsetY = 5;
    ctx.shadowBlur = 10;
    ctx.shadowColor = "rgba(0, 0, 0, 0.5)";

    ctx.drawImage(clockImage, 0, 0, WIDTH, HEIGHT);

    ctx.shadowOffsetX = 5;
    ctx.shadowOffsetY = 5;
    ctx.shadowBlur = 5;
    
    var sDegree = second / 60 * 360 - 180;
    var mDegree = minute / 60 * 360 - 180;
    var hDegree = ((hour+(minute/60)) / 12)* 360 - 180;

    //second hand
    ctx.save();
    ctx.translate(150 * SCALE, 150 * SCALE);
    ctx.rotate(sDegree * Math.PI / 180);
    ctx.drawImage(secondImage, -8 * SCALE, -39 * SCALE, HANDWIDTH, HANDHEIGHT);
    ctx.restore();

    //minute hand
    ctx.save();
    ctx.translate(150 * SCALE, 150 * SCALE);
    ctx.rotate(mDegree * Math.PI / 180);
    ctx.drawImage(minuteImage, -8 * SCALE, -39 * SCALE, HANDWIDTH, HANDHEIGHT);
    ctx.restore();

    //hour hand
    ctx.save();
    ctx.translate(150 * SCALE, 150 * SCALE);
    ctx.rotate(hDegree * Math.PI / 180);
    ctx.drawImage(hourImage, -8 * SCALE, -39 * SCALE, HANDWIDTH, HANDHEIGHT);
    ctx.restore();

    ctx.restore();

}

function updatePeriod(p) {
    PERIOD = p;
    
    rightClock.numCallbacks = 0;
    rightClock.degree = 0;
    if (window.msAnimationStartTime) rightClock.startTime = window.msAnimationStartTime;
    else rightClock.startTime = new Date().getTime();

    leftClock.numCallbacks = 0;
    leftClock.degree = 0;
    leftClock.startTime = new Date().getTime();
    
    leftClock.numCallbacks = 0 ;

    var power, CPU, powerColor, CPUColor;

    document.getElementById("period1").style.textDecoration = "";
    document.getElementById("period10").style.textDecoration = "";
    document.getElementById("period1000").style.textDecoration = "";
    
    if (p >= 15) {
        power = "Standard";
        CPU = "Medium";
        powerColor = "green";
        CPUColor = "orange";
        document.getElementById("period1000").style.textDecoration = "underline";
    }
    else if (p == 10) { //standard power; low cpu
        power = "Medium";
        CPU = "Medium";
        powerColor = "orange";
        CPUColor = "orange";
        document.getElementById("period10").style.textDecoration = "underline";
    }
    else {              //high power; medium cpu (orange)
        power = "High";
        CPU = "Low";
        powerColor = "red";
        CPUColor = "red";
        document.getElementById("period1").style.textDecoration = "underline";
    }
    document.getElementById("leftPowerConsumption").innerHTML = power;
    document.getElementById("leftPowerConsumption").style.color = powerColor;

    document.getElementById("leftCPUEfficency").innerHTML = CPU;
    document.getElementById("leftCPUEfficency").style.color = CPUColor;
    
}

init();