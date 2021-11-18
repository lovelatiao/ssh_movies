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

<div align="center">
    <form action="addMovies" method="post">
    <table border="0">
        <tr><td>影片名:</td><td><input type="text" name="movies.mName" size="20"></td></tr>
        <tr><td>类别:</td><td><input type="text" name="movies.mType" size="20"></td></tr>
        <tr><td>导演:</td><td><input type="text" name="movies.mDirector" size="20"></td></tr>
        <tr><td>演员:</td><td><input type="text" name="movies.mActor" size="20"></td></tr>
        <tr><td>国家:</td><td><input type="text" name="movies.mCountry" size="20"></td></tr>
        <tr><td>语言:</td><td><input type="text" name="movies.mLanguage" size="20"></td></tr>
        <tr><td>上映时间:</td><td><input type="date" name="movies.mTime" size="20"></td></tr>
        <tr><td>简介:</td><td><textarea name="movies.mJianjie" style="height: 100px;width: 170px"></textarea></td></tr>
        <tr><td>上传路径:</td><td><input type="file" name="movies.mPath" size="20" accept="video/*"></td></tr>
        <tr><td>上传海报:</td><td><input type="file" name="movies.mPhoto" accept="image/*"/></td></tr>
        <tr><td></td><td><input type="submit" value="确定"></td></tr>
    </table>
    </form>
</div>
<script>
    function getInputURL(file) {
        var url = null;
        if(window.createObjcectURL != undefined) {
            url = window.createOjcectURL(file);
        } else if(window.URL != undefined) {
            url = window.URL.createObjectURL(file);
        } else if(window.webkitURL != undefined) {
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }
</script>
</body>
</html>
