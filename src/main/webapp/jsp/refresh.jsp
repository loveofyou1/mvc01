<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/22
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Refresh Page</title>
</head>
<body>
<center>
    <h2>Auto Refresh Header Example</h2>
    <%
        //set refresh, autoload time as 5 seconds
        request.setAttribute("Refresh", 5);
        //get current time
        Calendar calendar = new GregorianCalendar();
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minites = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        if (calendar.get(calendar.get(Calendar.AM_PM)) == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
        }

        String CT = hour + ":" + minites + ":" + second + " " + am_pm;
        out.println("Crrent Time: " + CT + "\n");
    %>
</center>
</body>
</html>
