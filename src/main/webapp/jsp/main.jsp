<html>
<head>
    <title>Using GET Method to Read Form Data</title>
</head>
<body>
<% Integer hitsCount = (Integer) application.getAttribute("hitCounter");
    if (hitsCount == null || hitsCount == 0) {        /* 第一次访问 */
        out.println("Welcome to my website!");
        hitsCount = 1;
    } else {        /* 返回访问值 */
        out.println("Welcome back to my website!");
        hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount); %>
<center>
    <p>Total number of visits: <%= hitsCount%>
    </p>
</center>
<center>
    <h1>Using GET Method to Read Form Data</h1>
    <ul>
        <li><p><b>First Name:</b>
            <%= request.getParameter("first_name")%>
        </p></li>
        <li><p><b>Last Name:</b>
            <%= request.getParameter("last_name")%>
        </p></li>
    </ul>
</body>
</html>