<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<<<<<<< HEAD
<html>
<head>
  <title>Ingresar producto</title>
=======
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>⬆️Ingresar producto</title>
>>>>>>> 0d4e91c1522c1f32b20f9ac8c26f9e8f43c194be
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"href="css/styles.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>



<<<<<<< HEAD
<%@ include file="header.jsp"%>

=======
<header class="bg-white">
  <h1>⬆️Ingresar producto</h1>
</header>
>>>>>>> 0d4e91c1522c1f32b20f9ac8c26f9e8f43c194be



<section>
  <form class="form"  action="registerelpro"method="post">


<<<<<<< HEAD
    <h1 class="text-dark"> Ingresar producto </h1>
=======
    <h1 class="text-dark"> ⬆️Ingresar producto </h1>
>>>>>>> 0d4e91c1522c1f32b20f9ac8c26f9e8f43c194be

    <label  for="name">Nombre del producto:</label><br>
    <input type="text" class="form-control " id="name" placeholder="Ingresa el Nombre del producto " required autofocus pattern="[A-Za-z ]{2,40}"><br>

    <label for="value">Valor del producto:</label><br>
    <input type="number" class="form-control " id="value" placeholder="Ingresa el Valor del producto: " required autofocus pattern="[1-9 ]{2,40}"><br>

    <label for="category">Categoria del producto:</label><br>
    <input type="text" class="form-control  " id="category" placeholder="Ingresa la Categoria del producto " required autofocus pattern="A-Za-z ]{2,40}}"><br>





    <input  class="btn btn-info w-50" type="submit" value="Registrar">
  </form>

</section>


<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>

<<<<<<< HEAD
<%@ include file="footer.jsp"%>
=======

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

>>>>>>> 0d4e91c1522c1f32b20f9ac8c26f9e8f43c194be


</body>
</html>
