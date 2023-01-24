<%-- 
    Document   : estadisiticas
    Created on : 15 ene. 2023, 11:06:35
    Author     : jcasm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="estadistica.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!--<title>Dashboard Sidebar Menu</title>--> 
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <!--<img src="logo.png" alt="">-->
                </span>

                <div class="text logo-text">
                    <span class="name">User</span>
                    <span class="profession">Papa's Pizza</span>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>

        <div class="menu-bar">
            <div class="menu">

                <li class="search-box">
                    <i class='bx bx-search icon'></i>
                    <input type="text" placeholder="Search...">
                </li>

                <ul class="menu-links">
                   
                    <li class="nav-link">
                        <a href="estadistica-ventas.jsp" target="frame-estadistica" >
                            <i class='bx bx-bar-chart-alt-2 icon' ></i>
                            <span class="text nav-text">Ventas</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="estadistica-productos.jsp" target="frame-estadistica">
                            <i class='bx bxs-box icon' ></i>
                            <span id="productos"class="text nav-text">Productos</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="estadistica-clientes.jsp" target="frame-estadistica">
                            <i class='bx bxs-user-detail icon' ></i>
                            <span class="text nav-text">Clientes</span>
                        </a>
                    </li>


                </ul>
            </div>

            <div class="bottom-content">
                <li class="">
                    <a href="login.jsp">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Salir</span>
                    </a>
                </li>

                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>

    <section class="home">
        <div class="text">Estadística</div>
        <iframe name="frame-estadistica"src="estadistica-ventas.jsp" frameborder="0" width="100%" height="85%" position="absolute"></iframe>
    </section>
    
    <script>
        const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      searchBtn = body.querySelector(".search-box"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
    sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
    body.classList.toggle("dark");
    
    if(body.classList.contains("dark")){
        modeText.innerText = "Light mode";
    }else{
        modeText.innerText = "Dark mode";
        
    }
});

    </script>

</body>
</html>

