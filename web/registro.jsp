<%-- 
    Document   : registro
    Created on : 20/12/2021, 1:58:08 p. m.
    Author     : WilangelSalsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarme</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form action="nuevousuario" method="post">
        <label>Nombre</label>
        <input type="text" name="Nombre"><br><br>
        <label>Apellido</label>
        <input type="text" name="Apellido"><br><br>
        <label>Usuario</label>
        <input type="text" name="Usuario"><br><br>
        <label>Contraseña</label>
        <input type="password" name="Pass"><br><br>
        <input type="submit" value="Registrar">
        </form>
        
        
    </body>
</html>
