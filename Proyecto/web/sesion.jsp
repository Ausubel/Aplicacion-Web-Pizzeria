<%-- 
    Document   : sesion
    Created on : 24 ene 2023, 9:25:48
    Author     : JAMT
--%>

<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "Model.Usuario" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pappa's pizza</title>
    <link rel="stylesheet" type="text/css" href="./css/header_style.css">
    <link rel="stylesheet" type="text/css" href="./css/st-nosotros.css">
    <link rel="stylesheet" type="text/css" href="./css/styles.css">    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="shortcut icon" href="imagenes/iconpag.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <header class="header">
        <div class="container_header logo-nav-container">
            <a href="#"><img class="loguito" src="imagenes/logochef.png" alt=""></a>

            <span class="menu-icon"><img class="menucito" src="imagenes/menu.png" alt=""></span>
            <nav class="navigation">
                <ul>
                    <li>                            
                        <a href="#"><img class="iconitos" src="imagenes/casita.jpg" alt=""> Inicio</a>
                    </li>
                    <li>
                        <a href="#"><img class="iconitos" src="imagenes/people.png" alt=""> Nosotros</a>
                    </li>
                    <li>
                        <p class="colorcitou"><img class="iconitos" src="imagenes/phone.png" alt=""> Teléf: 016060000</p></li>
                    <!--<li>
                        <a class="login" href="./login.jsp"><img class="iconitos" src="imagenes/user.png" alt="">Iniciar Sesión</a>
                    </li>-->
                </ul>
            </nav>
            
            <!--VISTA DE USUARIO LOGUEADO-->
            <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
                      Miguel Paz
                    </button>
                    <ul class="dropdown-menu text-center">
                      <a class="dropdown-item" href="#">
                            <img src="./imagenes/usuario.png" height="40" width="40"/>
                      </a>
                      
                      <li><a class="dropdown-item" href="#">
                              <p>miguel@gmail.com</p>
                          </a>
                      </li>
                      <li><a class="dropdown-item" href="#"><p>Password: ******</p></a></li>
                      
                      <form action="Validar" method="POST">
                        <button name="accion" value="Salir"><a class="dropdown-item" href="index.html">Salir</a></li>
                      </form>
                    </ul>
            </div>

    </header>
    
        <section class="articulos">

            <div class="b-body">
                <div class="container container-all">
        
                    <input type="radio" id="1" name="image-slide" hidden/>
                    <input type="radio" id="2" name="image-slide" hidden/>
                    <input type="radio" id="3" name="image-slide" hidden/>
        
                    <div class="slide">
        
                        <div class="item-slide">
                            <img src="imagenes/banner1.png">
                        </div>
        
                        <div class="item-slide">
                            <img src="imagenes/banner2.png">
                        </div>
        
                        <div class="item-slide">
                            <img src="imagenes/banner3.png">
                        </div>
        
                    </div>
        
                    <div class="pagination">
        
                        <label class="pagination-item" for="1">
                            <img src="imagenes/banner1.png">
                        </label>
        
                        <label class="pagination-item" for="2">
                            <img src="imagenes/banner2.png">
                        </label>
        
                        <label class="pagination-item" for="3">
                            <img src="imagenes/banner3.png">
                        </label>
                    </div>
        
                </div>
            </div>

            <h2 align="center">❖ Nuestras pizzas clásicas ❖</h3>
    
            <div class="cards">
                
                <!--1-->
                <div class="card">
                    <div class="image">
                        <img src="imagenes/c1.png" id="hide-image">
                        <div id="details">
                            <h4>Ingredientes:</h4>
                            <p>Lechuga</p>
                            <p>Tomate</p>
                            <p>Tomate</p>
                            <p>Queso</p>
                            <p>Peperoni</p>
                        </div>
                    </div>
    
                    <div class="card-body">
                        <h5 class="card-title" id="titulo">★ Vegetariana ★</h5>
                        <p class="card-text" id="info">Escoge entre la Mediana, Grande, Familiar y Super Familiar.
                            Acompáñala con (01) Salsa de ajo o garlic y (01) Pepperoncini.</p>
                    </div>
                    <div class="icon-links">
                        <div class="buy">
                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                        <div class="view">
                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                        </div>
                        <div class="like">
                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                        </div>
                    </div>
                </div>

                <!--2-->
                <div class="card">
                    <div class="image">
                        <img src="imagenes/c2.png" id="hide-image">
                        <div id="details">
                            <h4>Ingredientes:</h4>
                            <p>Lechuga</p>
                            <p>Tomate</p>
                            <p>Tomate</p>
                            <p>Queso</p>
                            <p>Peperoni</p>
                        </div>
                    </div>
    
                    <div class="card-body">
                        <h5 class="card-title" id="titulo">★ Pepperoni ★</h5>
                        <p class="card-text" id="info">¡Pídela online con delivery gratis de lunes a jueves!
                            Escoge entre tamaño: Mediano, Grande, Familiar y Super Familiar.</p>
                    </div>
                    <div class="icon-links">
                        <div class="buy">
                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                        <div class="view">
                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                        </div>
                        <div class="like">
                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                        </div>
                    </div>
                </div>

                <!--3-->
                <div class="card">
                    <div class="image">
                        <img src="imagenes/c3.png" id="hide-image">
                        <div id="details">
                            <h4>Ingredientes:</h4>
                            <p>Lechuga</p>
                            <p>Tomate</p>
                            <p>Tomate</p>
                            <p>Queso</p>
                            <p>Peperoni</p>
                        </div>
                    </div>
    
                    <div class="card-body">
                        <h5 class="card-title" id="titulo">★ Americana ★</h5>
                        <p class="card-text" id="info">Escoge entre la Mediana, Grande, Familiar y Super Familiar.
