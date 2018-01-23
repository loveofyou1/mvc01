<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/22
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<% String title = "User Agent Example"; %>
<html>
<head>
    <title>java Bean Test</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"/>
<p>The time is <%=date%>
</p>

<jsp:useBean id="student" class="sun.beans.StudentsBean">
    <jsp:setProperty name="student" property="firstName" value="sun"/>
    <jsp:setProperty name="student" property="lastName" value="lei"/>
    <jsp:setProperty name="student" property="age" value="20"/>
</jsp:useBean>

<p>Student First Name:
    <jsp:getProperty name="student" property="firstName"/>
</p>
<p>Student Last Name:
    <jsp:getProperty name="student" property="lastName"/>
</p>
<p>Student Age:
    <jsp:getProperty name="student" property="age"/>
</p>
<center>
    <h1><% out.print(title); %></h1>
</center>
<div align="center">
    <p>${header["user-agent"]}</p>
</div>
</body>
</html>
