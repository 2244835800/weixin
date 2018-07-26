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
<script type="text/javascript" src="<%=path%>/js/flowplayer-3.2.6.min.js"></script>
<title>门户网站</title>
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
   <li class><a href="<%=path%>/index/menu?id=1&type=1" target="_self">政务公开</a><div class="xlk" style="display: none;">
          <div class="xllb">
           <ul>
               <li><a href="<%=path%>/index/menu?id=1&type=1" target="_self">机构概况</a> </li>
               <li><a href="<%=path%>/index/menu?id=1&type=2" target="_self">联系我们</a> </li>
               <li><a href="<%=path%>/index/menu?id=1&type=3" target="_self">领导介绍</a> </li>   
            </ul>
          </div>
          <div class="xlbot"></div></div>
   </li>
   
   <li class=""><a href="<%=path%>/index/menu?id=2&type=1" target="_self">政策法规</a>
             <div class="xlk" style="display: none;">
             <div class="xllb">
             <ul><li><a href="<%=path%>/index/menu?id=2&type=1" target="_self">相关政策</a> </li>
                 <li><a href="<%=path%>/index/menu?id=2&type=2" target="_self">相关法规</a> </li>
                 <li><a href="<%=path%>/index/menu?id=2&type=3" target="_self">办事指南</a> </li>  
             </ul>
               </div>
             <div class="xlbot"></div></div>
   </li>
   
  <li class=""><a href="<%=path%>/index/menu?id=3&type=1" target="_self">中心动态</a>
              <div class="xlk" style="display: none;">
              <div class="xllb">
              <ul><li><a href="<%=path%>/index/menu?id=3&type=1" target="_self">新闻动态</a> </li>
                  <li><a href="<%=path%>/index/menu?id=3&type=2" target="_self">通知公告</a> </li>   
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
   
   <li><a href="<%=path%>/index/menu?id=5" target="_self">举报投诉</a>
               <div class="xlk" style="display:none;">
               <div class="xllb">
               <ul><li><a href="<%=path%>/TipMsg/TipMsg" target="_self">违建举报</a> </li>
                   <li><a href="<%=path%>/TipMsg/tipList?pageNow=1" target="_self">举报信息</a> </li>
               </ul>
               </div>
              <div class="xlbot"></div></div>
   </li>
   
   <li class="last"><a href="<%=path%>/message/intoaddMessage" target="_self">局长信箱</a>
   </li>
   
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
    <span style="font-size: 18px;margin-top: 10px;">公告主题：</span><span style="font-size: 18px;">${msgNotice.noticeTitle}</span>
   <br> <br>
   <span style="font-size: 18px;margin-top: 10px;">公告内容：</span><span style="font-size: 18px;">${msgNotice.noticeMsg}</span>
    <br> <br>
    <span style="font-size: 18px;margin-top: 10px;">发布时间：</span><span style="font-size: 18px;">${msgNotice.dateTime}</span>
    <br> <br>
  <c:if test="${msgNotice.comments!=''}"><img src="${msgNotice.comments}" style="height: 300px;width: 300px;"></c:if> 
    <br>
    </div></div></td>
  </tr>
</tbody></table>

</div>

<script language="javascript" type="text/javascript">

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
