<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            <input type="hidden" name="pinta" value="SI">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td>
                        <input type="text" name="nombre">
                    </td>
                </tr>
                <tr>
                    <td valign="top">Género</td>
                    <td>
                        <input type="radio" name="genero"
                               value="Masculino"
                               checked>Masculino<br>
                        <input type="radio" name="genero"
                               value="Femenino">Femenino
                    </td>
                </tr>
                <tr>
                    <td valign="top">Deporte</td>
                    <td>
                        <input type="checkbox" name="deporte"
                               value="Ciclismo">Ciclismo<br>
                        <input type="checkbox" name="deporte"
                               value="Tenis">Tenis<br>
                        <input type="checkbox" name="deporte"
                               value="Natación">Natación<br>
                        <input type="checkbox" name="deporte"
                               value="Karate">Karate<br>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Enviar">
                    </td>
                </tr>
            </table>
        </form>
        
        <c:set var="si" value="${param.pinta}"/>
        <c:if test="${si=='SI'}">
            Variable recogida= <c:out value="${si}" /><br>
            Ingresos<br>
            Nombre: <c:out value="${param.nombre}"/><br>
            Género: <c:out value="${param.genero}"/><br>
            Deportes:   
            <c:forEach items="${paramValues.deporte}" var="x">
                <c:out value="${x}" /> &nbsp;
            </c:forEach>
        </c:if>
    </body>
</html>
