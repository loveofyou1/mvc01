<%@ page import="java.util.Enumeration,java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: sunlei19
  Date: 2018/1/19
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTTP Header Request Example</title>
</head>
<body>
<center>
    <h2>HTTP Header Request Example</h2>
    <table width="100%" border="1" align="center">
        <tr bgcolor="#949494">
            <th>Header Name</th>
            <th>Header Value(s)</th>
        </tr>
        <% Enumeration headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String paramName = (String) headerNames.nextElement();
                out.print("<tr><td>" + paramName + "</td>\n");
                String paramValue = request.getHeader(paramName);
                out.println("<td> " + paramValue + "</td></tr>\n");
            }
        %>
    </table>
</center>
</body>
</html>
