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
    <link href="https://cdn.bootcss.com/jquery-bootgrid/1.3.1/jquery.bootgrid.css" rel="stylesheet">
</head>
<body>


<table id="grid" data-toggle="bootgrid" data-ajax="true" data-url="/test/hello1" class="table table-condensed table-hover table-striped">
    <thead>
    <tr>
        <th data-column-id="id">ID</th>
        <th data-column-id="name">Sender</th>
    </tr>
    </thead>
</table>


<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/jquery-bootgrid/1.3.1/jquery.bootgrid.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</body>
</html>
