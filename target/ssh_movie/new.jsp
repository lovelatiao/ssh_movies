<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 2021/11/17
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title></title>
</head>
<body style="background-image: url('shixun/photo/bg.jpg');background-size: auto">
<div style="align-content: center">
    <c:forEach var="n" items="${requestScope.queryNews}">
        ${n.nTitle}<br>
        ${n.nTime}<br>
        ${n.nSee}<br>
        ${n.nAuthor}<br>
        ${n.nJianjie}<br>
        ${n.nContext}<br>
    </c:forEach>

</div>

</body>
</html>
