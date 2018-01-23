<%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/19
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>\
<html>
<head>
    <title>hello</title>
</head>
<body>
<%! int i = 10;%>
<%="Your IP address is " + request.getRemoteAddr() + '\n'%>
<%= i%>

<%! int day = 4;%>
<p>if 。。。。else</p>
<% if (day == 1 || day == 7) {%>
<p>today is weekend!</p>
<%} else {%>
<p>today is not weekend!</p>
<%}%>

<P>
    switch case
</P>
<%
    switch (day) {
        case 0:
            //System.out.println("sunday");
            out.println("sunday");
            break;
        case 1:
            System.out.println("monday");
        case 4:
            out.println("this is thursday!");
        default:
            //System.out.println("eight");
            out.println("eight");
    }
%>
<%! int fontSize; %>
<%for (fontSize = 1; fontSize <= 3; fontSize++) { %>
<font color="green" size="<%= fontSize %>">
    JSP Tutorial
</font><br/>
<%}%>
</body>
</html>
