<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="c" %>

<%@ page isELIgnored="false"%>

<html>
<head>
    <title>首页</title>
</head>
<script>
    function soClick(obj){
        if(obj.value=="请输入内容"){
            obj.value ="";
        }
    }
</script>
<body style="background-image: url('shixun/photo/bg.jpg');background-size: auto">
<div>
    <br>
    <font size="5" face="黑体" style="border: black"> &nbsp&nbsp<a href="origin.jsp" style="text-decoration: none;color: black">首页</a>&nbsp&nbsp
        <a style="cursor:pointer" onclick="content.src = 'more.jsp'" >更多推荐</a>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <input type="text" size="30" style="height:25px;"  value="请输入内容" onclick="soClick(this)" />&nbsp
        <input type="image" src="shixun/photo/search1.jpg" border="0" height="18" width="20">
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<%--</font><a onclick="window.open('index.jsp','newwindow','height=400, width=400,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no,top=250,left=600')" style="cursor: hand">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="shixun/photo/user.jpg" style="cursor:hand" width="30" height="30" ></a>--%>
</font><a href="index.jsp" style="cursor: hand">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="shixun/photo/user.jpg" style="cursor:hand" width="30" height="30" ></a>
<br>
    <hr>
</div>
<div style="float: left"  align="center" class="tpl-portlet-components" style="display: table;
 width:80%; height: 100%; margin-bottom: 10px;border:0">
    <div class="row am-cf">
        <div align="right" style="float: right">
            <iframe id="content" width="1300" height="100%"></iframe>
        </div>
    </div>
</div>

<script>
    var content = document.getElementById('content');
    content.src = "content.jsp";
</script>

<div style="float: left;font-family: 黑体">
<a href="news.jsp" style="font-size: 20px;color:black;cursor: hand;text-decoration: none">近日资讯</a>
    <hr>
<br>
<%--   <c:forEach var="n" items="${requestScope.news_list}">--%>
<%--       <%int a = 0; a++;%>--%>
<%--       <tr>--%>
<%--            <%=a%>.  ${n.nTitle}--%>
<%--        </tr>--%>
<%--   </c:forEach>--%>
</div>
</body>
</html>
