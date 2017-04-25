<%-- 
    Document   : InformacionIdioma
    Created on : 24/04/2017, 01:37:02 AM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Horarios</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/informacionIdioma.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <div class="nav-wrapper">
            <nav>
                <a href="#" class="brand-logo">
                    <img src= "imagenes/cele_unam_02.png">
                </a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="sass.html">Sass</a></li>
                        <li><a href="badges.html">Components</a></li>
                        <li><a href="collapsible.html">JavaScript</a></li>
                    </ul> 
            </nav>
        </div>
        <main>
            
            <a class='dropdown-button btn blue darken-3' href='#' data-activates='dropdown1'>Menu</a>

            <!-- Dropdown Structure -->
            <ul id='dropdown1' class='dropdown-content'>
              <li><a href="#!">Posgrados</a></li>
              <li><a href="#!">Exámenes</a></li>
              <li><a href="#!">Certificaciones</a></li>
              <li><a href="#!">Mediateca</a></li>
            </ul>
            
            <table class="striped">
                <thead>
                    <tr>
                        <th>Grupo</th>
                        <th>Profesor</th>
                        <th>Horario</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>1233</td>
                        <td>María Antonienta Roca</td>
                        <td>Lunes,Miercoles,Viernes: 8:00-9:00</td>
                    </tr>
                    <tr>
                        <td>1233</td>
                        <td>Arturo Miranda</td>
                        <td>Lunes,Miercoles,Viernes: 9:00-10:00</td>
                    </tr>
                    <tr>
                        <td>3432</td>
                        <td>Juan Carlos López</td>
                        <td>Lunes,Miercoles,Viernes: 8:00-9:00</td>
                    </tr>
                </tbody>
            </table>
        </main>
        <footer>
        </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>
