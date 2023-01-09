
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="hec" uri="https://www.parainformaticos.com/"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi propio tag</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
           Ingrese texto
           <input type="text" name="texto">
           <input type="submit" name="Procesar">
        </form>
        
        <%
            String texto= request.getParameter("texto");
            if (texto!=null){
        %>
        
        <br/>Texto invertido:
        <hec:invierte texto="<%=texto%>"/>
        <br/>
        <hec:hora/>
        
        <%}%>        
    </body>
</html>
