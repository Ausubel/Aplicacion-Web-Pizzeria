<%-- 
    Document   : muestaDatos
    Created on : 10 ene. 2023, 09:54:00
    Author     : CASMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import ="negocios.Alumno" %>
        <% Alumno alumno = (Alumno) request.getAttribute("atribAlumn");%>
        <h1>MuestraDatos.jsp</h1>
        <h2>Aqui se despliegan los datos que envió el servlet</h2>
        <p>Tus datos son los siguientes: </p>
        <table cellspacing="3" cellpadding="3" border="1">
            <tr>
                <td align="right">Te llamas:</td>
                <td><% alumno.getNombre()%></td>
            </tr>
            <tr> 
                <td align="right"> Tus apellidos: </td>
                <td><% alumno.getApellidos()%></td>
            </tr>
            <tr>
                <td align="right"> Y tu promedio es: </td>
                <td><% alumno.getPromedio()%></td>
            </tr>

        </table>
            <form action="index.jsp" method="post">
                <input type="submit" value="Regresar">
            </form>
    </body>
</html>
