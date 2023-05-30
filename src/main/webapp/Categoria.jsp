<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ⬆️Ingresar Categoria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>



<header class="bg-white">
    <h1>⬆️Formulario con BD</h1>
</header>



<section>
    <form class="form"  action="registercate"method="post">


        <h1 class="text-dark"> ⬆️Formulario con BD </h1>
        <label  for="ID">ID categoria:</label><br>
        <input type="number" class="form-control " id="ID" placeholder="Ingresa el ID de la categoria: " required autofocus pattern="[0-9 ]{5}"><br>


        <label  for="name">Nombre categoria:</label><br>
        <input type="text" class="form-control " id="name" placeholder="Ingresa el nombre de la categoria: " required autofocus pattern="[A-Za-z ]{2,40}"><br>




        <input  class="btn btn-info w-50" type="submit" value="Registrar">
    </form>

</section>



<br><br>
<br><br>
<br><br>
<br>


<footer class="bg-info" >

    <p class="mt-3 mb-3 text muted">todos los derechos reservados MY APP CON BD
        <%=displayDate()%>
        <br><br><br><br></p>



    <%! public String displayDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
    %>
    <br><br><br><br>

</footer>

</body>
</html>
