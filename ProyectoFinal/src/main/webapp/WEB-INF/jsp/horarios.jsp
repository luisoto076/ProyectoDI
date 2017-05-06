<%-- 
    Document   : InformacionIdioma
    Created on : 24/04/2017, 01:37:02 AM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <table class="striped">
                <thead>
                    <tr>
                        <th>Grupo</th>
                        <th>Nivel</th>
                        <th>Profesor</th>
                        <th>Horario</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="grupo" items="${grupos}">
                        <tr>
                            <td>${grupo.idGrupo}</td>
                            <td>${grupo.nivel}</td>
                            <td>${grupo.profesor}</td>
                            <td>${grupo.horario}</td>
                            <td>
                                <a class="btn" href="/ProyectoFinal/registro?id=${grupo.idGrupo}">inscribir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
        </main>
        <footer>
        </footer>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  </body>
</html>