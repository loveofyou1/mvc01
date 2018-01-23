<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/19
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Auto Refresh Header Example</title>
</head>
<body>
<center title="hello">
    <h2>Auto Refresh Header Example</h2>
    <% //设置每隔5秒自动刷新
        response.setIntHeader("Refresh ", 5);
        Calendar calendar = new GregorianCalendar();
        String am_pm ;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        if (calendar.get(Calendar.AM_PM) == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
        }
        String CT = hour+":"+ minute +":"+ second +" "+ am_pm;    out.println("Current Time is: " + CT + "\n");
    %>
</center>
</body>
</html>
