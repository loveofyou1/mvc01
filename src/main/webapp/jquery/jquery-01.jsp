<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/23
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jquery01</title>
    <script type="text/javascript" src="jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("button").click(function () {
                $(this).hide();
            })
        })
    </script>
</head>
<body>
<center>
    <button type="button">click me</button>
</center>
</body>
</html>

