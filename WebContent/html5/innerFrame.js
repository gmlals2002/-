

function init(){
	
	
	
	var open = document.getElementById("btn-doc");
	open.onclick = openDoc;
	
	
	
	
}



function openDoc(){
	
	
	window.frames[0].location.href="http://www.newlecture.com";
	
	
}





window.onload=init;