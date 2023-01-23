<%
    Connection con;
    Conexion cn = new Conexion();
    Statement st;
    ResultSet rs;
    //Mostrar los datos de la tabla con una consulta
    String sql = "SELECT * FROM USUARIO";
    con = cn.getConnection();
    st = con.createStatement();
    rs = st.executeQuery(sql);
%>
<%@page import="java.sql.*"%>
<%@page import="Model.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Usuarios</title>
    </head>
    <body>
        <h1>Los usuarios que estan registrados en:</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Cuenta</th>
                    <th>Nombre</th>
                    <th>Contraseña</th>
                    <th>Correo</th>
                </tr>
            </thead>
            <tbody>
                <%while(rs.next()){%>
                    <tr>
                        <td><%=rs.getString("cuenta")%></td>
                        <td><%=rs.getString("nombre")%></td>
                        <td><%=rs.getString("password")%></td>
                        <td><%=rs.getString("mail")%></td>
                    </tr>
                <%}%>
            </tbody>
        </table><br>
        <%con.close();%>
        <form action="index.jsp">
            <input type="submit" name="btnsalir" value="Retroceder">
        </form>
    </body>
</html>
