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
        <header>
        <div class="nav-wrapper">
            <nav>
                <a href="/ProyectoFinal/index" class="brand-logo">
                    <img src="imagenes/cele_unam_02.png">
                </a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="/ProyectoFinal/iniciarSesion">Inicar Sesion</a></li>
                        <li><a href="/ProyectoFinal/logout">Cerrar Sesion</a></li>
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
            <br/>
            <a class="btn" href="/ProyectoFinal/registro">registro</a>
            <br/>
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
  </body>
</html>