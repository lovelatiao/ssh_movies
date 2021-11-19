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

<body style="background-color: rgb(231,234,242);">
<div class="top" style="background-color: #ffffff">
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div class="row">
    <div class="column1" >
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
                        <th style="width: 30px">id</th>
                        <th style="width: 15%">标题</th>
                        <th style="width: 15%">简介</th>
                        <th style="width: 15%">内容</th>
                        <th>作者</th>
                        <th style="width: 10%">发布时间</th>
                        <th style="width: 10%">浏览量</th>
                        <th style="width: 14%" colspan="2">操作</th>
                    </tr>
                    <%int i = 0;%>
                    <c:forEach items="${requestScope.news}" var="n">
                        <%
                            i++;
                            String a;
                            if(i%2 ==0){
                                a = "black";
                            }else {
                                a = "";
                            }

                        %>
                        <tr class=<%=a%>>
                            <td>${n.id}</td>
                            <td class="tr-view">${n.nTitle}</td>
                            <td class="tr-view">${n.nJianjie}</td>
                            <td class="tr-view">${n.nContext}</td>
                            <td class="tr-view">${n.nAuthor}</td>
                            <td class="tr-view">${n.nTime}</td>
                            <td class="tr-view">${n.nSee}</td>
                            <td class="tr-view"><a href=""> 删除</a></td>
                            <td class="tr-view"><a href=""> 修改</a></td>
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
<script type="text/javascript" language="javascript">
    for (i=0;i<TableNew.rows.length;i++)
    {
        //(i%2==0)?(TableNew.rows(i).className = "a1"):(TableNew.rows(i).className = "");与下边方法相同
        if(i%2==0)
        {
            TableNew.rows(i).className = "a1";
        }
        else
        {
            TableNew.rows(i).className = "";
        }
    }
</script>
</body>
</html>
