<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>footer</title>
</head>
<body>
<footer class="bg-info">
    <p class="mt-3 mb-3 text-muted"><%=displayDate()%> -----------------todos los derechos reservados MY APP CON BD -----------------<%=displayDate()%>       </p>

    <%!
        public String displayDate() {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
            Date date = Calendar.getInstance().getTime();
            return dateFormat.format(date);
        }
    %>
    <h1>hello world  !  :)</h1>
    <br><br><br><br><br><br><br><br><br><br><br><br>
</footer>
</body>
</html>