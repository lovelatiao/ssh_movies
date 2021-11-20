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
<style>
    .table-add tr {
        padding: 10px;
    }
    .table-add td{
        padding: 10px;
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
        <form  action="addMovies" method="post">
            <table class="table-add" border="0">
                <tr><td>影片名:</td><td><input type="text" name="movies.mName" ></td></tr>
                <tr><td>类别:</td>
                    <td>
                        <select name="movies.mType">
                            <c:forEach var="t" items="${requestScope.type}">
                                <option value="${t.type}">${t.type}</option>
                            </c:forEach>
                        </select>
                    </td>
                <tr><td>导演:</td><td><input type="text" name="movies.mDirector"></td></tr>
                <tr><td>演员:</td><td><input type="text" name="movies.mActor"></td></tr>
                <tr><td>国家:</td>
                    <td>
                        <select name="movies.mCountry">
                            <c:forEach var="c" items="${requestScope.country}">
                                <option value="${c.country}">${c.country}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td>语言:</td>
                    <td>
                        <select name="movies.mLanguage">
                            <c:forEach var="l" items="${requestScope.language}">
                                <option value="${l.lang}">${l.lang}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td>上映时间:</td><td><input type="date" name="movies.mTime" ></td></tr>
                <tr><td>简介:</td><td><textarea name="movies.mJianjie" style="height: 130px;width: 170px"></textarea></td></tr>
                <tr><td>上传路径:</td><td><input type="file" name="movies.mPath"  accept="video/*"></td></tr>
                <tr><td>上传海报:</td><td><input type="file" name="movies.mPhoto" accept="image/*"/></td></tr>
                <tr><td></td><td><input type="submit" value="确定"></td></tr>
            </table>
        </form>
    </div>

</div>
</body>
</html>
