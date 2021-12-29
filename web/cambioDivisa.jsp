<%-- 
    Document   : calculadora
    Created on : 20/12/2021, 2:29:01 p. m.
    Author     : WilangelSalsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objsesion = request.getSession(false);
    String usuario = (String) objsesion.getAttribute("usuario");

    if (usuario.equals("")) {
        response.sendRedirect("index.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambio de Divisas</title>
    </head>
    <body>
        <h1> <% out.print(usuario);%>... acceso concedido</h1>
        <h3>Bienvenido a la web de cambio de divisas donde podras realizar el cambio de pesos a dolares y de dolares a pesos</h3>

        <%
            //declaracion de variables
            double dolares = 0, tipocambio = 0, pesos = 0;
            if (request.getParameter("ok") != null) {
                dolares = Double.parseDouble(request.getParameter("txtDolares"));
                tipocambio = Double.parseDouble(request.getParameter("txtTipoCambio"));
                pesos = dolares * tipocambio;
            }
        %>

        <br></br><!-- espacio -->

        <h1>Cambio Divisa</h1>

        <form action="cambioDivisa.jsp" method="POST">
            <table border=0>
                <tr>
                    <td>Ingrese Cantidad a Cambiar</td>
                    <td><input type="text" name="txtDolares"></td>
                </tr>

                <tr>
                    <td>Ingrese Tipo de Cambio</td>
                    <td><input type="text" name="txtTipoCambio"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="enviar" name="ok">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="txtCantidad" value=<%out.print(pesos);%>>
                    </td>
                </tr>

            </table>
        </form>
    </body>
</html>
