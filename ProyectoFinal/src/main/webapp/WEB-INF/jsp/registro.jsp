<%-- 
    Document   : registro
    Created on : 25/04/2017, 04:01:20 PM
    Author     : daniicape
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/general.css" type="text/css" rel="stylesheet" media="screen,projection"/>
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
        <main>
            <form  action="/ProyectoFinal/registrar1" method="POST">
            <div class="input-field col s12">
                <select id="status" name="status" onChange="mostrar(this.value);">
                    <!--<option value="" disabled selected>Selecciona una opción</option>-->
                    <option value="1">Alumno UNAM</option>
                    <option value="2">Trabajador UNAM</option>
                    <option value="3">Externo</option>
                </select>
              
            </div>
            <div class="row">
            <div class="input-field col s7">
                <label for="username">Nombre(s)</label>
                <input id="nombre" name="nombre" type="text" required/>
            </div>
            <div class="input-field col s6">
                <label for="last_name">Apellido Paterno</label>
                <input id="app" name="app" type="text" required/>
            </div>
            <div class="input-field col s6">
                <label for="last_name">Apellido Materno</label>
                <input id="apm" name="apm" type="text" required/>
            </div>
            </div>
            <div id="alumno" style="display: none;">
            <div class="row">
            <div class="input-field col s6">
                <label for="last_name">Numero de Cuenta</label>
                <input id="cuenta" name="cuenta" type="text" required/>
            </div>
            <div class="input-field col s6">
                <label for="last_name">Carrera</label>
                <input id="carrera" name="carrera" type="text" required/>
            </div>
             </div>
            </div>
            <div id="trabajador" style="display: none;">
            <div class="row">
            <div class="input-field col s6">
                <label for="last_name">Numero de Trabajador</label>
                <input id="ntrabajador" name="ntrabajador" type="text" required/>
            </div>
            <div class="input-field col s6">
                <label for="last_name">RFC</label>
                <input id="rfc" name="rfc" type="text" required/>
            </div>
             </div>
            </div>
               <div id="externo" style="display: none;">
            <div class="row">
            <div class="input-field col s6">
                <label for="last_name">RFC</label>
                <input id="rfce" name="rfce" type="text" required/>
            </div>
            
             </div>
            </div> 
                <div class="row">
                    <div class="input-field col s6">
                      <label for="password">Contraseña</label>
                      <input id="password" name="password" type="password" class="validate" required/>
                    </div>
                    <div class="input-field col s6">
                      <label for="password">Confirmar Contraseña</label>
                      <input id="password2" name="password2" type="password" class="validate" required/>
                    </div>  
                </div>
                <input id="grupo" name="grupo" type="text" value="${idgrupo}"  hidden="true"/>
                <div class="form-group">
                    <button  type="submit" id="btnSes" class="btn btn-primary btn-lg">Aceptar</button>
                </div>
            </form>
           
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
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script type="text/javascript"> 
      $(document).ready(function() {
      $('select').material_select();
      });
  </script>
  <script type="text/javascript">
      
function mostrar(id) {
    if (id === "1") {
        $("#alumno").show();
        $("#trabajador").hide();
        $("#externo").hide();
        $("#ntrabajador").removeAttr("required");
        $("#rfc").removeAttr("required");
        $("#rfce").removeAttr("required");
    }

    if (id === "2") {
        $("#alumno").hide();
        $("#trabajador").show();
        $("#externo").hide();
        $("#cuenta").removeAttr("required");
        $("#carrera").removeAttr("required");
        $("#rfce").removeAttr("required");
    }

    if (id === "3") {
        $("#alumno").hide();
        $("#trabajador").hide();
        $("#externo").show();
        $("#cuenta").removeAttr("required");
        $("#carrera").removeAttr("required");
        $("#rfc").removeAttr("required");
    }

   }
</script>
    </body>
</html>
