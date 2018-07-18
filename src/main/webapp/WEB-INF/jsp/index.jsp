<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/18/018
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案件上报</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>


<form class="form-horizontal form-inline">
    <fieldset>
        <div id="legend" class="">
            <legend class="">表单名</legend>
        </div>


        <div class="control-group">

            <!-- Text input-->

            <div class="controls">
                <label class="form-label">事件标题</label>
                <input type="text" placeholder="" class="form-control">
                <p class="help-block"></p>
            </div>
        </div>


        <div class="control-group">

            <!-- Textarea -->
            <label class="control-label">事件内容</label>
            <div class="controls">
                <div class="textarea">
                    <textarea type="" class="form-control"> </textarea>
                </div>
            </div>
        </div>

        <div class="control-group">

            <!-- Text input-->
            <label class="control-label">上报人姓名</label>
            <div class="controls">
                <input type="text" placeholder="" class="form-control">
                <p class="help-block"></p>
            </div>
        </div>

        <div class="control-group">

            <!-- Text input-->
            <label class="control-label">手机号码</label>
            <div class="controls">
                <input type="text" placeholder="" class="form-control">
                <p class="help-block"></p>
            </div>
        </div>


        <div class="control-group">
            <!-- Button -->
            <div class="controls">
                <button class="btn btn-success">确定</button> <button class="btn btn-danger">取消</button>
            </div>
        </div>

    </fieldset>
</form>


<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>
