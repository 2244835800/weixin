<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="<%=path%>/css/common.css" type="text/css" rel="stylesheet"/>
<link href="<%=path%>/css/indexcommon.css" type="text/css" rel="stylesheet"/>
<link href="<%=path%>/css/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/js/roll.js"></script>
<script type="text/javascript" src="<%=path%>/js/main.js"></script>
<script type="text/javascript" src="<%=path%>/js/config.js"></script>
<script type="text/javascript" src="<%=path%>/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="<%=path%>/js/flowplayer-3.2.6.min.js"></script>
<title>门户网站</title>
<style>
*{margin: 0;padding: 0;}
    li{list-style-type: none;}
    a,input{outline: none;-webkit-tap-highlight-color:rgba(0,0,0,0);}
    #choose{display: none;}
    canvas{width: 100%;border: 1px solid #000000;}
    .touch{background-color: #ddd;}
    .img-list{margin: 5px 5px;}
    .img-list li{position: relative;display: inline-block;width: 80px;height: 80px;margin: 5px 5px 20px 5px;border: 1px solid rgb(100,149,198);background: #fff no-repeat center;background-size: cover;}
    .progress{position: absolute;width: 100%;height: 20px;line-height: 20px;bottom: 0;left: 0;background-color:rgba(100,149,198,.5);}
    .progress span{display: block;width: 0;height: 100%;background-color:rgb(100,149,198);text-align: center;color: #FFF;font-size: 13px;}
    .size{position: absolute;width: 100%;height: 15px;line-height: 15px;bottom: -18px;text-align: center;font-size: 13px;color: #666;}
    .tips{display: block;text-align:center;font-size: 13px;margin: 10px;color: #999;}
    .pic-list{margin: 10px;line-height: 18px;font-size: 13px;}
    .pic-list a{display: block;margin: 10px 0;}
    .pic-list a img{vertical-align: middle;max-width: 30px;max-height: 30px;margin: -4px 0 0 10px;}
  
</style>

</head>


<body>
<script type="text/javascript">

$(document).ready(function(){ 
$('.nav > ul > li').hover(function(){$(this).find('.xlk').show();$(this).addClass("now").siblings().removeClass("now"); },function(){$(this).find('.xlk').css('display','none')})
$('.nav > ul > li').click(function(){ $(this).addClass("now").siblings().removeClass("now"); });
 });

							
 </script>
<div class="head">
   <div class="top">
     <div class="weather">
         <div> 2017年5月15日 星期一 农历丁酉(鸡)年四月二十 </div>
		 <div class="search">
		       <span>站内搜索：</span>
			   <span><input name="search" type="text" class="input_2" /></span>
			   <span><input  type="submit" class="ss" value=""/></span>
			   <span style="margin-left:50px;">南京 今天(周一)：15～23℃小雨</span>
		 </div>
		 
     </div>
     <div class="wap">
	   <ul>
	   <li><a href="#">设为首页</a></li>
		<li class="n_l"><a href="#">加入收藏</a></li>
	   </ul>
	    
	 </div>
	 <div></div>
   </div> 
   <div class="ad">
   <img src="<%=path%>/images/hn_03.gif"/>
   </div>
   <div class="nav">
   <ul>
   <li class><a href="<%=path%>" target="_self">首&nbsp;页</a></li>
   <li class><a href="<%=path%>/index/menu?id=1" target="_self">政务公开</a><div class="xlk" style="display: none;">
          <div class="xllb">
           <ul>
               <li><a href="<%=path%>/index/menu?id=1" target="_self">机构概况</a> </li>
               <li><a href="<%=path%>/index/menu?id=1" target="_self">联系我们</a> </li>
               <li><a href="<%=path%>/index/menu?id=1" target="_self">领导介绍</a> </li>   
            </ul>
          </div>
          <div class="xlbot"></div></div>
   </li>
   
   <li class=""><a href="<%=path%>/index/menu?id=2" target="_self">政策法规</a>
             <div class="xlk" style="display: none;">
             <div class="xllb">
             <ul><li><a href="<%=path%>/index/menu?id=2" target="_self">相关政策</a> </li>
                 <li><a href="<%=path%>/index/menu?id=2" target="_self">相关法规</a> </li>
                 <li><a href="<%=path%>/index/menu?id=2" target="_self">办事指南</a> </li>  
             </ul>
               </div>
             <div class="xlbot"></div></div>
   </li>
   
  <li class=""><a href="<%=path%>/index/menu?id=3" target="_self">中心动态</a>
              <div class="xlk" style="display: none;">
              <div class="xllb">
              <ul><li><a href="<%=path%>/index/menu?id=3" target="_self">新闻动态</a> </li>
                  <li><a href="<%=path%>/index/menu?id=3" target="_self">通知公告</a> </li>   
             </ul>
              </div>
              <div class="xlbot"></div></div>
   </li>
   
   <li class=""><a href="<%=path%>/index/menu?id=4" target="_self">督查督办</a>
                <div class="xlk" style="display: none;">
                <div class="xllb">
                <ul><li><a href="<%=path%>/index/menu?id=4" target="_self">督查督办</a> </li>   
                </ul>
                </div>
                <div class="xlbot"></div></div>
   </li>
   
   <li><a href="<%=path%>/TipMsg/TipMsg" target="_self">举报投诉</a>
               <div class="xlk" style="display:none;">
               <div class="xllb">
               <ul><li><a href="<%=path%>/TipMsg/TipMsg" target="_self">违建举报</a> </li>
                   <li><a href="<%=path%>/TipMsg/tipList?pageNow=1" target="_self">举报信息</a> </li>
               </ul>
               </div>
              <div class="xlbot"></div></div>
   </li>
   
   <li class="last"><a href="<%=path%>/message/intoaddMessage">局长信箱</a></li>
   </ul>
   </div>
</div>

<div class="content">
<table width="100%" border="0" bgcolor="#ffffff" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="20%" valign="top" bgcolor="#bdcdff">
    <div class="cont_left">
    <div class="left_tit">
 <c:if test="${id==1}">政务公开</c:if>
    <c:if test="${id==2}">政策法规</c:if>
    <c:if test="${id==3}">中心动态</c:if>
    <c:if test="${id==4}">督查督办</c:if>
    <c:if test="${id==5}">举报投诉</c:if>
    <c:if test="${id==6}">局长信箱</c:if>
   </div>
    <div class="zx_list">
    <ul>
    <c:if test="${id==1}"><li><a href="#">南京市情</a></li><li><a href="#">机构概况</a> </li><li><a href="#">联系我们</a> </li><li><a href="#">领导视察</a> </li><li><a href="#">经验交流</a> </li><li><a href="#">联系我们</a> </li><li><a href="#">领导介绍</a> </li></c:if>
    <c:if test="${id==2}"><li><a href="#">相关政策</a></li><li><a href="#">相关法规</a></li><li><a href="#">办事指南</a></li></c:if>
    <c:if test="${id==3}"><li><a href="#">新闻动态</a></li><li><a href="#">工作简报</a></li><li><a href="#">通知公告</a></li></c:if>
    <c:if test="${id==4}"><li><a href="#">督查督办</a></li></c:if>
    <c:if test="${id==5}"><li><a href="<%=path%>/TipMsg/TipMsg">违建举报</a></li><li><a href="<%=path%>/TipMsg/tipList?pageNow=1">举报信息</a></li></c:if>
    <c:if test="${id==6}"></c:if>
    </ul>
    </div>
     <img src="<%=path%>/images/zw_14.jpg">
     <div class="zxtw">
     <ul>
     
     <li><h3><img src="<%=path%>/images/image/1494554616099.jpg"></h3>
     <p><span><a href="#">梳理疑难知识点 提高派…</a></span><span><img src="<%=path%>/images/new.gif"></span></p>
     </li>
     
     <li><h3><img src="<%=path%>/images/image/1494554616099.jpg"></h3>
     <p><span><a href="#">深入调研 结合实际 讲…</a></span><span><img src="<%=path%>/images/new.gif"></span></p>
     </li>
     
     <li><h3><img src="<%=path%>/images/image/1494554616099.jpg"></h3>
     <p><span><a href="#">数字化监督指挥中心对信…</a></span><span><img src="<%=path%>/images/new.gif"></span></p>
     </li>
     
     <li><h3><img src="<%=path%>/images/image/1494554616099.jpg"></h3>
     <p><span><a href="#">深入调研 结合实际 讲…</a></span><span><img src="<%=path%>/images/new.gif"></span></p>
     </li>
     
     </ul>
     </div>
    </div></td>
    <td width="80%" valign="top"><div class="cont_right" style="background-color: #f3f3f3; ">
    
    <div class="lb" >
    
     <div style="margin-left:200px;background-color: #f3f3f3; ">
  <form action="<%=request.getContextPath()%>/message/addMessage" method="post" id="form"  >
<input type="hidden" name="comments1" id="strTipPic1">
<input type="hidden" name="comments2" id="strTipPic2">
  <div style="margin-top:20px;" class="div_tip"><font class="font_tip">主题：</font><input placeholder="请填写意见主题" style="width:200px;" class="input_tip" name="messageTitle"></div>  
  <div style="margin-top:20px;height:180px;" class="div_tip"><font class="font_tip">详细描述：</font><textarea name="messageMsg" placeholder="最多可输入500个字" rows="7" cols="22"    style="font-size:18px;margin-left:5px;outline: none;margin-top: 9px;border:0px;"></textarea></div>  
  
  
  
<div style="height:120px;" class="div_tip">
<input type="file" id="choose" accept="image/*" multiple>
<ul class="img-list" style="padding-top:0px;">
<li style="background-image:url(' <%=request.getContextPath()%>/img/uploadImg.png');border:0px;padding-left:0px;" id="upload"></li>
</ul>


</div>

  
  <div style="width: 300px;height: 40px;background-color:#3399FF;color:white;font-size: 28px;text-align: center;line-height: 40px;margin-left: 25px;margin-top: 20px;" onclick="check()">提交</div>
</form>
   </div>
  
  
  
  
 <script>

var filechooser = document.getElementById("choose");

//    用于压缩图片的canvas
var canvas = document.createElement("canvas");
var ctx = canvas.getContext('2d');

//    瓦片canvas
var tCanvas = document.createElement("canvas");
var tctx = tCanvas.getContext("2d");

var maxsize = 100 * 1024;

$("#upload").on("click", function() {
      filechooser.click();
    })
    .on("touchstart", function() {
      $(this).addClass("touch")
    })
    .on("touchend", function() {
      $(this).removeClass("touch")
    });

filechooser.onchange = function() {
  if (!this.files.length) return;

  var files = Array.prototype.slice.call(this.files);

  if (files.length > 1) {
    alert("最多同时只可上传1张图片");
    return;
  }

  files.forEach(function(file, i) {
    if (!/\/(?:jpeg|png|gif)/i.test(file.type)) return;

    var reader = new FileReader();

    var li = document.createElement("li");

//        获取图片大小
    var size = file.size / 1024 > 1024 ? (~~(10 * file.size / 1024 / 1024)) / 10 + "MB" : ~~(file.size / 1024) + "KB";
    li.innerHTML = '<div class="progress"><span></span></div><div class="size">' + size + '</div>';
    var le= $(".img-list li").length;
    $($(li)).prependTo(".img-list");
    //$("#strTipPic"+le).val(uploadurl+)
    
    var houzui="jpeg";
  var nowtime = new Date();
	  var str = "" + nowtime.getFullYear();
	   str += (nowtime.getMonth()+1);
	   str += nowtime.getDate() ;
   str+=nowtime.getHours();
   str+=nowtime.getMinutes();
   str+=nowtime.getSeconds();
   str+="_"+le+"."+houzui;
    
    
    $("#strTipPic"+le).val(uploadurl+"/Img/TipImg/"+str)
   
   
    if(le==2){
    	$("#upload").css("display","none");
    }
    //$(".img-list").append($(li));
    reader.onload = function() {
      var result = this.result;
      var img = new Image();
      img.src = result;

      $(li).css("background-image", "url(" + result + ")");

      //如果图片大小小于100kb，则直接上传
      if (result.length <= maxsize) {
        img = null;

        upload(result, file.type, $(li));

        return;
      }

//    图片加载完毕之后进行压缩，然后上传
      if (img.complete) {
        callback();
      } else {
        img.onload = callback;
      }

      function callback() {
        var data = compress(img);

        upload(data, file.type, $(li));

        img = null;
      }

    };

    reader.readAsDataURL(file);
  })
};

//    使用canvas对大图片进行压缩
function compress(img) {
  var initSize = img.src.length;
  var width = img.width;
  var height = img.height;

  //如果图片大于四百万像素，计算压缩比并将大小压至400万以下
  var ratio;
  if ((ratio = width * height / 4000000) > 1) {
    ratio = Math.sqrt(ratio);
    width /= ratio;
    height /= ratio;
  } else {
    ratio = 1;
  }

  canvas.width = width;
  canvas.height = height;

//      铺底色
  ctx.fillStyle = "#fff";
  ctx.fillRect(0, 0, canvas.width, canvas.height);

  //如果图片像素大于100万则使用瓦片绘制
  var count;
  if ((count = width * height / 1000000) > 1) {
    count = ~~(Math.sqrt(count) + 1); //计算要分成多少块瓦片

//          计算每块瓦片的宽和高
    var nw = ~~(width / count);
    var nh = ~~(height / count);

    tCanvas.width = nw;
    tCanvas.height = nh;

    for (var i = 0; i < count; i++) {
      for (var j = 0; j < count; j++) {
        tctx.drawImage(img, i * nw * ratio, j * nh * ratio, nw * ratio, nh * ratio, 0, 0, nw, nh);

        ctx.drawImage(tCanvas, i * nw, j * nh, nw, nh);
      }
    }
  } else {
    ctx.drawImage(img, 0, 0, width, height);
  }

  //进行最小压缩
  var ndata = canvas.toDataURL('image/jpeg', 0.1);

  console.log('压缩前：' + initSize);
  console.log('压缩后：' + ndata.length);
  console.log('压缩率：' + ~~(100 * (initSize - ndata.length) / initSize) + "%");

  tCanvas.width = tCanvas.height = canvas.width = canvas.height = 0;

  return ndata;
}

//    图片上传，将base64的图片转成二进制对象，塞进formdata上传
function upload(basestr, type, $li) {
  var text = window.atob(basestr.split(",")[1]);
  var buffer = new Uint8Array(text.length);
  var pecent = 0, loop = null;

  for (var i = 0; i < text.length; i++) {
    buffer[i] = text.charCodeAt(i);
  }

  var blob = getBlob([buffer], type);

  var xhr = new XMLHttpRequest();

  var formdata = getFormData();

  formdata.append('imagefile', blob);
  ////
  var le= $(".img-list li").length-1;
  var str="2"+$("#strTipPic"+le).val().split("/2")[1];
   ///
  xhr.open('post', uploadurl+'/CourseImg/UpTipImg?name='+str);

  xhr.onreadystatechange = function() {
 	  
    if (xhr.readyState == 4 && xhr.status == 200) {
      var imagedata = JSON.parse(xhr.responseText);
      
      var text = imagedata.path ? '上传成功' : '上传失败';

      console.log(text + '：' + imagedata.path);

      clearInterval(loop);

      //当收到该消息时上传完毕
      $li.find(".progress span").animate({'width': "100%"}, pecent < 95 ? 200 : 0, function() {
        $(this).html(text);
      });

      if (!imagedata.path) return;

      $(".pic-list").append('<a href="' + imagedata.path + '">' + imagedata.name + '（' + imagedata.size + '）<img src="' + imagedata.path + '" /></a>');
    }
  };

  //数据发送进度，前50%展示该进度
  xhr.upload.addEventListener('progress', function(e) {
    if (loop) return;

    pecent = ~~(100 * e.loaded / e.total) / 2;
    $li.find(".progress span").css('width', pecent + "%");

    if (pecent == 50) {
      mockProgress();
    }
  }, false);

  //数据后50%用模拟进度
  function mockProgress() {
    if (loop) return;

    loop = setInterval(function() {
      pecent++;
      $li.find(".progress span").css('width', pecent + "%");

      if (pecent == 99) {
        clearInterval(loop);
      }
    }, 100)
  }

  xhr.send(formdata);
}

/**
 * 获取blob对象的兼容性写法
 * @param buffer
 * @param format
 * @returns {*}
 */
function getBlob(buffer, format) {
  try {
    return new Blob(buffer, {type: format});
  } catch (e) {
    var bb = new (window.BlobBuilder || window.WebKitBlobBuilder || window.MSBlobBuilder);
    buffer.forEach(function(buf) {
      bb.append(buf);
    });
    return bb.getBlob(format);
  }
}

/**
 * 获取formdata
 */
function getFormData() {
  var isNeedShim = ~navigator.userAgent.indexOf('Android')
      && ~navigator.vendor.indexOf('Google')
      && !~navigator.userAgent.indexOf('Chrome')
      && navigator.userAgent.match(/AppleWebKit\/(\d+)/).pop() <= 534;

  return isNeedShim ? new FormDataShim() : new FormData()
}

/**
 * formdata 补丁, 给不支持formdata上传blob的android机打补丁
 * @constructor
 */
function FormDataShim() {
  console.warn('using formdata shim');

  var o = this,
      parts = [],
      boundary = Array(21).join('-') + (+new Date() * (1e16 * Math.random())).toString(36),
      oldSend = XMLHttpRequest.prototype.send;

  this.append = function(name, value, filename) {
    parts.push('--' + boundary + '\r\nContent-Disposition: form-data; name="' + name + '"');

    if (value instanceof Blob) {
      parts.push('; filename="' + (filename || 'blob') + '"\r\nContent-Type: ' + value.type + '\r\n\r\n');
      parts.push(value);
    }
    else {
      parts.push('\r\n\r\n' + value);
    }
    parts.push('\r\n');
  };

  // Override XHR send()
  XMLHttpRequest.prototype.send = function(val) {
    var fr,
        data,
        oXHR = this;

    if (val === o) {
      // Append the final boundary string
      parts.push('--' + boundary + '--\r\n');

      // Create the blob
      data = getBlob(parts);

      // Set up and read the blob into an array to be sent
      fr = new FileReader();
      fr.onload = function() {
        oldSend.call(oXHR, fr.result);
      };
      fr.onerror = function(err) {
        throw err;
      };
      fr.readAsArrayBuffer(data);

      // Set the multipart content type and boudary
      this.setRequestHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
      XMLHttpRequest.prototype.send = oldSend;
    }
    else {
      oldSend.call(this, val);
    }
  };
}

</script> 
   
   
    </div></div></td>
  </tr>
</tbody></table>

</div>

<script language="javascript" type="text/javascript">


$(document).ready(function () {
	var code=${code};
	if(code==1){
		alert("提交成功！");
	}
})






function check(){
	var val1=$("#upload1").val();
	var val2=$("#upload2").val();
	var title=$("[name='messageTitle']").val();
	var msg=$("[name='messageMsg']").val();
	if(title.trim()==""||title.length>15){
		alert("主题不能为空且不超过15个字符")
	}else if(msg.trim()==""||msg.length>500){
		alert("描述不能为空且不超过500个字")
	}else{
		$('#form').submit();
	
	}
}
</script>


<div class="foot">
       <div class="footer">
       <div class="link"><div class="left">友情链接：</div><div class="right">您是第<span class="red">100</span>位访问者</div></div>
       <div class="linker">
       <ul>
       <li><a href="http://www.baidu.com/">百度网</a></li>
       <li><a href="http://www.youku.com/">优酷网</a></li>
       <li><a href="http://www.qq.com">腾讯网</a></li>
       <li><a href="http://www.baidu.com/">百度网</a></li>
       <li><a href="http://www.youku.com/">优酷网</a></li>
       <li><a href="http://www.qq.com">腾讯网</a></li>
       <li><a href="http://www.baidu.com/">百度网</a></li>
       <li><a href="http://www.youku.com/">优酷网</a></li>
       <li><a href="http://www.qq.com">腾讯网</a></li>
       <li><a href="http://www.baidu.com/">百度网</a></li>
        </ul>
          <div class="clear"></div>
         </div>
        <div class="bottom"><a href="#">联系我们</a> | <a href="#">网站留言</a> | <a href="#" title="收藏本站到你的收藏夹" >加入收藏</a> | <a href="#" title="设置本站为浏览器首页(启始页)" >设为首页</a> </div>
        </div>
</div>

<div class="foot1">
       <div style="font-family:Arial; width:500px;">
       <p>	版权所有 @ 南京市**********</p>
       <p>联系电话：025-12345678&nbsp;&nbsp;&nbsp;&nbsp; 邮箱：12345678@126.com &nbsp;&nbsp;&nbsp;&nbsp;建议分辨率：1280*1024</p>
       </div>
</div>


</body>
</html>
