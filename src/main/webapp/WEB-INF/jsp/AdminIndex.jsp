<%@ page language="java" import="java.util.*" pageEncoding="utf8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主页</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <script type="text/javascript" src="<%=path %>/js/zDialog.js"></script>
    <script type="text/javascript" src="<%=path %>/js/zDrag.js"></script>
</head>
<frameset rows="74px,*" frameborder="no" >
        <frame src="<%=request.getContextPath()%>/loggin/head" noresize="noresize" frameborder="no" name="head" id="head">
        <frameset cols="250px, *" frameborder="no" name="down" id="down">
            <frame src="<%=request.getContextPath()%>/loggin/menu" noresize="noresize" frameborder="no" name="leftMenu" id="leftMenu">
            <frame src="<%=request.getContextPath()%>/loggin/info" name="showframe" >
        </frameset>
    </frameset>
    
    
</html>