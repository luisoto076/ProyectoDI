<%-- 
    Document   : index
    Created on : 22/04/2017, 11:54:48 AM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="ProyectoFinal/guardar">guardar</a>
        <form class="form-horizontal" action="/ProyectoFinal/login" method="POST">
            <div class="form-group">
                <label id="labSes">Usuario</label>
                <input id="username" name="username" class="col-md-offset-1" style="margin-left:2.9cm;"/>
            </div>
            <div class="form-group">
                <label id="labSes">Contraseña</label>
                <input id="password" name="password" type="password" class="col-md-offset-1"/>
            </div>
            <br/>
            <div class="form-group">
                <button id="btnSes" class="btn btn-primary btn-lg">Ingresar</button>
            </div>
        </form>
    </body>
</html>
