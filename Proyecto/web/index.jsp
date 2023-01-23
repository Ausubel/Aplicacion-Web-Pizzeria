
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicia Sesión</title>
    </head>
    <body>
        <h1>Bienvenido al sistema de Login</h1>
        <h2>Introduce tu cuenta y tu contraseña</h2>
        <form action="inicioSesion">
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
            <input type="submit" name="btningresar" value="Ingresar">
        </form>
        <form action="llenaRegistro.jsp">
            <input type="submit" value="Registrar">
        </form>
    </body>
</html>
