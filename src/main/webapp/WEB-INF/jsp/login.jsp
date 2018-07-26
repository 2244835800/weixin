<%@ page language="java" import="java.util.*" pageEncoding="utf8" contentType="text/html; charset=UTF-8"%>
<%
	String webpath = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>城管服务管理平台登录</title>
    <script type="text/javascript" src="<%=webpath%>/js/jquery-2.1.1.min.js"></script>
    <style>
        .input_common {
            float: left;
            width: 280px;
            height: 45px;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-left: 35px;
            line-height: 45px;
            vertical-align: middle;
        }

        .input_old {
            border: 1px solid #a0a0a0;
            color: #a0a0a0;
        }

        .input_new {
            border: 1px solid #f5a22b;
            color: #f5a22b;
        }

        .span_common {
            padding-left: 5px;
            font-size: 18px;
            width: 59px;
        }

        .input_text {
            padding-left: 5px;
            font-size: 18px;
            color: #f5a22b;
            border: 0px;
            width:179px
        }

        .input_button {
            margin-top: 60px;
            background-color: #f5a22b;
            border: 0px;
            font-size: 18px;
            color: white;
        }
    </style>
</head>
<body>
<div style="float: left; width: 100%; margin-top: 50px;">
    <div style="width: 50%; float: left;"><img src="<%=webpath%>/img/bg_adorn.png" style="float: right; margin-right: 5%;"></div>
    <div style="width: 50%; float: left;">
        <div style="width: 355px; height: 400px; margin-top: 50px; margin-left: 5%; border-radius: 4px; border: 1px solid gray;">
            <!--  img src="<%=webpath%>/img/logo.png" style="margin-left: 42px; margin-top: 20px; margin-bottom: 10px; float: left;">-->
            <form  action="<%=webpath%>/loggin/staffLogin" method="post" novalidate="novalidate" onsubmit="return submmit();">
            <div class="input_common input_old" id="input_name">
                <span class="span_common" style="float: left;width: 35px;margin-left: 5px;"><img src="<%=webpath%>/imags/login_user.png" style="height:25px;width:25px;margin-top: 10px;"></span>
                <input type="text" style="outline: none;float: left;margin-top: 12px;" class="input_text" onfocus="changeCol('input_name');" onBlur="cancel('input_name')" placeholder="请输入账号" name="strStaffContactMp" value="${staff.strStaffContactMp}"/>
            </div>
            <div class="input_common input_old" id="input_pwd">
                <span class="span_common" style="float: left;width: 35px;margin-left: 5px;"><img src="<%=webpath%>/imags/login_password.png" style="height:25px;width:25px;margin-top: 10px;"></span>
                <input type="password" style="outline: none;float: left;margin-top: 12px;" class="input_text" onfocus="changeCol('input_pwd');" onBlur="cancel('input_pwd')" placeholder="请输入密码" name="strLoginCode" value="${staff.strLoginCode}"/>
            </div>
            <a style="margin-left: 245px; padding-top: 10px; color: #f5a22b;text-decoration:none;" href="<%=webpath%>/Loggin/findPass" target="_blank"> 忘记密码？</a>
            <input type="submit" value="登录" class="input_common input_button" style="border-radius:3px">
            </form>
        </div>
    </div>
</div>
<div style="float: left; width: 100%; margin-top: 50px; background-image: url(<%=webpath%>/img/bg.png); height: 307px;">
</div>
<div style="float: left;width: 100%;height:50px;background-color:gray;"><font style="margin-left:38%;color: white;font-size: 15px" >2016 @ 技术有限公司.All Rights Reserved</font>
<font style="margin-left:40%;color: white;font-size: 15px" >浏览器支持IE10+、Firefox(V40+)、Chrome.</font></div>



<script language="javascript" type="text/javascript">
$(document).ready(function () {
	if (window != top){top.location.href = location.href;}
	var code=${code}1;
	
	if(code==21){
		alert("账号错误");
	}else if(code==31){
		alert("密码错误");
	}
	
})
    function changeCol(inputType) {
        $("#" + inputType).removeClass('input_old');
        $("#" + inputType).addClass('input_new');
        if(inputType=="input_name"){
	    	$("#" + inputType).children("span").children("img").attr("src","/Course/imags/login_user_on.png")
	    }else if(inputType=="input_pwd"){
	    	$("#" + inputType).children("span").children("img").attr("src","/Course/imags/login_password_on.png")
	    }
    }
function cancel(inputType) {
	if($("#" + inputType).children("input").val()==""){
		$("#" + inputType).removeClass('input_new');
	    $("#" + inputType).addClass('input_old');
	    if(inputType=="input_name"){
	    	$("#" + inputType).children("span").children("img").attr("src","/Course/imags/login_user.png")
	    }else if(inputType=="input_pwd"){
	    	$("#" + inputType).children("span").children("img").attr("src","/Course/imags/login_password.png")
	    }
	}
}
    function submmit(){
    	var strStaffContactMp=$("[name=strStaffContactMp]").val()
    	var strLoginCode=$("[name=strLoginCode]").val();
    	if(strStaffContactMp==""||strLoginCode==""){
    		alert("用户名和密码不可为空")
    		return false;
    	}else{
    		return true;
    	}
    	
    }
</script>
</body>
</html>