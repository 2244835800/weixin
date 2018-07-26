<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>菜单</title>
    <link href="<%=request.getContextPath()%>/css/common.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.2.min.js"></script>
</head>
<body>

<div class="memu">
    <div class="menu_tree">
         <a class="menu_a" href="/Course/news/getNewsList" target="showframe" onclick="openSrc('menu_new');">
            <div class="menu_info" id="menu_new">
                <img class="menu_img" id="img_menu_new" class="img_menu_new" src="<%=request.getContextPath()%>/img/menu_new.png">
                <span class="span_title" id="villageName">新闻发布</span>
            </div>
        </a>
         <a class="menu_a" href="/Course/notice/getNoticeList" target="showframe" onclick="openSrc('menu_notice');">
            <div class="menu_info" id="menu_notice">
                <img class="menu_img" id="img_menu_notice" src="<%=request.getContextPath()%>/img/menu_notice.png">
                <span class="span_title">公告发布</span>
            </div>
        </a>
        
         <a class="menu_a" href="/Course/case/caseList" target="showframe"  onclick="openSrc('menu_case');">
            <div class="menu_info" id="menu_case">
                <img class="menu_img" id="img_menu_case" src="<%=request.getContextPath()%>/img/menu_case.png"  ">
                <span class="span_title">案件管理</span>
            </div>
        </a>
        
        <a class="menu_a" href="/Course/evaluation/evaluationList" target="showframe" onclick="openSrc('menu_evaluation');">
            <div class="menu_info" id="menu_evaluation">
                <img class="menu_img" id="img_menu_evaluation" src="<%=request.getContextPath()%>/img/menu_evaluation.png">
                <span class="span_title">考评管理</span>
            </div>
        </a>
        <a class="menu_a" href="/Course/connect/connectus" target="showframe" onclick="openSrc('menu_connect');">
            <div class="menu_info" id="menu_connect">
                <img class="menu_img" id="img_menu_connect" src="<%=request.getContextPath()%>/img/menu_connect.png">
                <span class="span_title">联系我们</span>
            </div>
        </a>
        <a class="menu_a" href="/Course/law/getLawList" target="showframe" onclick="openSrc('menu_law');">
            <div class="menu_info" id="menu_law">
                <img class="menu_img" id="img_menu_law" src="<%=request.getContextPath()%>/img/menu_law.png">
                <span class="span_title">政策法规</span>
            </div>
        </a>
       <c:if test="${admin.intPermission==2}">
        <a class="menu_a" href="/Course/message/messageList" target="showframe" onclick="openSrc('menu_apply');">
            <div class="menu_info" id="menu_apply">
                <img class="menu_img" id="img_menu_apply" src="<%=request.getContextPath()%>/img/menu_apply.png">
                <span class="span_title">局长信箱</span>
            </div>
        </a>
        </c:if>
    </div>
</div>

<script language="javascript" type="text/javascript">
    function openSrc(inputType) {
        $(".menu_info").each(function () {
            var id = $(this).attr("id");
            $(this).removeClass('rb');
            $("#img_" + id).attr('src', '<%=request.getContextPath()%>/img/' + id + ".png");
        })

        $("#" + inputType).addClass('rb');
        $("#img_" + inputType).attr("src", "<%=request.getContextPath()%>/img/" + inputType + "_s.png");
    }
    
  //  if (window != top)     
    //top.location.href = location.href;  \
  
</script>
</body>
</html>
