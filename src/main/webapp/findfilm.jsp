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
<body class="top" style="background-image: url('shixun/photo/bg.jpg');background-size: auto">
<div class="left">
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div class="row">
    <div class="column1">
        <jsp:include page="left.jsp"></jsp:include>
    </div>

    <div class="column">
        &nbsp&nbsp&nbsp<button onclick="window.location='addfilm.jsp'" style="background-color:rgba(0,89,241,0.36);height: 30px;width: 100px">上新</button>
        <div align="center" style="font-family: 黑体;">
            <a style="font-size: 20px">
                请输入电影名:&nbsp<input type="text" size="20">
            </a><br>
            <br>
            <input type="image" src="shixun/photo/search1.jpg" border="0" style="height:30px;width: 30px;">
            <hr>
            <%//数据库中信息%>
            <table border="1" cellspacing="0" align="center" style="width: 60%;font-family: 黑体;font-size:15px">
                <tr class="list-view">
                    <th>id</th>
                    <th>影片名</th>
                    <th>类别</th>
                    <th>导演</th>
                    <th>演员</th>
                    <th>国家</th>
                    <th>语言</th>
                    <th>上映时间</th>
                    <th>简介</th>
                    <th>存放路径</th>
                    <th>海报</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href=""> 删除</a></td>
                    <td><a href=""> 修改</a></td>
                </tr>
            </table>
        </div>
    </div>

</div>

</body>
</html>
