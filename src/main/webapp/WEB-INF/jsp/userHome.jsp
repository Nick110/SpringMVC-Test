<%--
  Created by IntelliJ IDEA.
  User: 杨少侠
  Date: 2017/11/19
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        h1 {
            /*text-align: center;*/
            margin-bottom: 50px;
        }
        .equipments {
            width: 800px;
            margin: 0 auto;
        }
        thead {
            background-color: rgba(101,101,101,0.47);
        }
    </style>
</head>
<body>
<div>
    <h1 class="text-center">欢迎，${user.real_name}
    <c:if test="${user.type==0}">系统管理员</c:if>
    <c:if test="${user.type==1}">普通用户</c:if>使用系统
    </h1>
</div>
<h2 class="text-center">
    <c:if test="${user.type==1}">我的设备</c:if>
</h2>

<div class="equipments table-responsive">
    <table class="table table-bordered">
        <thead>
        <tr>
            <td>设备id</td>
            <td>设备名</td>
            <td>设备备注</td>
            <td>设备编码</td>
            <td>设备添加时间</td>
            <td>设备价格</td>
            <td>设备产地</td>
        </tr>
        </thead>
        <c:forEach var="equipment" items="${equipments}">
            <tr>
                <td>${equipment.id}</td>
                <td><c:out value="${equipment.name}"></c:out></td>
                <td><c:out value="${equipment.description}"></c:out></td>
                <td><c:out value="${equipment.code}"></c:out></td>
                <td><c:out value="${equipment.add_time}"></c:out></td>
                <td><c:out value="${equipment.price}"></c:out></td>
                <td><c:out value="${equipment.place}"></c:out></td>
        </c:forEach>
    </table>
</div>
<a class="col-md-offset-8" href="/user/addEquipment">
    <c:if test="${user.type==0}">添加设备</c:if>
</a>

</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
