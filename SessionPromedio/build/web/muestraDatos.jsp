
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Muestra Datos</title>
    </head>
    <body>
        <%@ page import ="negocios.Alumno" %>
        <% Alumno alumno = (Alumno) request.getAttribute("atribAlumn");%>
        <h3>muestraDatos.jsp</h3>
        <p>Se guardaron los siguientes datos: </p>
        <table cellspacing="3" cellpadding="3" border="1">
            <tr>
                <td align="right">Nombre: </td>
                <td><%= alumno.getNombre() %></td>
            </tr>
            <tr> 
                <td align="right">Apellidos:  </td>
                <td><%= alumno.getApellidos() %></td>
            </tr>
            <tr>
                <td align="right">Promedio obtenido: </td>
                <td><%= alumno.getPromedio() %></td>
            </tr>
        </table>
            
        <form action="index.jsp" method="post">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
