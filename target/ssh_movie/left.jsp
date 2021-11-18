<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 2021/11/18
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" >
        <%
            int m=2;
        %>
        <tr>
            <td height="27" valign="top" >
                <a href="Javascript:ShowTR(img<%=m%>,OpenRep<%=m%>)" style="text-decoration: none" ><img
                        src="shixun/photo/film1.jpg" border="0" alt="展开" id="img<%=m%>" height="30" width="30">&nbsp<font size="4" color="black">电影信息</font>
                </a>
            </td>
        <tr id="OpenRep<%=m%>" style="display:none;">
            <td colspan="6">
                <table width="94%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <hr>
                        <br>
                        <td height="25" width="100" align="center">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td style="font-size: 16px">
                                        <a onclick="null" style="cursor: hand">电影管理</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <Br>
                    <a style="font-size: 16px;cursor: hand"onclick="blank.src='addfilm.jsp'">上新电影</a>
            </td>
        </tr>
    </table>
    <script language="javascript">
        ShowTR(img1,OpenRep1) //设置第1个结点为展开状态
        function ShowTR(objImg,objTr) //应用javascript完成页面显示效果
        {
            if(objTr.style.display == "block")
            {
                objTr.style.display = "none";
                objImg.src = "shixun/photo/film1.jpg";
                objImg.alt = "展开";
            }
            else
            {
                objTr.style.display = "block";
                objImg.src = "shixun/photo/film2.jpg";
                objImg.alt = "折叠";
            }
        }
    </script>
    <br>
    <br>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td height="27" valign="top" >
                <a href="Javascript:ShowTR1(img1<%=m%>,OpenRep1<%=m%>)" style="text-decoration: none" ><img
                        src="shixun/photo/news1.jpg" border="0" alt="展开" id="img1<%=m%>" height="30" width="30">&nbsp<font size="4" color="black">新闻资讯</font>
                </a>
            </td>
        <tr id="OpenRep1<%=m%>" style="display:none;">
            <td colspan="6">
                <table width="94%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <hr>
                        <br>
                        <td height="25" width="100" align="center">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td style="font-size: 16px">
                                        <a onclick="allNews()" style="cursor: hand">新闻管理</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <Br>
                <a style="font-size: 16px;cursor: hand"onclick="blank.src='addnews.jsp'">添加咨询</a>
            </td>
        </tr>
    </table>
    <script language="javascript">
        ShowTR1(img1,OpenRep1) //设置第1个结点为展开状态
        function ShowTR1(objImg,objTr) //应用javascript完成页面显示效果
        {
            if(objTr.style.display == "block")
            {
                objTr.style.display = "none";
                objImg.src = "shixun/photo/news1.jpg";
                objImg.alt = "展开";
            }
            else
            {
                objTr.style.display = "block";
                objImg.src = "shixun/photo/news2.jpg";
                objImg.alt = "折叠";
            }
        }
    </script>
    <br>
    <br>
    <img src="shixun/photo/administer2.jpg" width="30" height="30">&nbsp<font size="4" color="black">账户管理</font>
    <hr>
    <br>
    <a onclick="blank.src='mdfpassword.jsp'" style="cursor: hand">修改密码</a>
    <br>
    <br>
    <a href="one.jsp">退出账户</a>
    <br>
    <br>
</body>
<form action="allNews" method="post">
</form>
<script>
    // var blank = document.getElementById('blank');
    // blank.src = "findfilm.jsp";
    function allNews() {
        document.forms[0].action = "allNews"
        document.forms[0].submit();
    }
</script>
</html>
