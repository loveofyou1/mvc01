<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/22
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% //获取客户端本地化信息
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String country = locale.getCountry(); %>
<html>
<head>
    <title>Detecting Locale</title>
</head>
<body>
<center>
    <h1>Detecting Locale</h1>
</center>
<p align="center">
    <% out.println("Language : " + language + "<br />");
        out.println("Country  : " + country + "<br />");
    %>
</p>
</body>
</html>
