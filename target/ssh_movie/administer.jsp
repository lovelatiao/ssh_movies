<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2021/11/16
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        height: 100%;
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
