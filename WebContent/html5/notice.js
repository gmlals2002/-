

function init(){
	
	var btnResize = document.getElementById("btn-resize");
	btnResize.onclick = btnResizeClick;
	
	var btnMove = document.getElementById("btn-move");
	btnMove.onclick = btnMoveClick;
	
	var btnOpener = document.getElementById("btn-opener-close");
	btnOpener.onclick = btnOpenerclose;
	
	
	
}




function btnResizeClick(){
	
	opener.resizeTo(100,100);
	//opener.resizeBy(100,100);
	
	
	
}
function btnMoveClick(){
	
	opener.moveTo(100,100);
	//opener.moveBy(100,100);
	
	
}
function btnOpenerclose(){
	
	
	opener.close();
	
	
}

window.onload=init;
