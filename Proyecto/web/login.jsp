
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
        <title>Login</title>
    </head>
    <body>
        <%--ESTO ES EL INCIAR SESION --%>
        <div class="container-form sign-in">
            <form class="formulario" action="inicioSesion" method="post">
                <h2 class="create-account">Iniciar Sesion</h2>
                <div class="iconos">
                    <div class="border-icon">
                        <i class='bx bxl-instagram'></i>
                    </div>
                    <div class="border-icon">
                        <i class='bx bxl-google'></i>
                    </div>
                    <div class="border-icon">
                        <i class='bx bxl-facebook-circle'></i>
                    </div>
                </div>
                <p class="cuenta-gratis"> <a href="registro.jsp"> ¿Aun no tienes una cuenta?</a> </p>
                <input type="text"  name="txtcuenta" id="txtcuenta" placeholder="Nombre" >
                <input type="password" name="txtpassword" id="txtpassword" placeholder="Contraseña">
                <input type="submit" value="Ingresar" name="btningresar" >
            </form>

        </div>

        <%--ESTO ES EL REGISTRO --%>
        <div class="container-form sign-up">
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenido a PapasPizza</h2>
                    <p>Si ya tienes una cuenta por favor inicia sesion aqui</p>
                    <button class="sign-up-btn">Iniciar Sesion</button>
                </div>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>
