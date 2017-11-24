<%--
  Created by IntelliJ IDEA.
  User: 杨少侠
  Date: 2017/11/16
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>--%>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
    <h1>注册成功！</h1>
    <h2>Hello,${user.login_name}</h2>
    <a href="/user/index">立即去登录</a>
</body>
</html>
