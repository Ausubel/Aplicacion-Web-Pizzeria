
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Usuario</title>
    </head>
    <body>
        <h1>Borre al usuario en:</h1>
        <form action="borrarUsuario">
            <table border="1">
                <tr>
                    <td>Cuenta:</td>
                    <td><input type="text" name="txtcuenta" id="txtcuenta"></td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><input type="password" name="txtpassword" id="txtpassword"></td>
                </tr>
            </table>
            <input type="reset" name="btnborrar" value="Borrar">
            <input type="submit" name="btneliminar" value="Eliminar">
        </form>
        <form action="index.jsp">
            <input type="submit" value="Regresar al inicio">
        </form>
    </body>
</html>
