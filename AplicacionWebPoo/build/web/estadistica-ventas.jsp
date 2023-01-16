<%-- 
    Document   : estadistica-ventas
    Created on : 15 ene. 2023, 11:08:04
    Author     : jcasm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%
    String connectionURL = "jdbc:mysql://localhost:3306/pizza_db?serverTimezone=UTC";
    Connection connection = null;
    ResultSet rs;
    Statement statement = null;
    String query = "SELECT * FROM orderdetail";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tablas</title>

    <link rel="stylesheet" href="productos.css">
</head>
<body>
    <div class="container">
        <table class="table">
            <caption>VENTAS</caption>
            <thead>
                <tr>
                    <th>N° Orden</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Pizza</th>
                </tr>
                             <%
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "1234");
                    statement = connection.createStatement();
                    rs = statement.executeQuery(query);
                    while (rs.next()) {
            %>
            </thead>

            <tbody>
                <tr>
                    <td><%=rs.getString("idOrderDetail")%></td>
                    <td><%=rs.getString("quantity")%></td>
                    <td><%=rs.getString("totalPrice")%></td>
                    <td><%=rs.getString("idPizza")%></td>
                </tr>

                 <%
                    }
                } catch (SQLException e) {
                    out.println("Error al obtener los datos: " + e);
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>