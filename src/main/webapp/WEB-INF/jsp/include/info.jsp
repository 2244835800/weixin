
<%@page import="net.sf.json.JSON"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="weixin.pojo.SNSUserInfo,java.lang.*"%>
<%@ page import="com.ai.model.AdminTipMsg,java.lang.*"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="<%=request.getContextPath()%>/css/common.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
<style>blockquote,h1,h2,h3,h4,h5,h6,p{margin:0;padding:0}
body{font-family:"Microsoft YaHei",Helvetica,"Hiragino Sans GB",Arial,sans-serif;font-size:13px;line-height:18px;color:#737373;background-color:#fff;margin:10px 13px 10px 13px}table{margin:10px 0 15px 0;border-collapse:collapse}td,th{border:1px solid #ddd;padding:3px 10px}th{padding:5px 10px}a{color:#0069d6}a:hover{color:#0050a3;text-decoration:none}a img{border:none}p{margin-bottom:13px;font-family:"Microsoft YaHei"}h1,h2,h3,h4,h5,h6{color:#404040;line-height:36px}h1{margin-bottom:18px;font-size:30px}h2{font-size:24px}h3{font-size:18px}h4{font-size:16px}h5{font-size:14px}h6{font-size:13px}hr{margin:0 0 19px;border:0;border-bottom:1px solid #ccc}blockquote{padding:13px 13px 21px 15px;margin-bottom:18px;font-family:georgia,serif;font-style:italic}blockquote:before{content:"\201C";font-size:40px;margin-left:-10px;font-family:georgia,serif;color:#eee}blockquote p{font-size:16px;font-weight:300;line-height:18px;margin-bottom:0;font-style:italic}code,pre{font-family:Monaco,Andale Mono,Courier New,monospace}code{background-color:#fee9cc;color:rgba(0,0,0,.75);padding:1px 3px;font-size:12px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}pre{display:block;padding:14px;margin:0 0 18px;line-height:16px;font-size:11px;border:1px solid #d9d9d9;white-space:pre-wrap;word-wrap:break-word}pre code{background-color:#fff;color:#737373;font-size:11px;padding:0}sup{font-size:.83em;vertical-align:super;line-height:0}*{-webkit-print-color-adjust:exact}@media print{body,code,h1,h2,h3,h4,h5,h6,pre code{color:#000}pre,table{page-break-inside:avoid}}</style>
<title>管理员信息</title></head>
<body class="body_comm">
<div class="div_body">
        <div class="wk_title" >城管服务平台</div>
        <hr/>
        <div class="wk_msg">
            <div class="wk_msg_s" >
                                                    本次登录时间：${time}</br>
                                                  管理员姓名：${admin.strStaffName}</br>
               
            </div>
        </div>
    </div>

</body>
<script type="text/javascript">
$(document).ready(function(){

		
	   
});
</script>
</html>