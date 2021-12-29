<%-- 
    Document   : index
    Created on : 19/12/2021, 11:18:43 p. m.
    Author     : WilangelSalsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <<script src="js/main.js"></script>
    </head>
    <body>
        <h1>Iniciar Sesion</h1>
        <form action="iniciar" method="post" id="forminicio">
           <label>Usuario</label>
           <input type="text" name="usuario" id="txtusuario"> <br><br>
           <label>Contraseña</label>
           <input type="password" name="pass" id="txtpass"> <br><br>
           <input type="button" value="Iniciar Sesion" id="btniniciar">
           
        </form>
        <br><br><br>
        No tienes una cuenta <a href="registro.jsp">Registrarse</a>
        
    </body>
</html>
