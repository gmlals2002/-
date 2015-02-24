var count =60;

var timer =null;
var win =null;

function countDown(){
	
	
	var idlCount = document.getElementById("idl-count");
	idlCount.innerText = --count;
	
	
	if(count > 0)
		setTimeout(countDown,1000);
	
	
}

function btnCountDownClick(){
	
	if(timer == null)
	
	timer = setTimeout(countDown,1000);
	//setInterval(countDown, 1000);
	
	
}

function btnNewTabClick(){
	
	
	win =open("http://www.naver.com","_blank");
	
	/*var btnNewTabClick = document.getElementById("btn-new-tab");
	btnNewTabClick.onclick = btnCountDownClick;*/
	
	
}


function btnNewWinClick(){
	
	win =open("notice.html","_blank","width = 500px,height = 400px;");
/*	var btnNewWinClick = document.getElementById("btn-new-win");
	btnNewWinClick.onclick = btnCountDownClick;*/
	
}


function btnCloseWinClick(){
	win.close();
	
	/*var btnCloseClick = document.getElementById("btn-close-win");
	btnCloseClick.onclick = btnCountDownClick;*/
	
}







function init(){
	
	var btnCountdown = document.getElementById("btn-countdown");
	btnCountdown.onclick = btnCountDownClick;
	
	var btnNewTab = document.getElementById("btn-new-tab");
	btnNewTab.onclick = btnNewTabClick;
	
	var btnNewWin = document.getElementById("btn-new-win");
	btnNewWin.onclick = btnNewWinClick;
	
	var btnCloseWin = document.getElementById("btn-close-win");
	btnCloseWin.onclick = btnCloseWinClick;
}




/*function btnClick(){
	
	alert("hello");
	
	
	
}*/


window.onload=init;