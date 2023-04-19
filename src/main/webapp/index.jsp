<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<center>



<form class="border border-primary p-5 mw-2"  >


  <h1 class="text-dark"><%= "Formulario  " %></h1>

  <p  class="form-control  "> Ingresa tus nombres: <input type="text" placeholder="nombres"></p>
  <p class="form-control">Ingresa tu apellido: <input type="text" placeholder="apellidos"></p>
  <p class="form-control">Ingresa tu correo: <input type="text" placeholder="correo"></p>
  <p class="form-control">Ingresa tu password: <input type="text" placeholder="pass"></p>



  <input class="btn btn-info " type="submit" value="Envio de información">
</center>
</form>
</div>





<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>