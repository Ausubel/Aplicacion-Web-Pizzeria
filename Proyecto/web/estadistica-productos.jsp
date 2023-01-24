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
    String query = "select p.idPizza,p.namePizza,p.unitPrice,pd.pizzaSlices from pizza p inner join pizzasize pd on pd.idPizzasize=p.idPizzasize order by idPizza";
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
            <caption >Productos</caption>
            <thead>
                <tr>
                    <th>Id pizzas</th>
                    <th>Pizza</th>
                    <th>Precio</th>
                    <th>Porciones</th>
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
                    <td><%=rs.getString("idPizza")%></td>
                    <td><%=rs.getString("namepizza")%></td>
                    <td><%=rs.getString("unitPrice")%></td>
                    <td><%=rs.getString("pizzaSlices")%></td>
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

