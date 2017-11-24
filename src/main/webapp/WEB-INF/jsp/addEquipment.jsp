<%--
  Created by IntelliJ IDEA.
  User: 杨少侠
  Date: 2017/11/18
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--①引入标签的声明②声明后，在页面中就可以使用任意Spring表单标签了--%>
<%--sf作为前缀--%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>添加设备</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .register {
            width:500px;
            margin: 100px auto;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        label {
            text-align: left;
        }
        .btn {
            margin: 20px auto;
            width:300px;
        }
    </style>
</head>
<body>
<h1>添加设备</h1>
<div class="register">

    <sf:form action="/user/doAddEquipment" modelAttribute="equipment" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-3 control-label">设备名：</label>
            <div class="col-sm-9">
                <sf:input path="name" class="form-control" placeholder="设备名"/>
            </div>
        </div><div class="form-group">
            <label class="col-sm-3 control-label">设备备注：</label>
            <div class="col-sm-9">
                <sf:input path="description" class="form-control" placeholder="设备备注"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">设备编码：</label>
            <div class="col-sm-9">
                <sf:input path="code" class="form-control" placeholder="code"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">价格：</label>
            <div class="col-sm-9">
                <sf:input path="price" class="form-control" placeholder="价格"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">产地：</label>
            <div class="col-sm-9">
                <sf:input path="place" class="form-control" placeholder="产地"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">所属用户id：</label>
            <div class="col-sm-9">
                <sf:input path="user_id" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary btn-block" value="添加">
        </div>
    </sf:form>
</div>
</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
