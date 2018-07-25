<%@page import="net.sf.json.JSON" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.les.weixin.pojo.SNSUserInfo,java.lang.*" %>
<%@ page import="com.les.ai.entity.AdminTipMsg" %>
<%@ page import="java.util.ResourceBundle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="<%=request.getContextPath()%>/css/common.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/config.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=wDYEcxgRRheZwyC9jpN1Tt7fzr2zjosZ"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <style>blockquote, h1, h2, h3, h4, h5, h6, p {
        margin: 0;
        padding: 0
    }

    .div_tip {
        margin-left: 0;
        border: 1px solid #ddd;
    }

    .input_tip {
    }

    .div_tip {
        width: 100%;
    }

    .title-btn {
        box-sizing: border-box;
        width: 100%;
        height: 50px;
        background: linear-gradient(#f0f0f0, #cfcfcf);
        line-height: 50px;
        color: #555;
        font-size: 18px;
        padding-left: 20px;
        box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.5)
    }

    body {
        font-family: "Microsoft YaHei", Helvetica, "Hiragino Sans GB", Arial, sans-serif;
        font-size: 13px;
        line-height: 18px;
        color: #737373;
        background-color: #fff;
        margin: 10px 13px 10px 13px
    }

    table {
        margin: 10px 0 15px 0;
        border-collapse: collapse
    }

    td, th {
        border: 1px solid #ddd;
        padding: 3px 10px
    }

    th {
        padding: 5px 10px
    }

    a {
        color: #0069d6
    }

    a:hover {
        color: #0050a3;
        text-decoration: none
    }

    a img {
        border: none
    }

    p {
        margin-bottom: 13px;
        font-family: "Microsoft YaHei"
    }

    h1, h2, h3, h4, h5, h6 {
        color: #404040;
        line-height: 36px
    }

    h1 {
        margin-bottom: 18px;
        font-size: 30px
    }

    h2 {
        font-size: 24px
    }

    h3 {
        font-size: 18px
    }

    h4 {
        font-size: 16px
    }

    h5 {
        font-size: 14px
    }

    h6 {
        font-size: 13px
    }

    hr {
        margin: 0 0 19px;
        border: 0;
        border-bottom: 1px solid #ccc
    }

    blockquote {
        padding: 13px 13px 21px 15px;
        margin-bottom: 18px;
        font-family: georgia, serif;
        font-style: italic
    }

    blockquote:before {
        content: "\201C";
        font-size: 40px;
        margin-left: -10px;
        font-family: georgia, serif;
        color: #eee
    }

    blockquote p {
        font-size: 16px;
        font-weight: 300;
        line-height: 18px;
        margin-bottom: 0;
        font-style: italic
    }

    code, pre {
        font-family: Monaco, Andale Mono, Courier New, monospace
    }

    code {
        background-color: #fee9cc;
        color: rgba(0, 0, 0, .75);
        padding: 1px 3px;
        font-size: 12px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px
    }

    pre {
        display: block;
        padding: 14px;
        margin: 0 0 18px;
        line-height: 16px;
        font-size: 11px;
        border: 1px solid #d9d9d9;
        white-space: pre-wrap;
        word-wrap: break-word
    }

    pre code {
        background-color: #fff;
        color: #737373;
        font-size: 11px;
        padding: 0
    }

    sup {
        font-size: .83em;
        vertical-align: super;
        line-height: 0
    }

    * {
        -webkit-print-color-adjust: exact
    }

    @media screen and (min-width: 914px) {
        body {
            width: 854px;
            margin: 10px auto
        }
    }

    @media print {
        body, code, h1, h2, h3, h4, h5, h6, pre code {
            color: #000
        }

        pre, table {
            page-break-inside: avoid
        }
    }

    * {
        margin: 0;
        padding: 0;
    }

    li {
        list-style-type: none;
    }

    a, input {
        outline: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    }

    #choose {
        display: none;
    }

    canvas {
        width: 100%;
        border: 1px solid #000000;
    }

    .touch {
        background-color: #ddd;
    }

    .img-list {
        margin: 5px 5px;
    }

    .img-list li {
        position: relative;
        display: inline-block;
        width: 80px;
        height: 80px;
        margin: 5px 5px 20px 5px;
        border: 1px solid rgb(100, 149, 198);
        background: #fff no-repeat center;
        background-size: cover;
        float: left;
    }

    .progress {
        position: absolute;
        width: 100%;
        height: 20px;
        line-height: 20px;
        bottom: 0;
        left: 0;
        background-color: rgba(100, 149, 198, .5);
    }

    .progress span {
        display: block;
        width: 0;
        height: 100%;
        background-color: rgb(100, 149, 198);
        text-align: center;
        color: #FFF;
        font-size: 13px;
    }

    .size {
        position: absolute;
        width: 100%;
        height: 15px;
        line-height: 15px;
        bottom: -18px;
        text-align: center;
        font-size: 13px;
        color: #666;
    }

    .tips {
        display: block;
        text-align: center;
        font-size: 13px;
        margin: 10px;
        color: #999;
    }

    .pic-list {
        margin: 10px;
        line-height: 18px;
        font-size: 13px;
    }

    .pic-list a {
        display: block;
        margin: 10px 0;
    }

    .pic-list a img {
        vertical-align: middle;
        max-width: 30px;
        max-height: 30px;
        margin: -4px 0 0 10px;
    }

    .font_tip {
        width: 100px;
        text-align: right;
        padding: 0;
    }

    .input_tip {
        width: calc(100% - 100px);
        height: 100%;
        margin-left: 0;
    }

    .mySelect {
        height: 40px;
        width: calc(100% - 110px);
        font-size: 18px;
        line-height: 40px;
        color: initial;
    }

    #openMap {
        position: absolute;
        right: 4px;
        top: 4px;
    }

    .submitBtn {
        width: 70%;
        height: 40px;
        background-color: #3399FF;
        color: white;
        font-size: 20px;
        text-align: center;
        line-height: 40px;
        margin: 20px auto;
        border-radius: 4px;
        letter-spacing: 10px;
    }

    .sureBtn {
        width: 60px;
        height: 28px;
        background-color: #3d8fff;
        float: right;
        border: 0;
        border-radius: 4px;
        color: #fff;
    }

    .imgClose {
        position: absolute;
        right: -5px;
        top: -5px;
        z-index: 99;
    }

    .newImg {
        width: 100%;
        height: 100%;
    }
    </style>
    <title>微信举报</title></head>
