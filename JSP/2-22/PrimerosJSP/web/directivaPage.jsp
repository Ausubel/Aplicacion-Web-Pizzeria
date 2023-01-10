<%-- 
    Document   : directivaPage
    Created on : 9 ene. 2023, 21:20:57
    Author     : carsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Formateando N&Uacute;mero</h3>
        <%
            NumberFormat numero=
                    NumberFormat.getNumberInstance(Locale.UK);
            DecimalFormat formatoNum=(DecimalFormat) numero;
            formatoNum.applyPattern("###,###,###,###.00");
            out.println(formatoNum.format(123456123.789));
        %>
        
        <h3>Formateando Fecha</h3>
        <%
            SimpleDateFormat formatoFecha=
                        new SimpleDateFormat("dd/MM/yyyy");
            out.println(formatoFecha.format(new Date()));
        %>
    </body>
</html>
