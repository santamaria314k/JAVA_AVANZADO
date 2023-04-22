<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<header class="bg-white">
<h1> Taller 1 - Java Web</h1>
</header>

<style>
  input{display: flex;
    justify-content: center;
    }
label{
  display: flex;
  align-items: flex-start;
}

  h1{display: flex;justify-content: center;align-items: center;}

  form {
    display: flex;
    justify-content: center;
    flex-direction: column;
  }
</style>

<section>
<form class="border border-primary p-5 mw-2 bg-primary"  action=""method="post">


  <h1 class="text-dark"><%= "Formulario  " %></h1>

  <label  for="name">Nombres:</label><br>
  <input type="text" class="form-control text-center" id="name" placeholder="Ingresa tus Nombres: " required autofocus pattern="[A-Za-z ]{2,40}"><br>

  <label for="surnames">Apellidos:</label><br>
  <input type="text" class="form-control text-center" id="surnames" placeholder="Ingresa tus Apellidos: " required autofocus pattern="[A-Za-z ]{2,40}"><br>

  <label for="email">Correo:</label><br>
  <input type="text" class="form-control  text-center" id="email" placeholder="Ingresa tu Correo: " required autofocus pattern="{80}"><br>



  <label for="password">Contraseña:</label><br>
  <input type="password" class="form-control text-center" id="password" placeholder="Ingresa tu contraseña:" required autofocus pattern="{50}"><br><br>



  <input  class="btn btn-info w-50" type="submit" value="Envio de información">
</form>

</section>





<footer class="bg-info" >
  <a href="hello-servlet">Hello Servlet</a>
  <br/><br/><br/><br/><br/><br/><br/>


</footer>
</body>
</html>
