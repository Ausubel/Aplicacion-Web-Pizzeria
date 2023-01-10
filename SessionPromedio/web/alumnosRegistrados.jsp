<%-- 
    Document   : alumnosRegistrados
    Created on : 10 ene. 2023, 10:36:45
    Author     : CASMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos Registrados</title>
    </head>
    <body>
        <%@ page import="negocios.Alumno, java.util.ArrayList" %>
        <h2>Los alumnos que estan registrados son: </h2>
        <% ArrayList<Alumno> alumnos= null; 
        alumnos= (ArrayList<Alumno>)request.getAttribute("Alumnos");
        String numReg= (String) request.getAttribute("contador");
        int numRegistros= Integer.parseInt(NumReg);
        %>
        <table border ="1">
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Promedio</th>
            </tr>

        </table>
    </body>
</html>
