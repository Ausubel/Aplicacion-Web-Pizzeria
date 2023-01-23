<%-- 
    Document   : registroGuardado
    Created on : 13 ene. 2023, 09:44:35
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro exitoso en la base de datos</h1>
        <h2>Se guardaron los siguientes datos:</h2>
        <%
            String cuenta = request.getParameter("txtcuenta");
            String nombre = request.getParameter("txtnombre");
            String password = request.getParameter("txtpassword");
            String mail = request.getParameter("txtmail");
        %>
        <form action="Registro">
            <table border="1">
                <tr>
                    <td>Cuenta:</td>
                    <td><%=cuenta%></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><%=nombre%></td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><%=password%></td>
                </tr>
                <tr>
                    <td>Mail:</td>
                    <td><%=mail%></td>
                </tr>
            </table>
        </form>
        <form action="index.jsp">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
