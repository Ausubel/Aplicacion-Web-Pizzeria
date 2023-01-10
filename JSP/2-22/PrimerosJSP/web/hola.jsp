<%-- 
    Document   : hola
    Created on : 9 ene. 2023, 20:39:51
    Author     : carsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page-Hola</title>
    </head>
    <body>
        <% for (int x=1;x<=6;++x){%>
            <H<%=x%> style="text-align:center">
                Hola a Todos
            </H<%=x%>>
        <%}%>
    </body>
</html>
