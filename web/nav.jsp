<%-- 
    Document   : nav
    Created on : 07/01/2021, 10:01:37 p. m.
    Author     : susan
--%>



<!---------------------------------Links de nav y foot------------------------------ -->
    <link rel="stylesheet" href="css/only-foot.css" type="text/css">
    <link rel="stylesheet" href="css/new-var-style.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <title>Game+</title>
    <!-- ------------------------------SCRIPT DEL BOTON DE NOTIFICACIONES------------------------------ -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".bell-not .btn").click(function(){
                $(this).parent().toggleClass("active");
                $(".nav-items").removeClass("active");
            });
        })

    </script>
    <!-- ------------------------------FIN DE SCRIPT DEL BOTON DE NOTIFICACIONES------------------------------ -->
</head>
<body>
    <!-- ----------------------------------------------------NAV---------------------------------------------- -->
    <nav>    
        <div class="logo">
                <a href="PaginaPrincipal.html"><img src="image/logo.png"></a>
            </div>
            <div class="nav-items">
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="Busqueda.jsp">Juegos</a></li>
                <li><a href="AcercaProyecto.jsp">Conócenos</a></li>
                <li><a href="contacto.jsp">Contactos</a></li>
                <li><a href="RegistroUsuario.jsp">Regístrate</a></li>
                <li><a href="InicioSesion.jsp">Inicia Sesión</a></li>
            </div>
            <form >
                <input type="search" class="search-data" placeholder="Search" required>
                <button type="submit" class="fas fa-search"></button>
            </form>
            <div class="boton">
                <button><a href="Perfil.jsp"><i class="fas fa-user"></i></a></button>
                <div class="bell-not">
                    <button class="btn"><i class="fas fa-bell"></i></button>
                    <div class="not-content" id="desplegable">
                        <div class="not-title content">
                            <h2 class="not-margin color-white">Notificaciones</h2>
                        </div>
                        <div class="user-not">
                            <span class="color-white">
                                <i class="fas fa-user-circle"></i>
                            </span>
                            <div class="not-info">
                                <h3 class="not-margin color-font">Juegos S.A</h3>
                                <p class="not-margin font-large color-white"> Ha subido un juego</p>
                                <p class="not-margin color-gray">hace 5 minutos</p>
                            </div>
                        </div>
                        <div class="user-not">
                            <span class="color-white">
                                <i class="fab fa-playstation"></i>
                            </span>
                            <div class="not-info">
                                <h3 class="not-margin color-font">Playstation</h3>
                                <p class="not-margin font-large color-white"> Tu pedido ha sido confirmado</p>
                                <p class="not-margin color-gray">hace 30 minutos</p>
                            </div>
                        </div>
                        <div class="user-not">
                            <span class="color-white">
                                <i class="fab fa-xbox"></i>
                            </span>
                            <div class="not-info">
                                <h3 class="not-margin color-font">Xbox</h3>
                                <p class="not-margin font-large color-white">Tu pedido esta en proceso</p>
                                <p class="not-margin color-gray">hace 45 minutos</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <button><a href="cart-view.jsp"><i class="fas fa-cart-plus"></i></a></button>
            </div>
    </nav>
<!-- --------------------------------------------------------TERMINA NAV-------------------------------------------------- -->
