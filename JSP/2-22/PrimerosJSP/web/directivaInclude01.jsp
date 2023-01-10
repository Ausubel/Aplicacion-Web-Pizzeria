<%-- 
    Document   : directivaInclude01
    Created on : 9 ene. 2023, 22:01:04
    Author     : carsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#FFFFDD">
        <table border="0" width="600">
            <tr>
                <td style="width:140px">
                    <%@include file="WEB-INF/jspf/menu.jspf"%>
                </td>
                <th>
                    <h1>Documento 1</h1> 
                </th>
            </tr>
        </table>
    </body>
</html>
