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
                        <li><a href="/ProyectoFinal/iniciarSesion">Inicar Sesion</a></li>
                        <li> </li>
                        <li> </li>
                      </ul>
            </nav>
        </div>
        </header>  
        <main>
            <br/>
            <a class='dropdown-button btn blue darken-3' href='#' data-activates='dropdown2'>
                <i class="material-icons">menu</i>
            </a>
            <!-- Dropdown Structure -->
            <ul id='dropdown2' class='dropdown-content'>
              <li><a href="#!">Posgrados</a></li>
              <li><a href="#!">Exámenes</a></li>
              <li><a href="#!">Certificaciones</a></li>
              <li><a href="#!">Mediateca</a></li>
            </ul>
            <br/>
            <a class="btn" href="/ProyectoFinal/informacionIdioma">Información</a>
            <br/>
            <br/>
            <a class="btn" href="/ProyectoFinal/registro">registro</a>
            <br/>
            <div class="carousel carousel-slider center" data-indicators="true">
                <div class="carousel-fixed-item center with-indicators">
                    <a class="btn waves-effect white grey-text darken-text-2">button</a>
                </div>
                <div class="carousel-item red white-text" href="#one!">
                    <h2>First Panel</h2>
                    <p class="white-text">This is your first panel</p>
                </div>
                <div class="carousel-item amber white-text" href="#two!">
                    <h2>Second Panel</h2>
                    <p class="white-text">This is your second panel</p>
                </div>
                <div class="carousel-item green white-text" href="#three!">
                    <h2>Third Panel</h2>
                    <p class="white-text">This is your third panel</p>
                </div>
                <div class="carousel-item blue white-text" href="#four!">
                    <h2>Fourth Panel</h2>
                    <p class="white-text">This is your fourth panel</p>
                </div>
            </div>
        </main>
        <aside>
            <ul >   
                <li><a href="#!">Alemán</a></li>
                <li><a href="#!">Árabe</a></li>
                <li><a href="#!">Catalán</a></li>
                <li><a href="#!">Chino</a></li>
                <li><a href="#!">Coreano</a></li>
                <li><a href="#!">Francés</a></li>
                <li><a href="#!">Griego moderno</a></li>
                <li><a href="#!">Hebreo</a></li>
                <li><a href="#!">Inglés</a></li>
                <li><a href="#!">Italiano</a></li>
                <li><a href="#!">Japonés</a></li>
                <li><a href="#!">Náhuatl</a></li>
                <li><a href="#!">Portugués</a></li>
                <li><a href="#!">Rumano</a></li>
                <li><a href="#!">Ruso</a></li>
                <li><a href="#!">Sueco</a></li>
                <li><a href="#!">Vasco</a></li>
            </ul>
        </aside>
        <footer>
        </footer>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script>
       $('.carousel.carousel-slider').carousel();
  </script>
  </body>
</html>

