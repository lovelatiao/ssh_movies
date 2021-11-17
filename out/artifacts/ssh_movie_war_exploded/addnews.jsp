<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2021/11/16
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    td{
        font-family: 黑体;
        font-size: 20px
    }
</style>
<body>
<form action="addNews" method="post">
    <div align="left" style="font-family: 黑体;font-size: 20px">
        <br>
        <br>
        <table border="0">
            <tr>
                <td>标&nbsp&nbsp&nbsp&nbsp题:</td>
                <td><input type="text" name="news.nTitle" size="20"></td>
            </tr>
            <tr>
                <td>作&nbsp&nbsp&nbsp&nbsp者:</td>
                <td><input type="text" name="news.nAuthor" size="20"></td>
            </tr>
            <tr>
                <td>简&nbsp&nbsp&nbsp&nbsp介:</td>
                <td><textarea name="news.nJianjie" style="height: 100px;width: 500px" ></textarea></td>
            </tr>
            <tr>
                <td>内&nbsp&nbsp&nbsp&nbsp容:</td>
                <td><textarea name="news.nContext" style="height: 300px;width: 800px"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="确定"></td>
            </tr>
        </table>
<%--        <a style="font-size: 20px">--%>
<%--            标&nbsp&nbsp&nbsp&nbsp题:<input type="text" name="news.nTitle" size="20">--%>
<%--            <br><br>--%>
<%--            作&nbsp&nbsp&nbsp&nbsp者:<input type="text" name="news.nAuthor" size="20">--%>
<%--            <br><Br>--%>
<%--            简&nbsp&nbsp&nbsp&nbsp介:<textarea name="news.nJianjie" style="height: 50px;width: 170px" ></textarea>--%>
<%--            <br><br>--%>
<%--            内&nbsp&nbsp&nbsp&nbsp容:<textarea name="news.nContext" style="height: 100px;width: 170px"></textarea>--%>
<%--            <br><Br>--%>
<%--            <input type="submit" value="确定">--%>
<%--        </a>--%>
    </div>
</form>
</body>
</html>
