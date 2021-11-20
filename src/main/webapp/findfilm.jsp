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
    <link type="text/css" rel="stylesheet" href="cs.css" />
</head>
<body  style="background-color: rgb(231,234,242);">
<div class="top">
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div class="row">
    <div class="column1">
        <jsp:include page="left.jsp"></jsp:include>
    </div>

    <div class="column">
        <div>
            <div style="font-size: 20px;text-align: center;color: #929daa">
                    <span>
                        <form action="123">
                        请输入关键字:&nbsp<input type="text" name="" size="20">
                    </form>
                    </span>
                <span>
                          <a onclick="x()"><img src="shixun/photo/search1.jpg" style="height:30px;width: 30px;"/></a>
                    </span>
            </div>

            <hr>
            <table id="TableNew" class="table-view" border="0" align="center" cellspacing="0px">
                <tr class="list-view">
                    <th>id</th>
                    <th>影片名</th>
                    <th>类别</th>
                    <th>导演</th>
                    <th>主演</th>
                    <th>国家</th>
                    <th>语言</th>
                    <th>上映时间</th>
                    <th>简介</th>
                    <th>浏览</th>
                    <th style="width: 14%" colspan="2">操作</th>
                </tr>
                <%int i = 0;%>
                <c:forEach items="${requestScope.allMovies}" var="m">
                    <%
                        i++;String a;if(i%2 ==0){a = "black";}else {a = "";}
                    %>
                    <tr class=<%=a%>>
                        <td>${m.id}</td>
                        <td class="tr-view">${m.mName}</td>
                        <td class="tr-view">${m.mType}</td>
                        <td class="tr-view">${m.mDirector}</td>
                        <td class="tr-view">${m.mActor}</td>
                        <td class="tr-view">${m.mCountry}</td>
                        <td class="tr-view">${m.mLanguage}</td>
                        <td class="tr-view">${m.mTime}</td>
                        <td class="tr-view">${m.mJianjie}</td>
                        <td class="tr-view">${m.mSee}</td>
                        <td class="tr-view"><a href=""> 删除</a></td>
                        <td class="tr-view"><a href=""> 修改</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>

</body>
</html>
