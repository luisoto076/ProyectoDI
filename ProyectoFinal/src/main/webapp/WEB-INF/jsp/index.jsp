<%-- 
    Document   : index
    Created on : 24/04/2017, 11:39:04 AM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Index</title>
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
            <br/>
            <a class='dropdown-button btn blue darken-3 big' href='#' data-activates='dropdown2'>Menu </a>
            <!-- Dropdown Structure -->
            <ul id='dropdown2' class='dropdown-content'>
              <li><a href="#!">Posgrados</a></li>
              <li><a href="#!">Exámenes</a></li>
              <li><a href="#!">Certificaciones</a></li>
              <li><a href="#!">Mediateca</a></li>
            </ul>
            <br/>
            <form  action="/ProyectoFinal/login" method="POST">  
                <div class="input-field">
                    <label for="username">Usuario</label>
                    <input id="username" name="username" type="text"/>
                </div>
                <div class="input-field">
                    <label for="password">Contraseña</label>
                    <input id="password" name="password" type="password"/>
                </div>    
                <div class="form-group">
                    <button id="btnSes" class="btn btn-primary btn-lg">Ingresar</button>
                </div>
            </form>
            <br/>
            <a href="/ProyectoFinal/guardar">guardar</a>
            <br/>
            <a class="btn" href="/ProyectoFinal/informacionIdioma">Información</a>
            <br/>
            <br/>
            <a class="btn" href="/ProyectoFinal/registro">registro</a>
            <br/>
        </main>
        <footer>
        </footer>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script type="text/javascript">    
  $('.button-collapse').sideNav({
      menuWidth: 200,
      closeOnClick: true
    }
  );

  function home() {
      document.getElementById('frame').src = 'home.html';
  }

  function boxdemo() {
          document.getElementById('frame').src = 'boxdemo.html';
  }

  function formdemo() {
      document.getElementById('frame').src = 'formdemo.html';
  }
</script>
  </body>
</html>

