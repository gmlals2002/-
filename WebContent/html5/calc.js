    


    function init(){
         
        	var btnSum = document.getElementById("btn-sum");
        	btnSum.onclick = btnSumClick;
        	
        	
        	
        }
        
        
        
        function btnSumClick(){
        	
        	var x,y;
        	
        	var txtX = document.getElementById("txt-x");
        	var txtY = document.getElementById("txt-y");
        	
        	x= parseInt(txtX.value);
        	y= parseInt(txtY.value);
        	
        	 //x=txtX.value
        	//y=txtY.value
        	
        	var txtSum = document.getElementById("txt-sum");
        	txtSum.value = x+y;
   
        	
        	
        	
        }
        
        window.onload=init;