<%--
  Created by IntelliJ IDEA.
  User: 杨少侠
  Date: 2017/11/16
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登陆失败</title>
</head>
<body>
    <h1>登陆失败</h1>
    <h2>${message}</h2>
    <a href="<%=path%>/login.jsp">返回</a>
</body>
</html>
