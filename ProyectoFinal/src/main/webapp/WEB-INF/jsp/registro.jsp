<%-- 
    Document   : registro
    Created on : 25/04/2017, 04:01:20 PM
    Author     : daniicape
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
        <div class="nav-wrapper">
            <nav>
                <a href="/ProyectoFinal/index" class="brand-logo">
                    <img src="imagenes/cele_unam_02.png">
                </a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li>
                        </li>
                        <li>
                        </li>
                        <li>
                        </li>
                    </ul>
            </nav>
        </div>
        </header> 
        <main>
       
            <div class="input-field col s12">
                <select id="status" name="status" onChange="mostrar(this.value);">
                    <!--<option value="" disabled selected>Selecciona una opción</option>-->
                    <option value="1">Alumno UNAM</option>
                    <option value="2">Trabajador UNAM</option>
                    <option value="3">Externo</option>
                </select>
              
            </div>
            <br/>
            <br/>
            <br/>
            <br/>
            <form  action="/ProyectoFinal/registrar" method="POST">    
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
                <input id="rfc" name="rfc" type="text" required/>
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
                <div class="form-group">
                    <button  type="submit" id="btnSes" class="btn btn-primary btn-lg">Aceptar</button>
                </div>
            </form>
           
              </main>
        
        
        
  
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
       
    }

    if (id === "2") {
        $("#alumno").hide();
        $("#trabajador").show();
        $("#externo").hide();
    }

    if (id === "3") {
        $("#alumno").hide();
        $("#trabajador").hide();
        $("#externo").show();
    }

   }
</script>
    </body>
</html>
