<%-- 
    Document   : estadistica-clientes
    Created on : 15 ene. 2023, 11:07:23
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
    String query = "SELECT * FROM user";
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
            <caption>CLIENTES</caption>
            <thead>
                <tr>
                    <th>Id cliente</th>
                    <th>Usuario</th>
                    <th>Email</th>
                    <th>Contraseña</th>
                </tr>
                             <%
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    connection = DriverManager.getConnection(connectionURL, "root", "intelectus");
                    statement = connection.createStatement();
                    rs = statement.executeQuery(query);
                    while (rs.next()) {
            %>
            </thead>

            <tbody>
                <tr>
                    <td><%=rs.getString("idUser")%></td>
                    <td><%=rs.getString("nameUser")%></td>
                    <td><%=rs.getString("loginEmail")%></td>
                    <td><%=rs.getString("password")%></td>
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