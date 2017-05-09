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
            <div id="header_img"></div>
            <nav>
              <div class="nav-wrapper">
                <a class='dropdown-button' href='#' data-activates='dropdown2'>
                    Menú
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <c:if test="${enSesion}">
                        <li><a href="/ProyectoFinal/estudiante/calificaciones">Calificaciones</a></li>
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
        <div class="parallax-container">
            <div class="parallax"><img src="imagenes/parallax2.jpg"></div>
        </div>
        <br/>
        <main>
            <div id="azul" class="carousel carousel-slider center" data-indicators="true">
                <div class="carousel-fixed-item center with-indicators">
                    <a class="btn waves-effect white grey-text darken-text-2">button</a>
                </div>
                <div class="carousel-item blue white-text" href="#one!">
                    <a href="#">
                        <h2>First Panel</h2>
                        <p class="white-text">This is your first panel</p>
                    </a>
                </div>
                <div class="carousel-item blue white-text" href="#two!">
                    <h2>Second Panel</h2>
                    <p class="white-text">This is your second panel</p>
                </div>
                <div class="carousel-item green white-text" href="#three!">
                    <h2>Third Panel</h2>
                    <p class="white-text">This is your third panel</p>
                </div>
                <div class="carousel-item blue white-text" href="#four!">
                    <h2>Third Panel</h2>
                    <p class="white-text">This is your third panel</p>
                </div>
            </div>
            
            
            <div class="slider">
		    <ul class="slides">
		      <li>
				  <div class="card">
    				<div class="card-image waves-effect waves-block waves-light">
    				<!-- Aquí colocamos la clase de la imagen que queremos colocar -->
						<div class="imagen-ingles activator"></div>
    				</div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Idioma ingles<i class="material-icons right">more_vert</i></span>
				      <p><a href="/ProyectoFinal/informacionIdioma?id=1">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right close">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>

		      </li>
		      <li>
		        <div class="card">
    				<div class="card-image waves-effect waves-block waves-light">
    				<!-- Aquí colocamos la clase de la imagen que queremos colocar -->
						<div class="imagen-frances activator"></div>
    				</div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Idioma francés<i class="material-icons right">more_vert</i></span>
				      <p><a href="/ProyectoFinal/infoIdioma?id=2">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right close">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
		      </li>
		      <li>
		        <div class="card">
    				<div class="card-image waves-effect waves-block waves-light">
    				<!-- Aquí colocamos la clase de la imagen que queremos colocar -->
						<div class="imagen-aleman activator"></div>
    				</div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Idioma alemán<i class="material-icons right">more_vert</i></span>
				      <p><a href="/ProyectoFinal/infoIdioma?id=3">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right close">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
		      </li>
		      <li>
		        <div class="card">
    				<div class="card-image waves-effect waves-block waves-light">
    				<!-- Aquí colocamos la clase de la imagen que queremos colocar -->
						<div class="imagen-japones activator"></div>
    				</div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Idioma japones<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right close">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
		      </li>
		    </ul>
		  </div>
            
            
        </main>
        <div class="parallax-container">
            <div class="parallax"><img src="imagenes/parallax2.jpg"></div>
          </div>
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
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script>
       $(document).ready(function(){
            // Inicializamos el slider
		      	$('.slider').slider();
		      	/**
			 	 * OPCIONAL. Script que detiene el slider si das click en los 3 puntitos para leer.
				**/
		      	$('.activator').click(function() {
		      		$('.slider').slider('pause'); 
		      	});
		      	/**
			 	 * OPCIONAL. Script que continua el avance de los slides.
				**/
		      	$('.close').click(function() {
		      		$('.slider').slider('start'); 
		      	});
            $('.carousel.carousel-slider').carousel({dist:0});
            $('.parallax').parallax();
            $('#idiomas').css("height:350px !important;");
       });
  </script>
  </body>
</html>

