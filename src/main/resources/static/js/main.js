
function addEvent(obj,evtType,func,cap){
    cap=cap||false;
if(obj.addEventListener){
     obj.addEventListener(evtType,func,cap);
   return true;
}else if(obj.attachEvent){
        if(cap){
         obj.setCapture();
         return true;
     }else{
      return obj.attachEvent("on" + evtType,func);
   }
}else{
   return false;
    }
}
function getPageScroll(){
    var xScroll,yScroll;
if (self.pageXOffset) {
   xScroll = self.pageXOffset;
} else if (document.documentElement && document.documentElement.scrollLeft){
   xScroll = document.documentElement.scrollLeft;
} else if (document.body) {
   xScroll = document.body.scrollLeft;
}
if (self.pageYOffset) {
   yScroll = self.pageYOffset;
} else if (document.documentElement && document.documentElement.scrollTop){
   yScroll = document.documentElement.scrollTop;
} else if (document.body) {
   yScroll = document.body.scrollTop;
}
arrayPageScroll = new Array(xScroll,yScroll);
return arrayPageScroll;
}
function GetPageSize(){
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) { 
        xScroll = document.body.scrollWidth;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else if (document.body.scrollHeight > document.body.offsetHeight){
        xScroll = document.body.scrollWidth;
        yScroll = document.body.scrollHeight;
    } else {
        xScroll = document.body.offsetWidth;
        yScroll = document.body.offsetHeight;
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) {
        windowWidth = self.innerWidth;
        windowHeight = self.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) {
        windowWidth = document.documentElement.clientWidth;
        windowHeight = document.documentElement.clientHeight;
    } else if (document.body) {
        windowWidth = document.body.clientWidth;
        windowHeight = document.body.clientHeight;
    } 
    if(yScroll < windowHeight){
        pageHeight = windowHeight;
    } else { 
        pageHeight = yScroll;
    }
    if(xScroll < windowWidth){ 
        pageWidth = windowWidth;
    } else {
        pageWidth = xScroll;
    }
    arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight) 
    return arrayPageSize;
}