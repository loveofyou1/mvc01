<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/22
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% //获取session时间
    Date dateCreate = new Date(session.getCreationTime());
    //获取最后访问页面的时间
    Date lastAccessTime = new Date(session.getLastAccessedTime());
    String title = "welcome back to my website";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = new String("ABCD");
    //检查页面是否有新的用户
    if (session.isNew()) {
        title = "welcome back to my website";
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey, visitCount);
    }
    visitCount = (Integer) session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
    userID = (String) session.getAttribute(userIDKey);
    session.setAttribute(visitCountKey, visitCount);
%>
<html>
<head>
    <title>Session Tracking</title>
</head>
<body>
<center>
    <h1>Session Tracking</h1>
</center>
<table border="1" align="center">
    <tr bgcolor="#949494">
        <th>Session info</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>id</td>
        <td><% out.print(session.getId()); %></td>
    </tr>
    <tr>
        <td>Creation Time</td>
        <td><% out.print(dateCreate); %></td>
    </tr>
    <tr>
        <td>Time of Last Access</td>
        <td><% out.print(lastAccessTime); %></td>
    </tr>
    <tr>
        <td>User ID</td>
        <td><% out.print(userID); %></td>
    </tr>
    <tr>
        <td>Number of visits</td>
        <td><% out.print(visitCount); %></td>
    </tr>
</table>
</body>
</html>
