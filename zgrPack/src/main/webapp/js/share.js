

//定义加载函数
	function addLoadEvent(func){
		var oldonload=window.onload; 
		if(typeof window.onload!='function'){
			window.onload=func; 
		}
		else{
			window.onload=function(){
				oldonload(); 
				func(); 
			}
		}
	}
	


//导航栏
	var htmlType='div';//元素类型
    var htmlIdName1='mainNav';//ID名
	
	
	function menuFix(IdName,htmlType) { 
		var $ = function(id){return document.getElementById(id);}
		var sfEls = $(IdName).getElementsByTagName(htmlType); 
		for (var i=0; i<sfEls.length; i++) { 
			sfEls[i].onmouseover=function() { 
				this.className+=(this.className.length>0? " ": "") + "N-hover"; 
			} 
			sfEls[i].onMouseDown=function() { 
				this.className+=(this.className.length>0? " ": "") + "N-hover"; 
			} 
			sfEls[i].onMouseUp=function() { 
			this.className+=(this.className.length>0? " ": "") + "N-hover"; 
			} 
			sfEls[i].onmouseout=function() { 
				this.className=this.className.replace(new RegExp("( ?|^)N-hover\\b"), ""); 
			} 
		} 
	}
	function initFunc(){ 
	  menuFix(htmlIdName1,htmlType); 
	 }
	addLoadEvent(initFunc);
	

	
//滑动门效果
function setSlide(m,n){
	var $ = function(id){return document.getElementById(id);}
	var mli=$("slideTit"+m).getElementsByTagName("span");
	var sul=$("slide"+m).getElementsByTagName("div");
	for(i=0;i<mli.length;i++){
		mli[i].className=i==n?"hover":"";
		sul[i].style.display=i==n?"block":"none";
	}
}


function showFq(m,n)
{   
	var $ = function(id){return document.getElementById(id);}
	var boxDiv = $("h-warp"+m);
	var conDiv = $("h-con"+n);	
	conDiv.style.display = "block";
	boxDiv.className+=" h-hover";
}
function hiddenFq(m,n)
{
	var $ = function(id){return document.getElementById(id);}
	var boxDiv = $("h-warp"+m);
	var conDiv = $("h-con"+n);	
	conDiv.style.display = "none";
	boxDiv.className=boxDiv.className.replace(new RegExp("( ?|^)hover\\b"), ""); 
}

//鼠标点击事件
function proArray(m,n){
	var $ = function(id){return document.getElementById(id);}
	var proA=$("array"+m).getElementsByTagName("a"); 	
	for(i=0;i<proA.length;i++){
		proA[i].className=i==n?"select":"";			
	}
}
function clock_out(days_input,hours_input,mins_input,seconds_input){
		var days = eval(document.getElementById(days_input));
		var hours = eval(document.getElementById(hours_input));
		var mins = eval(document.getElementById(mins_input));
		var seconds = eval(document.getElementById(seconds_input));
		
		
		if(seconds.innerHTML == 0){
			if(mins.innerHTML>0){
				mins.innerHTML = mins.innerHTML-1;
				seconds.innerHTML=60;
			}else if(hours.innerHTML>0){//
				hours.innerHTML=hours.innerHTML-1;
				mins.innerHTML=60;
				seconds.innerHTML=60;
			}else if(days.innerHTML>0){//
				days.innerHTML=days.innerHTML-1;
				hours.innerHTML=23;
				mins.innerHTML=60;
				seconds.innerHTML=60;
			}else {
				days.innerHTML=0;
				hours.innerHTML=0;
				mins.innerHTML=0;
				seconds.innerHTML=0;
			}
		}
		
		if(seconds.innerHTML>0)seconds.innerHTML--;
		
		window.setTimeout("clock_out('"+days_input+"','"+hours_input+"','"+mins_input+"','"+seconds_input+"')",1000);
	}