Además, acompáñala con (01) Salsa de ajo o garlic y (01) Pepperoncini.</p>
                    </div>
                    <div class="icon-links">
                        <div class="buy">
                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                        <div class="view">
                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                        </div>
                        <div class="like">
                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                        </div>
                    </div>
                </div>

                <!--4-->
                <div class="card">
                    <div class="image">
                        <img src="imagenes/c4.png" id="hide-image">
                        <div id="details">
                            <h4>Ingredientes:</h4>
                            <p>Lechuga</p>
                            <p>Tomate</p>
                            <p>Tomate</p>
                            <p>Queso</p>
                            <p>Peperoni</p>
                        </div>
                    </div>
    
                    <div class="card-body">
                        <h5 class="card-title" id="titulo">★ Mozzarella ★</h5>
                        <p class="card-text" id="info">Escoge entre la Mediana, Grande, Familiar y Super Familiar.</p>
                    </div>
                    <div class="icon-links">
                        <div class="buy">
                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                        <div class="view">
                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                        </div>
                        <div class="like">
                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <h2 align="center">❖ Nuestras especialialidades ❖</h3>
    
                <div class="cards">
                    
                    <!--1-->
                    <div class="card">
                        <div class="image">
                            <img src="imagenes/e1.png" id="hide-image">
                            <div id="details">
                                <h4>Ingredientes:</h4>
                                <p>Lechuga</p>
                                <p>Tomate</p>
                                <p>Tomate</p>
                                <p>Queso</p>
                                <p>Peperoni</p>
                            </div>
                        </div>
        
                        <div class="card-body">
                            <h5 class="card-title" id="titulo">★ Hawaiana★</h5>
                            <p class="card-text" id="info">Escoge entre la Mediana, Grande, Familiar y Super Familiar.
Acompáñala con (01) Salsa de ajo o garlic y (01) Pepperoncini.</p>
                        </div>
                        <div class="icon-links">
                            <div class="buy">
                                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                            </div>
                            <div class="view">
                                <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                        class="fa-sharp fa-solid fa-circle-info"></i></a>
                            </div>
                            <div class="like">
                                <a href="#"><i class="fa-solid fa-heart"></i></a>
                            </div>
                        </div>
                    </div>
    
                    <!--2-->
                    <div class="card">
                        <div class="image">
                            <img src="imagenes/e2.png" id="hide-image">
                            <div id="details">
                                <h4>Ingredientes:</h4>
                                <p>Lechuga</p>
                                <p>Tomate</p>
                                <p>Tomate</p>
                                <p>Queso</p>
                                <p>Peperoni</p>
                            </div>
                        </div>
        
                        <div class="card-body">
                            <h5 class="card-title" id="titulo">★ Continentalle ★</h5>
                            <p class="card-text" id="info">Pídelo en tamaño mediano, grande, familiar o super familiar al mejor precio.
