var mar;
var mar1;
var mar2;
var mar3;
var mar4;
var mar5;
var mar6;
var speed = 10;//the speed of scrolling 
var step = 1;
var MyMar1;
var MyMar2;
var leftHit = 0;//left click or not
var rightHit = 0;//right click or not
var len=0;
var space=20;
function bodyload(){
	mar = document.getElementById('scrollbody');
	mar1 = document.getElementById('scroll1');
	mar2 = document.getElementById('scroll2');
	mar3 = document.getElementById('scroll3');
	mar4 = document.getElementById('scroll4');
	len = mar1.getElementsByTagName('td').length;
	mar2.innerHTML = mar1.innerHTML;
	mar3.innerHTML = mar1.innerHTML;
	mar4.innerHTML = mar1.innerHTML;
	toLeft();
	//end
}
function toLeft(){
	clearLeft();
	if(speed > 0){
		step += 1;
		if (step >= 2) step = 2;
	}else{ 
		speed = 10;
	}
	if(leftHit != 0){
		if(MyMar1)
			MyMar1 = setInterval(MarqueeLeft,speed);
	}
	MarqueeLeft();
}
function MarqueeLeft(){
	
	if(mar2.offsetWidth-mar.scrollLeft <= 0){
		mar.scrollLeft -= mar1.offsetWidth;
	}else{
		mar.scrollLeft += step;
	}
	if(leftHit == 0){
		step = 1;
		if(!MyMar1)
			MyMar1 = setInterval(MarqueeLeft,speed);
		leftHit = 1;
		rightHit = 0;
	 }
	mar.onmouseover = function() {
		clearLeft();
	}
	mar.onmouseout = function() {
		if(!MyMar1)
			MyMar1=setInterval(MarqueeLeft,speed);
	}
}

function clearLeft(){
   clearInterval(MyMar1);
   MyMar1 = null;
}
