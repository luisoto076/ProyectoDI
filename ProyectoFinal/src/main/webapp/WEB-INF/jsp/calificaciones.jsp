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
        <title>Calificaciones</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="../css/general.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="../css/calificaciones.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        
    </head>
    <body>
        <header>
            <div id="header_img"></div>
            <nav>
              <div class="nav-wrapper">
                <a class='dropdown-button' href='#' data-activates='dropdown2'>
                    Menú
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <c:if test="${enSesion}">
                        <li><a href="/ProyectoFinal/calificaciones">Calificaciones</a></li>
                    </c:if>
                    <li><a href="#!">Posgrados</a></li>
                    <li><a href="#!">Exámenes</a></li>
                    <li><a href="#!">Certificaciones</a></li>
                    <li><a href="#!">Mediateca</a></li>
                </ul>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <c:if test="${enSesion}">
                        <li><a href="/ProyectoFinal/logout">Cerrar Sesión</a></li>
                    </c:if>
                    <c:if test="${!enSesion}">
                        <li><a href="/ProyectoFinal/iniciarSesion">Iniciar Sesión</a></li>
                    </c:if>
                    <li><a href="badges.html">Components</a></li>
                    <li><a href="collapsible.html">JavaScript</a></li>
                </ul>
              </div>
            </nav>
        </header>  
        <main>
            <br/>
            <table class="striped">
                <thead>
                    <tr>
                        <th>Grupo</th>
                        <th>Nivel</th>
                        <th>Profesor</th>
                        <th>Calificación</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="inscripcion" items="${inscripciones}">
                        <tr>
                            <td>${inscripcion.grupo.idGrupo}</td>
                            <td>${inscripcion.grupo.nivel}</td>
                            <td>${inscripcion.grupo.profesor}</td>
                            <td>${inscripcion.calificacion}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
        </main>
        <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="../js/materialize.js"></script>
  <script src="../js/init.js"></script>
  </body>
</html>