Delivery gratis de lunes a jueves.</p>
                        </div>
                        <div class="icon-links">
                            <div class="buy">
                                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                            </div>
                            <div class="view">
                                <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                        class="fa-sharp fa-solid fa-circle-info"></i></a>
                            </div>
                            <div class="like">
                                <a href="#"><i class="fa-solid fa-heart"></i></a>
                            </div>
                        </div>
                    </div>
    
                    <!--3-->
                    <div class="card">
                        <div class="image">
                            <img src="imagenes/e3.png" id="hide-image">
                            <div id="details">
                                <h4>Ingredientes:</h4>
                                <p>Lechuga</p>
                                <p>Tomate</p>
                                <p>Tomate</p>
                                <p>Queso</p>
                                <p>Peperoni</p>
                            </div>
                        </div>
        
                        <div class="card-body">
                            <h5 class="card-title" id="titulo">★ Super Margarita 6 quesos ★</h5>
                            <p class="card-text" id="info">Delivery Gratis de Lunes a Viernes.
Encuéntrala en todos los tamaños: Grande, Mediana, Familiar y Super Familiar.</p>
                        </div>
                        <div class="icon-links">
                            <div class="buy">
                                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                            </div>
                            <div class="view">
                                <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                        class="fa-sharp fa-solid fa-circle-info"></i></a>
                            </div>
                            <div class="like">
                                <a href="#"><i class="fa-solid fa-heart"></i></a>
                            </div>
                        </div>
                    </div>
    
                    <!--4-->
                    <div class="card">
                        <div class="image">
                            <img src="imagenes/e4.png" id="hide-image">
                            <div id="details">
                                <h4>Ingredientes:</h4>
                                <p>Lechuga</p>
                                <p>Tomate</p>
                                <p>Tomate</p>
                                <p>Queso</p>
                                <p>Peperoni</p>
                            </div>
                        </div>
        
                        <div class="card-body">
                            <h5 class="card-title" id="titulo">★ Española ★</h5>
                            <p class="card-text" id="info">Escoge entre la Mediana, Grande, Familiar y Super Familiar.</p>
                        </div>
                        <div class="icon-links">
                            <div class="buy">
                                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                            </div>
                            <div class="view">
                                <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                        class="fa-sharp fa-solid fa-circle-info"></i></a>
                            </div>
                            <div class="like">
                                <a href="#"><i class="fa-solid fa-heart"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <h2 align="center">❖ Nuestras Signature ❖</h3>
    
                    <div class="cards">
                        
                        <!--1-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s1.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ Vegan Royale ★</h5>
                                <p class="card-text" id="info">Deliciosa Pizza Vegana Royal con Carne NotMeat, champiñones y queso vegano. ¡Ideal para compartir y disfrutar con quien tu quieras!</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
        
                        <!--2-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s2.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ Vegan green★</h5>
                                <p class="card-text" id="info">Deliciosa Pizza Vegana con champiñones y queso vegano. ¡Ideal para compartir y disfrutar con quien tu quieras!.</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
        
                        <!--3-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s3.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ Hot Chiken ★</h5>
                                <p class="card-text" id="info">Quezzo mozzarella, pollo, champiñones, tomate, jalapeños y salsa ranch</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
        
                        <!--4-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s4.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ Veggie 6 quesos ★</h5>
                                <p class="card-text" id="info">Prueba nuestra pizza vegetariana Veggie 6 quesos, aceitunas negras, cebolla, pimientos verdes, tomate y sazonador italiano.</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>

                        <!--5-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s5.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ Veggie Garlic Parmessan ★</h5>
                                <p class="card-text" id="info">Deliciosa Pizza Vegetariana hecha con queso parmesano , champiñons y salsa de ajo. ¡Ideal para compartir y disfrutar con quien tu quieras!</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>

                        <!--6-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s6.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ The works ★</h5>
                                <p class="card-text" id="info">Pizza The Works es una Pizza con Salchicha Italiana, Jamón y Queso Mozzarella.</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>

                        <!--7-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s7.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ All the meats ★</h5>
                                <p class="card-text" id="info">¿Ya probaste nuestra Pizza All The Meats Papa pizza de carne, tocino, salchicha y jamón? Su exquisito sabor te enamorará.</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>

                        <!--8-->
                        <div class="card">
                            <div class="image">
                                <img src="imagenes/s8.png" id="hide-image">
                                <div id="details">
                                    <h4>Ingredientes:</h4>
                                    <p>Lechuga</p>
                                    <p>Tomate</p>
                                    <p>Tomate</p>
                                    <p>Queso</p>
                                    <p>Peperoni</p>
                                </div>
                            </div>
            
                            <div class="card-body">
                                <h5 class="card-title" id="titulo">★ La favorita★</h5>
                                <p class="card-text" id="info">¡Pide online tu pizza preferida! Prueba nuestra Pizza La Favorita Papa's pizza', ahora con más salchicha y queso que antes.</p>
                            </div>
                            <div class="icon-links">
                                <div class="buy">
                                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                                <div class="view">
                                    <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                            class="fa-sharp fa-solid fa-circle-info"></i></a>
                                </div>
                                <div class="like">
                                    <a href="#"><i class="fa-solid fa-heart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h2 align="center">❖ Combos ❖</h3>
    
                        <div class="cards">
                            
                            <!--1-->
                            <div class="card">
                                <div class="image">
                                    <img src="imagenes/combo1.png" id="hide-image">
                                    <div id="details">
                                        <h4>Ingredientes:</h4>
                                        <p>Lechuga</p>
                                        <p>Tomate</p>
                                        <p>Tomate</p>
                                        <p>Queso</p>
                                        <p>Peperoni</p>
                                    </div>
                                </div>
                
                                <div class="card-body">
                                    <h5 class="card-title" id="titulo">★ Combo pizza grande ★</h5>
                                    <p class="card-text" id="info">¡Disfruta de nuestra exquisita pizza grande a elección! Incluye:1 Pizza Grande Clásica, 1 Gaseosa de 1LT ,Acompañamiento</p>
                                </div>
                                <div class="icon-links">
                                    <div class="buy">
                                        <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                    <div class="view">
                                        <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                class="fa-sharp fa-solid fa-circle-info"></i></a>
                                    </div>
                                    <div class="like">
                                        <a href="#"><i class="fa-solid fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
            
                            <!--2-->
                            <div class="card">
                                <div class="image">
                                    <img src="imagenes/combo2.png" id="hide-image">
                                    <div id="details">
                                        <h4>Ingredientes:</h4>
                                        <p>Lechuga</p>
                                        <p>Tomate</p>
                                        <p>Tomate</p>
                                        <p>Queso</p>
                                        <p>Peperoni</p>
                                    </div>
                                </div>
                
                                <div class="card-body">
                                    <h5 class="card-title" id="titulo">★ Combo pizza familiar ★</h5>
                                    <p class="card-text" id="info">Prueba nuestra pizza familiar en combo! Incluye: 1 pizza familiar clásica a elección,1 Gaseosa de 1LT, 1 Acompañamiento.</p>
                                </div>
                                <div class="icon-links">
                                    <div class="buy">
                                        <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                    <div class="view">
                                        <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                class="fa-sharp fa-solid fa-circle-info"></i></a>
                                    </div>
                                    <div class="like">
                                        <a href="#"><i class="fa-solid fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
            
                            <!--3-->
                            <div class="card">
                                <div class="image">
                                    <img src="imagenes/combo3.png" id="hide-image">
                                    <div id="details">
                                        <h4>Ingredientes:</h4>
                                        <p>Lechuga</p>
                                        <p>Tomate</p>
                                        <p>Tomate</p>
                                        <p>Queso</p>
                                        <p>Peperoni</p>
                                    </div>
                                </div>
                
                                <div class="card-body">
                                    <h5 class="card-title" id="titulo">★ Combo 2 pizzas grandes ★</h5>
                                    <p class="card-text" id="info">Incluye: 2 Pizzas Grandes Papa John's Clásicas. Las Pizzas Signature, 6 Rolls de Pepperoni, Gaseosa de 1.5 Lt.</p>
                                </div>
                                <div class="icon-links">
                                    <div class="buy">
                                        <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                    <div class="view">
                                        <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                class="fa-sharp fa-solid fa-circle-info"></i></a>
                                    </div>
                                    <div class="like">
                                        <a href="#"><i class="fa-solid fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
            
                            <!--4-->
                            <div class="card">
                                <div class="image">
                                    <img src="imagenes/combo4.png" id="hide-image">
                                    <div id="details">
                                        <h4>Ingredientes:</h4>
                                        <p>Lechuga</p>
                                        <p>Tomate</p>
                                        <p>Tomate</p>
                                        <p>Queso</p>
                                        <p>Peperoni</p>
                                    </div>
                                </div>
                
                                <div class="card-body">
                                    <h5 class="card-title" id="titulo">★ Combo 2 pizzas familiares ★</h5>
                                    <p class="card-text" id="info">Combo perfecto para compartir. Incluye: 2 pizzas familiares, Rolls de Pepperoni, Gaseosa de 1.5Lt.</p>
                                </div>
                                <div class="icon-links">
                                    <div class="buy">
                                        <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                    <div class="view">
                                        <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                class="fa-sharp fa-solid fa-circle-info"></i></a>
                                    </div>
                                    <div class="like">
                                        <a href="#"><i class="fa-solid fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <h2 align="center">❖ Complementos ❖</h3>
    
                            <div class="cards">
                                
                                <!--1-->
                                <div class="card">
                                    <div class="image">
                                        <img src="imagenes/ac1.png" id="hide-image">
                                        <div id="details">
                                            <h4>Ingredientes:</h4>
                                            <p>Lechuga</p>
                                            <p>Tomate</p>
                                            <p>Tomate</p>
                                            <p>Queso</p>
                                            <p>Peperoni</p>
                                        </div>
                                    </div>
                    
                                    <div class="card-body">
                                        <h5 class="card-title" id="titulo">★ Rolls de chocoabellana ★</h5>
                                        <p class="card-text" id="info">Dulces rolls con crema de avellana, chocolate Sublime y Lentejitas.</p>
                                    </div>
                                    <div class="icon-links">
                                        <div class="buy">
                                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                                        </div>
                                        <div class="like">
                                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                
                                <!--2-->
                                <div class="card">
                                    <div class="image">
                                        <img src="imagenes/ac2.png" id="hide-image">
                                        <div id="details">
                                            <h4>Ingredientes:</h4>
                                            <p>Lechuga</p>
                                            <p>Tomate</p>
                                            <p>Tomate</p>
                                            <p>Queso</p>
                                            <p>Peperoni</p>
                                        </div>
                                    </div>
                    
                                    <div class="card-body">
                                        <h5 class="card-title" id="titulo">★ Nuditos de ajo x8★</h5>
                                        <p class="card-text" id="info">Nuditos de pan hechos con fresca masa y bañados con salsa de ajo y queso parmesano.</p>
                                    </div>
                                    <div class="icon-links">
                                        <div class="buy">
                                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                                        </div>
                                        <div class="like">
                                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                
                                <!--3-->
                                <div class="card">
                                    <div class="image">
                                        <img src="imagenes/ac3.png" id="hide-image">
                                        <div id="details">
                                            <h4>Ingredientes:</h4>
                                            <p>Lechuga</p>
                                            <p>Tomate</p>
                                            <p>Tomate</p>
                                            <p>Queso</p>
                                            <p>Peperoni</p>
                                        </div>
                                    </div>
                    
                                    <div class="card-body">
                                        <h5 class="card-title" id="titulo">★ Mini cheesesticks★</h5>
                                        <p class="card-text" id="info">Hechos con: Masa fresca recién horneada, Salsa especial de ajo y 100% Mozzarella.</p>
                                    </div>
                                    <div class="icon-links">
                                        <div class="buy">
                                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                                        </div>
                                        <div class="like">
                                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                
                                <!--4-->
                                <div class="card">
                                    <div class="image">
                                        <img src="imagenes/ac4.png" id="hide-image">
                                        <div id="details">
                                            <h4>Ingredientes:</h4>
                                            <p>Lechuga</p>
                                            <p>Tomate</p>
                                            <p>Tomate</p>
                                            <p>Queso</p>
                                            <p>Peperoni</p>
                                        </div>
                                    </div>
                    
                                    <div class="card-body">
                                        <h5 class="card-title" id="titulo">★ Rolls de canela x6 ★</h5>
                                        <p class="card-text" id="info">6 unidades, hechos con: Masa recién horneada, Dulce de canela, Azúcar glaseada.</p>
                                    </div>
                                    <div class="icon-links">
                                        <div class="buy">
                                            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                                        </div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="mostrar()" id="hide-button"><i
                                                    class="fa-sharp fa-solid fa-circle-info"></i></a>
                                        </div>
                                        <div class="like">
                                            <a href="#"><i class="fa-solid fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

            <!--FINALMENTE AQUÍ ESTA EL FOOTER-->

            </section>
    
         <footer class="piePagina">
             <div class="container_header"> 
                 <div class="grupo1">
                    <div class="box">
                        <div class="seccion-descripcion">
                            <img src="imagenes/logochef.png">
                            <p id="texto-logo">Papa's Pizza</p>
                        </div>
                        <p>Negocio dedicado a la elaboración de pizzas, compruebe nuestro trabajo.<br><br>
                        Haz que todos los días sean perfectos, no limites tu deseo de comer pizza.
                        </p>
                    </div>
                    
                    <div class="box">
                        <h3>INFORMACIÓN</h3>
                        <p>
                            <a href="index.html" target="_blank" class="enlaces">Inicio</a><br><br>
                            <a href='nosotros.html' target="_blank" class="enlaces">Nosotros</a><br><br>
                            <a href="dinosaurio.html" target="_blank" class="enlaces">Dinosaurio</a>
                        </p>
                    </div>
                    <div class="box">
                        <h3>SÍGUENOS EN: </h3>
                        <!--Caja para redes sociales, con subcajas dentro-->
                        <div class="redes-sociales">
                            <div><a href="#" target="_blank"><span class="icon-facebook-circled"></span></a></div>
                            <div><a href="#" target="_blank" ><span class="icon-instagram"></span></a></div>
                            <div><a href="#" target="_blank"><span class="icon-twitter-1"></span></a></div>
                        </div>
                        <!--Caja para las formas de pago-->
                        <div class="formas-de-pago">
                            <h3>FORMAS DE PAGO </h3>
                            <img src="imagenes/logo_visa.png">
                            <img src="imagenes/logo_mastercard.png">
                            <img src="imagenes/logo_american.png">
                        </div>
                    </div>
                    <div class="box">
                        <h3>CONTACTO</h3>
                        <p>Télefono: 056 234 567<br><br>
                            WhatsApp:  978 654 321<br><br>
                            Correo: pa.pizzeria@gmail.com<br><br>
                            Ubicación: Direccion_Nueva 138 - Ica <br><br>
                            <a href="#" target="_blank" class="enlaces">Ver mapa</a>
                        </p>
                    </div>
                </div>
                <hr>
                <!--SEGUNDO GRUPO-->
                <div class="grupo2">
                    <small>&copy; 2022 <b>Papa's Pizza</b>  |  Todos los derechos reservados</b></small><br>
                    <small><a href="#" class="enlaces">Privacidad</a> | <a href="#" class="enlaces">Términos y condiciones</a></small>
                </div>
             
             
             </div>
          
                
            </footer>

        
         


          

        <script src="./scripts/display.js"></script>          

</body>

</html>