<body style="background-color:#f3f3f3;">
<div id="map" style="display:none">
    <div id="allmap" style="width: 100%;height: 500 ;margin: 0;"></div>
    <div id="map_address"></div>
    <button class="sureBtn" onclick="getMapAddress()">确定</button>
</div>
<%
    // 获取由OAuthServlet中传入的参数
    SNSUserInfo user = (SNSUserInfo) request.getAttribute("snsUserInfo");
    String state = request.getAttribute("state").toString();
    String code = request.getAttribute("code").toString();
    String appId = request.getAttribute("AppID").toString();
    String uploadurl = request.getAttribute("baseUrl").toString();
    if (null != user) {
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();

%>
<fieldset style="padding:10px;" id="fieldset">
    <legend style="margin-left:20px;">微信举报</legend>
    <form action="<%=request.getContextPath()%>/TipMsg/addTipMsg" method="post" id="form">
        <input type="hidden" name="strTipPic1" id="strTipPic1">
        <input type="hidden" name="strTipPic2" id="strTipPic2">
        <input type="hidden" name="x" id="x">
        <input type="hidden" name="y" id="y">
        <%--<input type="hidden" name="openid" id="strWeixinId" value="<%=user.getOpenId()%>">--%>
        <div style="" class="div_tip">
            <font class="font_tip">&nbsp;&nbsp;&nbsp;举报人：</font>
            <input placeholder="请填写联系人姓名" class="input_tip" name="strPersonName" id="strPersonName">
        </div>
        <div style="margin-top:20px;" class="div_tip">
            <font class="font_tip">联系方式：</font>
            <input placeholder="请填写联系方式" class="input_tip" name="strPersonTelphone">
        </div>

        <div style="margin-top:20px;position:relative;" class="div_tip">
            <font class="font_tip">案件地址：</font>
            <input placeholder="请填写具体地址" id="address"
                   class="input_tip" name="comments" style="width:calc(100% - 140px)">
            <img src="<%=request.getContextPath()%>/img/map.png" alt="" id="openMap">
        </div>

        <div style="margin-top:20px;" class="div_tip">
            <font class="font_tip">举报项目：</font>
            <select class="mySelect" id="sel_type" name="strTipType" lay-verify="required">
                <option value="0">请选择</option>
                <option value="101">市容环境</option>
                <option value="102">宣传广告</option>
                <option value="103">施工管理</option>
                <option value="104">突发事件</option>
                <option value="105">街面秩序</option>
                <option value="201">公共设施</option>
            </select>
        </div>

        <%--<div style="margin-top:20px;" class="div_tip">
            <font class="font_tip">所属区域：</font>
            <select class="mySelect" id="sel_district" name="districtId" lay-verify="required">
                <option value="0">请选择</option>

                <option value="410581004">桂园街道办事处</option>
                <option value="410581001">开元街道办事处</option>
                <option value="410581003">龙山街道办事处</option>
                <option value="410581002">振林街道办事处</option>
            </select>
        </div>--%>

        <div style="margin-top:20px;height:180px;" class="div_tip"><font class="font_tip">详细描述：</font><textarea
                name="strTipDescription" placeholder="最多可输入100个字" rows="7" cols="22"
                style="font-size:18px;margin-left:5px;outline: none;margin-top: 9px;border:0px;"></textarea></div>


        <div style="height:110px;" class="div_tip">
            <input type="file" id="choose" accept="image/*" multiple>
            <ul class="img-list">
                <li style="background-image:url(' <%=request.getContextPath()%>/img/uploadImg.png');border:0px;"
                    id="upload"></li>
            </ul>

        </div>

        <div class="submitBtn" onclick="check()">上报</div>
    </form>
</fieldset>
<%
    } else
        out.print("用户不同意授权,未获取到用户信息！");
