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
<body>
&nbsp&nbsp&nbsp<button onclick="window.location='addnews.jsp'" style="background-color:rgba(0,89,241,0.36);height: 30px;width: 100px">添加</button>
<div align="center" style="font-family: 黑体">
    <a style="font-size: 20px">
        请输入关键字:&nbsp<input type="text" size="20">
    </a><br>
    <br>
    <input type="image" src="shixun/photo/search1.jpg" border="0" style="height:30px;width: 30px;">
    <hr>
    <%//数据库中信息%>
    <table border="1" align="center" style="height: 20%;width: 80%;font-family: 黑体;font-size:15px">
        <tr>
            <th>
                id
            </th>
            <th>
               标题
            </th>
            <th>
                简介
            </th>
            <th>
                内容
            </th>
            <th>
                作者
            </th>
            <th>
                发布时间
            </th>
        </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>
                <a href=""> 删除</a>
            </td>
            <td>
                <a href=""> 修改</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
