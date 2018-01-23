<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/22
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page redirect</title>
</head>
<body>
<center>
    <h1>Page Redirection</h1>
</center>
<% //重定向新地址
    String site = "http://www.w3cschool.cn";
    String site1 = "http://www.baidu.com";
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
</body>
</html>
