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
    <title>注册</title>
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
<h1>注册</h1>
<div class="register">

    <sf:form action="/user/doRegister" modelAttribute="user" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-3 control-label">登录名：</label>
            <div class="col-sm-9">
                <sf:input path="login_name"  class="form-control" placeholder="登录名"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">姓名：</label>
            <div class="col-sm-9">
                <sf:input path="real_name" class="form-control" id="inputRealName" placeholder="姓名"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">密码：</label>
            <div class="col-sm-9">
                <sf:password path="password" class="form-control" id="inputPassword" placeholder="密码"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">确认密码：</label>
            <div class="col-sm-9">
                <input type="password" class="form-control" id="confirmPassword" placeholder="确认密码">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">电话：</label>
            <div class="col-sm-9">
                <sf:input path="tel" class="form-control" id="inputTel" placeholder="电话"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">邮箱：</label>
            <div class="col-sm-9">
                <sf:input path="email" class="form-control" id="inputEmail" placeholder="邮箱"/>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary btn-block" value="注册">
        </div>
    </sf:form>
</div>
</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
