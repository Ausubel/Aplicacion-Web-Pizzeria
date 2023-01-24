<%-- 
    Document   : estadistica-productos
    Created on : 15 ene. 2023, 11:07:45
    Author     : jcasm
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%
    String connectionURL = "jdbc:mysql://localhost:3306/pizza_db?serverTimezone=UTC";
    Connection connection = null;
    ResultSet rs;
    Statement statement = null;
    String query = "select* from customer";
%>
<!DOCTYPE html>
<html lang="es">
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
            <caption >Clientes</caption>
            <thead>
                <tr>
                    <th>Id </th>
                    <th>Dni</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Direccion</th>
                    <th>Celular</th>
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
                    <td><%=rs.getString("idCustomer")%></td>
                    <td><%=rs.getString("dni")%></td>
                    <td><%=rs.getString("nameCustomer")%></td>
                    <td><%=rs.getString("lastNameCustomer")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("phone")%></td>
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

