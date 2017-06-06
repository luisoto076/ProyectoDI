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
                    Cursos de idiomas
                </a>
                <!-- Dropdown Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=1">Alemán</a></li>
                    <li><a href="#!">Árabe</a></li>
                    <li><a href="#!">Catalán</a></li>
                    <li><a href="#!">Chino</a></li>
                    <li><a href="#!">Coreano</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=3">Francés</a></li>
                    <li><a href="#!">Griego moderno</a></li>
                    <li><a href="#!">Hebreo</a></li>
                    <li><a href="/ProyectoFinal/informacionIdioma?id=2">Inglés</a></li>
                    <li><a href="#!">Italiano</a></li>
                    <li><a href="#!">Japonés</a></li>
                    <li><a href="#!">Náhuatl</a></li>
                    <li><a href="#!">Portugués</a></li>
                    <li><a href="#!">Rumano</a></li>
                    <li><a href="#!">Ruso</a></li>
                    <li><a href="#!">Sueco</a></li>
                    <li><a href="#!">Vasco</a></li>
                    
                    
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
        <!--<div class="parallax-container">
            <div class="parallax"><img src="imagenes/cele_9.jpg"></div>
        </div>
        <br/> -->
        <main>
            <div id="azul" class="carousel carousel-slider center">
                <div class="carousel-item blue white-text modal-trigger">
                    <a href="#modal1"><img src="imagenes/cele_carr.png"></a>
                </div>
                <div class="carousel-item blue white-textmodal-trigger" href="#modal2">
                    <a href="#modal2"><img src="imagenes/cele_carr2.png"></a>
                </div>
                <div class="carousel-item green white-text modal-trigger" href="#modal3">
                    <a href="#modal3"><img src="imagenes/cele_carr3.png"></a>
                </div>
                <div class="carousel-item blue white-text modal-trigger" href="#modal4">
                    <a href="#modal4"><img src="imagenes/cele_carr4.png"></a>
                </div>
                <div class="carousel-item blue white-text modal-trigger" href="#modal5">
                    <a href="#modal5"><img src="imagenes/cele_carr5.png"></a>
                </div>
            </div>
            
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <img src="imagenes/cele_ext.jpg">
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">cerrar</a>
                </div>
            </div>
            
            <div id="modal2" class="modal">
                <div class="modal-content">
                    <img src="imagenes/cele_ext2.jpg">
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">cerrar</a>
                </div>
            </div>
            <div id="modal3" class="modal">
                <div class="modal-content">
                    <img src="imagenes/cele_ext3.jpg">
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">cerrar</a>
                </div>
            </div>
            <div id="modal4" class="modal">
                <div class="modal-content">
                    <img src="imagenes/cele_ext4.jpg">
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">cerrar</a>
                </div>
            </div>
            <div id="modal5" class="modal">
                <div class="modal-content">
                    <img src="imagenes/cele_ext5.jpg">
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">cerrar</a>
                </div>
            </div>
            <h3 id="nuestros">Idiomas</h3>
            <div class="slider">
		    <ul class="slides">
		       <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/alemanf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class=" light black-text">Alemán</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=1">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/arabiaf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Árabe</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=4">
                                        <h4 class=" light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/catalanf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Catalán</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=5">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/chinaf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">China</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=6">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/coreaf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Coreano</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=7">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/francesf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Francés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=3">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/greciaf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Griego Moderno</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=8">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/hebreof.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Hebreo</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=9">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/inglesf.jpg">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Inglés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=2">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                            <img src="imagenes/italiaf.png" height="300px" width="">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Italiano</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=10">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/japonesf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Japonés</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=11">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/mexicof.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Náhuatl</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=12">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/portuguésf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Portugués</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=13">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/rumaniaf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Rumano</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=14">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/rusiaf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Ruso</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=15">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/sueciaf.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Sueco</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=16">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
                        <li>
		        <div class="imagen-idioma">
                                <img src="imagenes/vascof.png">
    				<div class="caption center-align">
                                    <h3 class="light black-text">Vasco</h3>
                                    <a href="/ProyectoFinal/informacionIdioma?id=17">
                                        <h4 class="light black-text text-lighten-3">
                                            información del idioma
                                        </h4>
                                    </a>
                                </div>
                        </div>
                        </li>
		    </ul>
		  </div> 
            <!--
        <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/aleman.png">
              
            </div>
            <div class="card-content">
                <h4>Alemán</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/arabia.png">
              
            </div>
            <div class="card-content">
                <h4>Árabe</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image black-text">
              <img src="imagenes/catalan.png">
              
            </div>
            <div class="card-content">
                <h4>Catalán</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>    
      </div>
            <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/china.png">
              
            </div>
            <div class="card-content">
                <h4>Chino</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/corea.png">
              
            </div>
            <div class="card-content">
                <h4>Coreano</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/frances2.png">
              
            </div>
            <div class="card-content">
                <h4>Francés</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>    
      </div>
       <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/grecia.png">
              
            </div>
            <div class="card-content">
                <h4>Griego Moderno</h4>  
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/hebreo.png">
              
            </div>
            <div class="card-content">
                <h4>Hebreo</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/ingles1.jpg">
              
            </div>
            <div class="card-content">
                <h4>Inglés</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>    
      </div>
        <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/italia.png">
              
            </div>
            <div class="card-content">
                <h4>Italiano</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/japones.png">
              
            </div>
            <div class="card-content">
                <h4>Japonés</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/mexico.png">
              
            </div>
            <div class="card-content">
                <h4>Náhuatl</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>    
      </div>
       <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/portugués.png">
              
            </div>
            <div class="card-content">
                <h4>Portugués</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/rumania.png">
              
            </div>
            <div class="card-content">
                <h4>Rumano</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/rusia.png">
              
            </div>
            <div class="card-content">
                <h4>Ruso</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>    
      </div>
       <div class="row">
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/suecia.png">
              
            </div>
            <div class="card-content">
                <h4>Sueco</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
        <div class="col s4 m4">
          <div class="card">
            <div class="card-image">
              <img src="imagenes/vasco.png">
              
            </div>
            <div class="card-content">
                <h4>Vasco</h4>
              <p>Desde 1966 el Departamento de Alemán del Centro de Enseñanza de Lenguas Extranjeras (CELE) 
                  ofrece cursos semestrales de alemán en la modalidad presencial para los estudiantes 
                  de licenciatura y posgrado, académicos y trabajadores del campus CU que cumplan con los 
                  requisitos de ingreso</p>
            </div>
            <div class="card-action">
              <a href="/ProyectoFinal/informacionIdioma?id=1">Más información</a>
            </div>
          </div>
        </div>
          
      </div> 
            -->
        </main>
            <!--<div class="indicadores">
                <a><i onclick="prev()" class="material-icons  medium">skip_previous</i></a>
                <a><i onclick="next()" class="material-icons  medium">skip_next</i></a>
            </div> -->
        <!--<div class="parallax-container">
            <div class="parallax"><img src="imagenes/cele_7.jpg"></div>
          </div> -->
        <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2017
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
            $('.slider').slider({indicators:true});
            $('.slider').slider('pause');
           
            $('.carousel.carousel-slider').carousel();
            $('.parallax').parallax();
            $('#idiomas').css("height:350px !important;");
            $('.modal').modal();
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