%>

</body>
<script language="javascript" type="text/javascript">
    var timestamp = Date.parse(new Date());
    var nonceStr = uuid();
    var appid = "<%=appId%>";
    var baseUrl = "";
    var code = "<%=code%>"
    var state = "<%=state%>"
    var pageUrl = baseUrl + "testAdd.jsp";
    var thisLon, thisLat, geocodeMsg

    function removeLi(e) {
        $(e).parent().remove();
        if ($("#upload").css("display") == "none") {
            $("#upload").show();
        }
    };

    //跟后台通信取得签名并验证
    $.ajax({
        url: "${pageContext.request.contextPath}/getTicket/getSign",
        data: {"noncestr": nonceStr, "pageurl": pageUrl, "timestamp": timestamp, "code": code, "state": state},
        type: "GET",
        async: false,
        success: function (data) {
//            $.parseJSON(data);
            wx.config({
                debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                appId: appid, // 必填，公众号的唯一标识
                timestamp: data.timestamp, // 必填，生成签名的时间戳
                nonceStr: data.nonceStr, // 必填，生成签名的随机串
                signature: data.signature,// 必填，签名
                jsApiList: ["openLocation", "getLocation"] // 必填，需要使用的JS接口列表
            });
        }
    });

    //通过ready接口处理成功验证
    wx.ready(function () {
//执行取得经纬度的方法
        wx.getLocation({
            type: 'gcj02', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
            success: function (res) {
                thisLat = res.latitude; // 纬度，浮点数，范围为90 ~ -90
                thisLon = res.longitude; // 经度，浮点数，范围为180 ~ -180。
                $("#strPersonName").val("Hello World");
                //逆地理编码
                $.ajax({
                    type: "POST",
                    url: "http://restapi.amap.com/v3/geocode/regeo",
                    data: {
                        output: 'json',
                        location: thisLon + "," + thisLat,
                        key: '8a7677afd5f354b61209e6ceec9aafaf'
                    },
                    success: function (req) {
                        var addresscom = req.regeocode.addressComponent;
                        if (addresscom.towncode.length === 0) {
                            addresscom.towncode = "000000000000";
                            addresscom.township = "";
                        }
                        geocodeMsg = {
                            province: addresscom.province,
                            provincecode: (addresscom.towncode).substr(0, 2) + "0000",
                            city: addresscom.city,
                            citycode: (addresscom.towncode).substr(0, 4) + "00",
                            district: addresscom.district,
                            districtcode: (addresscom.towncode).substr(0, 6),
                            township: addresscom.township,
                            towncode: addresscom.towncode,
                            address: req.regeocode.formatted_address
                        };
                        var provLength = geocodeMsg.province.length;
                        var cityLength = geocodeMsg.city.length;
                        var shortAddress;
                        if (geocodeMsg.address) {
                            shortAddresss = geocodeMsg.address.substr(provLength + cityLength);
                        } else {
                            shortAddresss = "未知"
                        }
                        $("#address").val(shortAddresss);
                        $("#x").val(thisLon);
                        $("#y").val(thisLat);
                    }
                });
            }
        });

//打开微信端地图
        $("#openMap").on("click", function () {
//            wx.openLocation({
//                latitude: thisLat,
//                longitude: thisLon
//
//            });
//            window.location.href="baiduMap.jsp?";
            openMap();
            document.getElementById("map").style.display = "";//显
            document.getElementById("fieldset").style.display = "none";//显
        });
    });

    //通过error接口处理失败验证
    wx.error(function (res) {
        console.log(res);
    });

    //生成UUID
    function uuid() {
        return 'xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }

    $(document).ready(function () {


//限制字符个数
        $("a").each(function () {

            var maxwidth = 10;
            if ($(this).text().length > maxwidth) {
                $(this).text($(this).text().substring(0, maxwidth));
                $(this).html($(this).html() + '…');
            }
        });


    });


    function check() {
        var sendtype = $("#sel_type").val();
        var sendPlace = $("#sel_district").val();

        var val1 = $("#upload1").val();
        var val2 = $("#upload2").val();
        var name = $("[name='strPersonName']").val();
        var phone = $("[name='strPersonTelphone']").val();
        var des = $("[name='strTipDescription']").val();
        var comments = $("[name='comments']").val();
        if (name.trim() == "" || name.length > 15) {
            alert("姓名不能为空且不超过15个字符")
        } else if (phone.replace(/[^0-9]/g, '') == "" || !(/^1(3[0-9]|4[5,7]|5[0-9]|7[6-8]|8[0-9])\d{4,8}$/.test(phone))) {
            alert("请填写正确的联系方式")
        } else if (sendtype == "0") {
            alert("请选择举报项目")
        } else if (sendPlace == "0") {
            alert("请选择所属区域")
        } else if (des.trim() == "" || des.length > 500) {
            alert("描述不能为空且不超过100个字")
        } else if (comments.trim() == "" || comments.length > 300) {
            alert("地址不能为空且不超过300个字")
        } else {
            $('#form').submit();

        }
    }
</script>
<script>
    var uploadurl = "<%=uploadurl%>";
    var filechooser = document.getElementById("choose");

    //    用于压缩图片的canvas
    var canvas = document.createElement("canvas");
    var ctx = canvas.getContext('2d');

    //    瓦片canvas
    var tCanvas = document.createElement("canvas");
    var tctx = tCanvas.getContext("2d");

    var maxsize = 100 * 1024;

    $("#upload").on("click", function () {
        filechooser.click();
    })
        .on("touchstart", function () {
            $(this).addClass("touch")
        })
        .on("touchend", function () {
            $(this).removeClass("touch")
        });

    filechooser.onchange = function () {
        if (!this.files.length) return;

        var files = Array.prototype.slice.call(this.files);

        if (files.length > 1) {
            alert("最多同时只可上传1张图片");
            return;
        }

        files.forEach(function (file, i) {
            if (!/\/(?:jpeg|png|gif)/i.test(file.type)) return;

            var reader = new FileReader();

            var li = document.createElement("li");

//        获取图片大小
            var size = file.size / 1024 > 1024 ? (~~(10 * file.size / 1024 / 1024)) / 10 + "MB" : ~~(file.size / 1024) + "KB";
            li.innerHTML = '<div class="progress"><span></span></div><div class="size">' + size + '</div>';
            var le = $(".img-list li").length;
            $($(li)).prependTo(".img-list");

            var houzui = "jpeg";
            var nowtime = new Date();
            var str = "" + nowtime.getFullYear();
            str += (nowtime.getMonth() + 1) < 10 ? "0" + (nowtime.getMonth() + 1) : (nowtime.getMonth() + 1);
            str += nowtime.getDate() < 10 ? "0" + nowtime.getDate() : nowtime.getDate();
            str += nowtime.getHours() < 10 ? "0" + nowtime.getHours() : nowtime.getHours();
            str += nowtime.getMinutes() < 10 ? "0" + nowtime.getMinutes() : nowtime.getMinutes();
            str += nowtime.getSeconds() < 10 ? "0" + nowtime.getSeconds() : nowtime.getSeconds();
            str += "_" + le + "." + houzui;

            $("#strTipPic" + le).val(str)

            if (le == 2) {
                $("#upload").css("display", "none");
            }
            //$(".img-list").append($(li));
            reader.onload = function () {
                var result = this.result;
                var img = new Image();
                img.src = result;

                var newImg = '<img src="' + result + '" class="newImg">'
//                $(li).css("background-image", "url(" + result + ")");
                $(li).append(newImg);
                var imgClose = '<img class="imgClose" src="img/close.png" onclick=removeLi(this)>';

                $(".newImg").on({
                    touchstart: function (e) {
                        // 长按事件触发
                        timeOutEvent = setTimeout(function () {
                            timeOutEvent = 0;
                            if ($(e.currentTarget).next().length > 0) {

                            } else {
                                $(e.currentTarget).parent().append(imgClose)
                            }
                        }, 500);
                        //长按500毫秒
                        // e.preventDefault();
                    },
                    touchmove: function () {
                        clearTimeout(timeOutEvent);
                        timeOutEvent = 0;
                    },
                    touchend: function (e) {
                        clearTimeout(timeOutEvent);
                        if (timeOutEvent != 0) {
                            // 点击事件
                            // location.href = '/a/live-rooms.html';
                            //alert('你点击了');
                            $(e.currentTarget).next().remove();
                        }
                        return false;
                    }
                });


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
        var le = $(".img-list li").length - 1;
        var str = $("#strTipPic" + le).val();
//        str = str.replace("jpeg","jpg")
///
//        alert(uploadurl + '/TipMsg/upTipImg?name=' + str)
        xhr.open('post', uploadurl + '/TipMsg/upTipImg?name=' + str);


        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var imagedata = JSON.parse(xhr.responseText);

                var text = imagedata.path ? '上传成功' : '上传失败';

                var currfilename = imagedata.filename;
                if ($("#strTipPic1").val() == currfilename) {
                    $("#strTipPic1").val(imagedata.path)
                } else if ($("#strTipPic2").val() == currfilename) {
                    $("#strTipPic2").val(imagedata.path)
                }

                clearInterval(loop);

                //当收到该消息时上传完毕
                $li.find(".progress span").animate({'width': "100%"}, pecent < 95 ? 200 : 0, function () {
                    $(this).html(text);
                });

                if (!imagedata.path) return;

                $(".pic-list").append('<a href="' + imagedata.path + '">' + imagedata.name + '（' + imagedata.size + '）<img src="' + imagedata.path + '" /></a>');
            }
        };

//数据发送进度，前50%展示该进度
        xhr.upload.addEventListener('progress', function (e) {
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

            loop = setInterval(function () {
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
            buffer.forEach(function (buf) {
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

        this.append = function (name, value, filename) {
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
        XMLHttpRequest.prototype.send = function (val) {
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
                fr.onload = function () {
                    oldSend.call(oXHR, fr.result);
                };
                fr.onerror = function (err) {
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

    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var geoc = new BMap.Geocoder();
    //    map.centerAndZoom(point, 11);
    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function (r) {
        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.centerAndZoom(r.point, 13);
            getAddress(r.point);
        }
        else {
            alert('failed' + this.getStatus());
        }
    }, {enableHighAccuracy: true})

    map.addEventListener("click", showInfo);

    function getAddress(point) {
        geoc.getLocation(point, function (rs) {
            var addComp = rs.addressComponents;
            var addr = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            setValueForDiv("map_address", addr);
        });
    }

    function showInfo(e) {
        var pt = e.point;
        getAddress(pt);
        var marker = new BMap.Marker(pt);
        map.clearOverlays();
        map.addOverlay(marker);
    }

    function openMap() {
        map = new BMap.Map("allmap");
        geoc = new BMap.Geocoder();
//    map.centerAndZoom(point, 11);
        geolocation = new BMap.Geolocation();
        geolocation.getCurrentPosition(function (r) {
            if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                var mk = new BMap.Marker(r.point);
                map.addOverlay(mk);
                map.centerAndZoom(r.point, 13);
                getAddress(r.point);
            }
            else {
                alert('failed' + this.getStatus());
            }
        }, {enableHighAccuracy: true})

        map.addEventListener("click", showInfo);
    }

    function setValueForDiv(id, content) {
        var element = document.getElementById(id);
        element.innerHTML = unescape(content);
        if (!element.innerHTML) {
            try {
                element.innerHTML = unescape(content);
            } catch (e) {
            }
        }
    }

    function getMapAddress() {
        var text = $("#map_address").text();
        $("#map").hide();
        $("#fieldset").show();
        $("#address").val(text);
    };

</script>


</html>
