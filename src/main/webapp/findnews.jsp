<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2021/11/16
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<style>
    th{
        background-color: rgb(241, 240, 240);
        color: #0c0808;
    }
    .column1 {
        float: left;
        width: 12%;
    }
    .column {
        float: left;
        width: 88%;
        height: max-content;
        background-color: aliceblue;
    }

    /* 列后清除浮动 */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }
</style>
<body style="background-image: url('shixun/photo/bg.jpg');background-size: auto">
<div>
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div class="row">
    <div class="column1">
        <jsp:include page="left.jsp"></jsp:include>
    </div>

    <div class="column">
            <div>
                &nbsp&nbsp&nbsp<button onclick="window.location='addnews.jsp'" style="background-color:rgba(0,89,241,0.36);height: 30px;width: 100px">添加</button>
            </div>
            <div>
                <a style="font-size: 20px">
                    <form action="123">
                        请输入关键字:&nbsp<input type="text" name="" size="20">
                    </form>
                </a><br>
                <br>
                <img onclick="x()" src="shixun/photo/search1.jpg" border="0" style="height:30px;width: 30px;"/>
                <hr>
                <table border="1" align="center" cellspacing="0" style="width:60%;font-family: 黑体;font-size:15px">
                    <tr>
                        <th>id</th>
                        <th>标题</th>
                        <th>简介</th>
                        <th>内容</th>
                        <th>作者</th>
                        <th>发布时间</th>
                        <th>浏览量</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${requestScope.news}" var="n">
                        <tr>
                            <td>${n.id}</td>
                            <td>${n.nTitle}</td>
                            <td>${n.nJianjie}</td>
                            <td>${n.nContext}</td>
                            <td>${n.nAuthor}</td>
                            <td>${n.nTime}</td>
                            <td>${n.nSee}</td>

                            <td><a href=""> 删除</a></td>
                            <td><a href=""> 修改</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

    </div>

</div>




<script>
    function x() {
        document.forms[0].action = ""
        document.forms[0].submit()
    }
</script>
</body>
</html>
