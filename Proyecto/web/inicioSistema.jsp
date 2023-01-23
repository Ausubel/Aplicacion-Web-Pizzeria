<% String nombre = request.getAttribute("nombre").toString(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <h1>Hola <%=nombre%> Bienvenido Al Inicio</h1>
        <form action="listaUsuarios.jsp">
            <input type="submit" name="btnconsulta" value="Consultar Usuario">
        </form><br> 
        <form action="borrarUsuario.jsp">
            <input type="submit" name="btnborrarusuario" value="Borra un usuario">
        </form><br>
        <form action="index.jsp">
            <input type="submit" name="btnsalir" value="Salir">
        </form>
    </body>
</html>
