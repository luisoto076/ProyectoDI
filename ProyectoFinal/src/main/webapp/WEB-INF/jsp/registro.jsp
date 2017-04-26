<%-- 
    Document   : registro
    Created on : 25/04/2017, 04:01:20 PM
    Author     : daniicape
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/informacionIdioma.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <header>
        <div class="nav-wrapper">
            <nav>
                <a href="/ProyectoFinal/index" class="brand-logo">
                    <img src="imagenes/cele_unam_02.png">
                </a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li>
                        </li>
                        <li>
                        </li>
                        <li>
                        </li>
                    </ul>
            </nav>
        </div>
        </header> 
        <main>
        <form  action="/ProyectoFinal/registro" method="POST">
            <br/>
            <br/>
            <div class="input-field col s12">
                <select>
                    <option value="" disabled selected>Selecciona una opción</option>
                    <option value="1">Alumno UNAM</option>
                    <!-- <option value="2">Trabajador UNAM</option>
                    <option value="3">Externo</option> -->
                </select>
                <label>Materialize Select</label>
            </div>
            <br/>
            <br/>
            <div class="row">
            <div class="input-field col s7">
                <label for="username">Nombre</label>
                <input id="nombre" name="nombre" type="text"/>
            </div>
            <div class="input-field col s6">
                <label for="last_name">Apellido Paterno</label>
                <input id="app" name="app" type="text">
            </div>
            <div class="input-field col s6">
                <label for="last_name">Apellido Materno</label>
                <input id="apm" name="apm" type="text">
            </div>
            </div>
            <div class="row">
            <div class="input-field col s6">
                <label for="last_name">Numero de Cuenta</label>
                <input id="cuenta" name="cuenta" type="text">
            </div>
            <div class="input-field col s6">
                <label for="last_name">Carrera</label>
                <input id="carrera" name="carrera" type="text">
            </div>
            
            </div>
                <div class="row">
                    <div class="input-field col s6">
                      <input id="password" type="password" class="validate">
                      <label for="password">Contraseña</label>
                    </div>
                    <div class="input-field col s6">
                      <input id="password2" type="password2" class="validate">
                      <label for="password">Confirmar Contraseña</label>
                    </div>  
                </div>
                <div class="form-group">
                    <button  type="submit" id="btnSes" class="btn btn-primary btn-lg">Aceptar</button>
                </div>
            </form>
        
        </form>
    </main>
    <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script type="text/javascript"> 
      $(document).ready(function() {
      $('select').material_select();
      });
  </script>
    </body>
</html>
