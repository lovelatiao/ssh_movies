<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2021/11/15
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="a_login" method="post">
<div align="center" style="font-family: 黑体;font-size:20px">
    <h2>管理员登录</h2>
账&nbsp&nbsp&nbsp&nbsp号:<input type="text" name="admin.aName" size="20">
    <br>
    <br>
    密&nbsp&nbsp&nbsp&nbsp码:<input type="password" name="admin.aPassword" size="20">
    <br><br>
    <input type="submit" value="确认" onclick="window.open('administer.jsp','fullscreen=yes');">
    <br><br>
    <a href="forget.jsp">忘记密码</a>
    <br><br>
    <a href="register.jsp">点击此处注册</a>
</div>
</form>
</body>
</html>
