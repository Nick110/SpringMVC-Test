<%--
  Created by IntelliJ IDEA.
  User: 杨少侠
  Date: 2017/11/16
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>--%>
<html>
<head>
    <title>登录/注册</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .login{
            width:500px;
            margin: 100px auto 30px auto;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        label {
            text-align: left;
        }
        .btn {
            margin: 50px auto auto auto;
            width: 500px;
        }
    </style>
</head>
<body>
<%--<form method="post" action="/user/login">
    用户名:<input type="text" name="login_name"/>
    密码:<input type="password" name="password"/>
    <input type="submit" value="提交">
</form>--%>
<h1>登录</h1>
<div class="login">
    <form method="post" action="/user/login" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-3 control-label">登录名：</label>
            <div class="col-sm-9">
                <input type="text" name="login_name" class="form-control" id="inputLoginName" placeholder="登录名">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label">密码：</label>
            <div class="col-sm-9">
                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="密码">
            </div>
        </div>
        <div class="form-group">
            <button id="submitBtn" type="submit" class="btn btn-primary btn-block">登录</button>
        </div>
    </form>
    <a href="/user/register">还没账号？去注册</a>
</div>
<p class="${error}" style="display: none"></p>

</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        if($('p').attr("class")){
            alert($('p').attr('class'));
        }
    })
</script>
</html>
