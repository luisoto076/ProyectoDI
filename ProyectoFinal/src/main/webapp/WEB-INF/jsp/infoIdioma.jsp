<%-- 
    Document   : infoIdioma
    Created on : 26/04/2017, 01:17:34 AM
    Author     : Dadmy
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
            <a href="/ProyectoFinal/index">
                <div id="header_img"></div>
            </a>
            <nav>
              <div class="nav-wrapper">
                <a class='dropdown-button' href='#' data-activates='dropdown2'>
                    Cursos de idiomas
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=1">Alemán</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=4">Árabe</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=5">Catalán</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=6">Chino</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=7">Coreano</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=3">Francés</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=8">Griego moderno</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=9">Hebreo</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=2">Inglés</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=10">Italiano</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=11">Japonés</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=12">Náhuatl</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=13">Portugués</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=14">Rumano</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=15">Ruso</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=16">Sueco</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=17">Vasco</a></li>
                    
                    
                </ul>
                <a class='dropdown-button' href='#' data-activates='dropdown3'>
                    Exámenes de idiomas   
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="#!">Comprensión de lectura</a></li>
                    <li><a href="#!">Becarios</a></li>
                    <li><a href="#!">Dominio/Posesión</a></li>
                    <li><a href="#!">Guia de Turista</a></li>
                    <li><a href="#!">Residentes médicos</a></li>
                    <li><a href="#!">Profesor de Lengua Extranjera</a></li>
                    <li><a href="#!">TOEFL ITP (Inglés)</a></li>
                    <li><a href="#!">DELF y DALF (Francés)</a></li>
                    <li><a href="#!">CELI (Italiano)</a></li>
                    <li><a href="#!">CAPLE (Portugués)</a></li>
                    <li><a href="#!">HSK (Chino)</a></li>
                    <li><a href="#!">ÖSD (Alemán)</a></li>
                    <li><a href="#!">TestDaF, TestAS y on Daf
                                     (Alemán)</a></li>
                                      
                    
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
            <div >
                <h2 class="header">${idioma.nombre}</h2>
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card blue-grey darken-1">
                            <div class="card-content white-text">
                                <span class="card-title">Información</span>
                                <p>${idioma.informacion}</p>
                            </div>
                        </div>
                    </div>
                
                    <div class="col s12 m6">
                        <div class="card blue-grey darken-1">
                            <div class="card-content white-text">
                                <span class="card-title">Contacto</span>
                                <p>${idioma.contacto}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer>
        </footer>


        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>

    </body>
</html>
