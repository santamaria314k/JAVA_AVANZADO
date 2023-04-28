<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 27/04/2023
  Time: 8:20 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>my app ixdex con bd</title>
    <meta name="viewport" content="width=device-width,initial-scalate=1">
    <link rel="stylesheet"href="css/styles.css">
</head>
<body>
<header>
    <h1>
        my app ixdex con bd  📋
    </h1>
    <h1>my APP</h1>
</header>

<img src="img/cand.jpg">

<footer>
    <p class="mt-3 mb-3 text muted">todos los derechos reservados MY APP CON BD
            <%=displayDate()%>
    <%! public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
    %>

</footer>
</body>
</html>
