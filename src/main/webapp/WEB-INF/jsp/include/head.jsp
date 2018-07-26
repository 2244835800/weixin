<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/css/common.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.2.min.js"></script>
</head>
<body>
    <div class="head_div">
    <input type="hidden" id="admin" value="${admin.strStaffName}">
    <input  type="hidden" id="adminId" value="${admin.staffId}">
        <div class="logo"><img class="img_logo" src="<%=request.getContextPath()%>/img/title.png"></div>
        <div class="search_div" >
            <input type="text" style="outline: none;" class="search_input"/>
            <img class="search_img" src="<%=request.getContextPath()%>/img/search.png" onclick=""/>
        </div>
        <div class="login_div" >
            <img src="<%=request.getContextPath()%>/img/personal.png" class="login_img" onclick="aa()">
            <img src="<%=request.getContextPath()%>/img/set.png" class="login_img" onclick="bb()"  >
           <a href="signOut" target="_top"><img src="<%=request.getContextPath()%>/img/logout.png" class="login_img" onclick="return confirm('确认要退出登录吗?')"></a> 
        </div>
    </div>
</body>
<script language="javascript" type="text/javascript">
           

   
           function aa(){  //修改管理员信息
        	   adminame=$("#admin").val();
        	   $(parent.frames[2].document.body).find("#newdiv").remove();
        	   $("#updatecode").attr("onclick","aa()");
        	   var boarddiv = "<div style='width: 800px; height: auto; position: absolute; top: 50px; left: 200px; display: block; float: left; z-index: 4;' id='newdiv'><div style='width: 800px; height: 50px; line-height: 50px; vertical-align: middle; background-color: #f5a22b; color: white; font-weight: bold;border: thin solid #f5a22b;'><span style='float: left;padding-left: 10px;' id='span_title'>编辑信息</span> <span style='float: right;padding-right: 10px; cursor: default; font-size: 24px;' id='guanbi' onclick='guanbi()' '>×</span></div><input type='hidden'  name='staffId' value='${admin.staffId}' ><div style='width: 800px; height: auto; float: left; background-color: white; border: thin solid #bababa;'><div style='width: 800px; height: 35px; line-height: 35px; vertical-align: middle; float: left; margin-top: 28px;'><div style='width: 100px; padding-left: 60px; color: black; font-size: 18px; font-weight: bold; float: left;'>管理员名称</div><div><input class='easyui-textbox' style='width:400px; height:35px;' name='strStaffName' value="+adminame+" id='sstaff' ></div></div><div style='width: 800px; height: 35px; line-height: 35px; vertical-align: middle; float: left; margin-top: 28px; margin-bottom: 20px; margin-bottom: 32px; text-align: center;'><input id='save_edit' type='button' class='btn_save btn_bgc_save' value='保&nbsp;&nbsp;存' onclick='refre()' ></div></div></div>";
        	 
              $(parent.frames[2].document.body).prepend(boarddiv);
              
           }
           function bb(){//修改管理员密码
        	   $(parent.frames[2].document.body).find("#newdiv2").remove();
        	   $("#updatecode").attr("onclick","aa()");
        	   var boarddiv = "<div style='width: 800px; height: auto; position: absolute; top: 50px; left: 200px; display: block; float: left; z-index: 4;' id='newdiv2'><div style='width: 800px; height: 50px; line-height: 50px; vertical-align: middle; background-color: #f5a22b; color: white; font-weight: bold;border: thin solid #f5a22b;'><span style='float: left;padding-left: 10px;' id='span_title'>修改密码</span> <span style='float: right;padding-right: 10px; cursor: default; font-size: 24px;' id='guanbi2' onclick='guanbi2()' '>×</span></div><input type='hidden'  name='staffId' value='${admin.staffId}'  ><div style='width: 800px; height: auto; float: left; background-color: white; border: thin solid #bababa;'><div style='width: 800px; height: 35px; line-height: 35px; vertical-align: middle; float: left; margin-top: 28px;'><div style='width: 100px; padding-left: 60px; color: black; font-size: 18px; font-weight: bold; float: left;'>旧密码</div><div><input class='easyui-textbox' style='width:400px; height:35px;' name='oldCode' onKeyUp="+"value=value.replace(/[^a-zA-Z0-9]/g,'')"+" id='adminoldCode' ></div></div><div style='width: 800px; height: 35px; line-height: 35px; vertical-align: middle; float: left; margin-top: 28px;'><div style='width: 100px; padding-left: 60px; color: black; font-size: 18px; font-weight: bold; float: left;'>新密码</div><div><input class='easyui-textbox' style='width:400px; height:35px;' name='newCode' id='adminnewCode' onKeyUp="+"value=value.replace(/[^a-zA-Z0-9]/g,'')"+"  ></div></div><div style='width: 800px; height: 35px; line-height: 35px; vertical-align: middle; float: left; margin-top: 28px; margin-bottom: 20px; margin-bottom: 32px; text-align: center;'><input id='save_edit' type='button'  class='btn_save btn_bgc_save' value='保&nbsp;&nbsp;存' onclick='savecode()' ></div></div></div>";
        	 
              $(parent.frames[2].document.body).prepend(boarddiv);
        	   
           }
           
</script>
</html>