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
    <link type="text/css" rel="stylesheet" href="cs.css" />
</head>
<style>
    td{
        font-size: 15px
    }
</style>
<body style="background-color: rgb(231,234,242);">
<div class="top">
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div class="row">
    <div class="column1">
        <jsp:include page="left.jsp"></jsp:include>
    </div>
    <div class="column">
        <form action="addNews" method="post">
                <table class="table-add" border="0">
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
                        <td><input type="submit" value="提交"></td>
                    </tr>
                </table>
        </form>
    </div>

</div>

</body>
</html>
