<%-- 
    Document   : index
    Created on : 24/04/2017, 11:39:04 AM
    Author     : luis
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Index</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/general.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/index_style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <header>
            <a href="/ProyectoFinal/index">
                <div id="header_img"></div>
            </a>
            <nav>
              <div class="nav-wrapper">
                <a class='dropdown-button' href='#' data-activates='dropdown2'>
                    Menú
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="#!">Posgrados</a></li>
                    <li><a href="#!">Exámenes</a></li>
                    <li><a href="#!">Certificaciones</a></li>
                    <li><a href="#!">Mediateca</a></li>
                </ul>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <c:if test="${enSesion}">
                        <li><a href="/ProyectoFinal/estudiante/calificaciones">Calificaciones</a></li>
                    </c:if>
                    <c:if test="${enSesion}">
                        <li><a href="/ProyectoFinal/logout">Cerrar Sesión</a></li>
                    </c:if>
                    <c:if test="${!enSesion}">
                        <li><a href="/ProyectoFinal/iniciarSesion">Iniciar Sesión</a></li>
                    </c:if>
                </ul>
              </div>
            </nav>
        </header>
        <div class="parallax-container">
            <div class="parallax"><img src="imagenes/cele_9.jpg"></div>
        </div>
        <br/>
        <main>
            <div id="azul" class="carousel carousel-slider center" data-indicators="true">
                <div class="carousel-fixed-item center with-indicators">
                </div>
                <div class="carousel-item blue white-text" href="#one!">
                    <a href="#">
                        <img src="imagenes/cele_carr.png">
                    </a>
                </div>
                <div class="carousel-item blue white-text" href="#two!">
                    <img src="imagenes/cele_carr2.png">
                </div>
                <div class="carousel-item green white-text" href="#three!">
                    <img src="imagenes/cele_carr3.png">
                </div>
                <div class="carousel-item blue white-text" href="#four!">
                    <img src="imagenes/cele_carr4.png">
                </div>
                <div class="carousel-item blue white-text" href="#four!">
                    <img src="imagenes/cele_carr5.png">
                </div>
            </div>
      
            <div class="slider">
		    <ul class="slides">
		       <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/aleman.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3>Alemán</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=1">
                                        <h4 class="light grey-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/frances.jpeg">
    				<div class="caption center-align">
                                    <h3>Francés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=2">
                                        <h4 class="light grey-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/ingles.jpg">
    				<div class="caption center-align">
                                    <h3>Inglés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=3">
                                        <h4 class="light grey-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/japones.jpg">
    				<div class="caption center-align">
                                    <h3>Japonés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=4">
                                        <h4 class="light grey-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
		    </ul>
		  </div>
        </main>
            <div class="indicadores">
                <a><i onclick="prev()" class="material-icons  medium">skip_previous</i></a>
                <a><i onclick="next()" class="material-icons  medium">skip_next</i></a>
            </div>
        <div class="parallax-container">
            <div class="parallax"><img src="imagenes/cele_7.jpg"></div>
          </div>
        <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="next()">More Links</a>
            </div>
          </div>
        </footer>

  <!--  Scripts-->
  <script src="js/jquery-2.2.3.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script>
       $(document).ready(function(){
            $('.slider').slider({indicators:false});
            $('.slider').slider('pause');
            $('.carousel.carousel-slider').carousel({dist:0});
            $('.parallax').parallax();
            $('#idiomas').css("height:350px !important;");
       });
       
       function prev(){
           $('.slider').slider('prev');
       }
       
       function next(){
           $('.slider').slider('next');
       }
       
  </script>
  </body>
</html>

