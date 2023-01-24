<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <!---<title> Responsive Registration Form | CodingLab </title>--->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;
            }
            body{
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                background-image: url(img/4.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .container{
                max-width: 700px;
                width: 100%;
                background-color: #fff;
                padding: 25px 30px;
                border-radius: 5px;
                box-shadow: 0 5px 10px rgba(0,0,0,0.15);
            }
            .container .title{
                font-size: 25px;
                font-weight: 500;
                position: relative;
            }
            .container .title::before{
                content: "";
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 30px;
                border-radius: 5px;
                
            }
            .content form .user-details{
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                margin: 20px 0 12px 0;
            }
            form .user-details .input-box{
                margin-bottom: 15px;
                width: calc(100% / 2 - 20px);
            }
            form .input-box span.details{
                display: block;
                font-weight: 500;
                margin-bottom: 5px;
            }
            .user-details .input-box input{
                height: 45px;
                width: 100%;
                outline: none;
                font-size: 16px;
                border-radius: 5px;
                padding-left: 15px;
                border: 1px solid #ccc;
                border-bottom-width: 2px;
                transition: all 0.3s ease;
            }

            form .gender-details .gender-title{
                font-size: 20px;
                font-weight: 500;
            }
            form .category{
                display: flex;
                width: 80%;
                margin: 14px 0 ;
                justify-content: space-between;
            }
            form .category label{
                display: flex;
                align-items: center;
                cursor: pointer;
            }
            form .category label .dot{
                height: 18px;
                width: 18px;
                border-radius: 50%;
                margin-right: 10px;
                background: #d9d9d9;
                border: 5px solid transparent;
                transition: all 0.3s ease;
            }

            form .button{
                height: 45px;
                margin: 35px 0
            }
            form .button input{
                height: 100%;
                width: 100%;
                border-radius: 5px;
                border: none;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 1px;
                cursor: pointer;
                transition: all 0.3s ease;
                background: red;
            }
           
            @media(max-width: 584px){
                .container{
                    max-width: 100%;
                }
                form .user-details .input-box{
                    margin-bottom: 15px;
                    width: 100%;
                }
                form .category{
                    width: 100%;
                }
                .content form .user-details{
                    max-height: 300px;
                    overflow-y: scroll;
                }
                .user-details::-webkit-scrollbar{
                    width: 5px;
                }
            }
            @media(max-width: 459px){
                .container .content .category{
                    flex-direction: column;
                }
            }

        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            <div class="title">Registraste</div>
            <div class="content">
                <form action="Registro">
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">Nombre</span>
                            <input type="text" placeholder="Ingresar tu nombre" name="txtnombre" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Apellido</span>
                            <input type="text" placeholder="Ingresa tu apellido" name="txtapellido" required>
                        </div>
                         <div class="input-box">
                            <span class="details">DNI</span>
                            <input type="text" placeholder="Ingresa tu DNI" name="txtdni" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Direccion</span>
                            <input type="text" placeholder="Ingresa tu contraseña" name="txtdireccion" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Email</span>
                            <input type="text" placeholder="Ingresa tu Email" name="txtmail" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Celular</span>
                            <input type="text" placeholder="Ingresa tu N° de Celular" name="txtcelular" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input type="password" placeholder="Ingresa tu Contraseña" name="txtpassword" required>
                        </div>
                    </div>                    
                    <div class="button">
                        <input type="submit" value="Registro" name="btnguardar">
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
