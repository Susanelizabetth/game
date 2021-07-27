<%-- 
    Document   : Perfil
    Created on : 07/01/2021, 11:07:14 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="css/Perfil.css" type="text/css">
</head>
<body>
    
    <div class="main-content">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
        <div class="container-fluid">
            <!-- Brand -->
            <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="" target="_blank">Perfil de Usuario</a>
            <!-- Form -->
            <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
                <div class="form-group mb-0">
                    <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><em class="fas fa-search"></i></span>
                    </div>
                    <input class="form-control" placeholder="Search" type="text">
                    </div>
                </div>
            </form>
            <!-- User -->
            <ul class="navbar-nav align-items-center d-none d-md-flex">
            <li class="nav-item dropdown">
                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media align-items-center">
                    <span class="avatar avatar-sm rounded-circle">
                    <img alt="Image placeholder" src="https://icon-library.com/images/person-profile-icon/person-profile-icon-15.jpg"> <!---->
                    </span>
                    <div class="media-body ml-2 d-none d-lg-block">
                    <span class="mb-0 text-sm  font-weight-bold"><%= session.getAttribute("n") %> <%= session.getAttribute("a") %></span>
                    </div>
                </div>
                </a>
                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                <div class=" dropdown-header noti-title">
                    <h6 class="text-overflow m-0">Welcome!</h6>
                </div>
                <a href="../examples/profile.html" class="dropdown-item">
                    <em class="ni ni-single-02"></i>
                    <span>My profile</span>
                </a>
                <a href="../examples/profile.html" class="dropdown-item">
                    <em class="ni ni-settings-gear-65"></i>
                    <span>Settings</span>
                </a>
                <a href="../examples/profile.html" class="dropdown-item">
                    <em class="ni ni-calendar-grid-58"></i>
                    <span>Activity</span>
                </a>
                <a href="../examples/profile.html" class="dropdown-item">
                    <em class="ni ni-support-16"></i>
                    <span>Support</span>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#!" class="dropdown-item">
                    <em class="ni ni-user-run"></i>
                    <span>Logout</span>
                </a>
                </div>
            </li>
            </ul>
        </div>
        </nav>
        <!-- Header  pb-8 pt-5 pt-lg-8 d-flex align-items-center-->
        <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Vaporwave-4K-Wallpapers.jpg/800px-Vaporwave-4K-Wallpapers.jpg); background-size: cover; background-position: center top;">
        <!-- Mask -->
        <span class="mask bg-gradient-default opacity-8"></span>
        <!-- Header container -->
        <div class="container-fluid d-flex align-items-center">
            <div class="row">
            <div class="col-lg-7 col-md-10">
                <h1 class="display-2 text-white">Hola <%= session.getAttribute("un") %></h1>
                <p class="text-white mt-0 mb-5">Esta es tu pagina de perfil. Aqui podras observar y editar toda tu informacion de usuario Lorem ipsum dolor sit amet consectetur adipiscing, elit blandit integer nunc habitant dictumst, arcu maecenas mus praesent commodo</p>
                <a href="#!" class="btn btn-info">Editar perfil</a>
            </div>
            </div>
        </div>
        </div>
        <!-- Page content -->
        <div class="container-fluid ">
        <div class="row">
            <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0"> <!--col-xl-4 order-xl-2 mb-5 mb-xl-0-->
            <div class="card card-profile shadow">
                <div class="row justify-content-center">
                <div class="col-lg-3 order-lg-2">
                    <div class="card-profile-image">
                    <a href="#">
                        <img alt="" src="https://icon-library.com/images/person-profile-icon/person-profile-icon-15.jpg" class="rounded-circle"> <!---->
                    </a>
                    </div>
                </div>
                </div>
                <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                
                </div>
                <div class="card-body pt-1 pt-md-4">
                <div class="row">
                    <div class="col">
                    <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                        <div>
                        <span class="heading">22</span>
                        <span class="description">Siguiendo</span>
                        </div>
                        <div>
                        <span class="heading">10</span>
                        <span class="description">Seguidores</span>
                        </div>
                        <div>
                        <span class="heading">89</span>
                        <span class="description">Comentarios</span>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="text-center">
                    <h3>
                    <%= session.getAttribute("n") %> <%= session.getAttribute("a") %> <span class="font-weight-light"></span>
                    </h3>
                    <div class="h5 font-weight-300">
                    <em class="ni location_pin mr-2"></i>Panama, <%= session.getAttribute("ciu") %> 
                    </div>
                    <div class="h5 mt-4">
                    <em class="ni business_briefcase-24 mr-2"></i>Software Engineering - Web Developement Enthusiast
                    </div>
                    <div>
                    <em class="ni education_hat mr-2"></i>University of Computer Science
                    </div>
                    <hr class="my-4">
                    <!--<p>Mollis senectus fermentum libero condimentum scelerisque aptent fames per donec commodo et, cubilia ultrices egestas non blandit torquent quisque tincidunt id sollicitudin, laoreet quis nisi malesuada a integer enim primis sem tellus. .</p>-->
                    <a href="#">Mostrar Más</a>
                </div>
                </div>
            </div>
            </div>
            <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
            <div class="card bg-secondary shadow">
                <div class="card-header bg-white border-0">
                <div class="row align-items-center">
                    <div class="col-8 ">
                    <h3 class="mb-0">Mi cuenta</h3>
                    <a href="#!" class="btn btn-info">Guardar cambios</a>
                    </div>
                    <div class="col-4 text-right">
                    
                    </div>
                </div>
                </div>
                <div class="card-body">
                <form>
                    <h6 class="heading-small text-muted mb-4">Informacion de Usuario</h6>
                    <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                        <div class="form-group focused">
                            <label class="form-control-label" for="input-username">Username</label>
                            <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Username" value="<%= session.getAttribute("un") %> ">
                        </div>
                        </div>
                        <div class="col-lg-6">
                        <div class="form-group">
                            <label class="form-control-label" for="input-city">Ciudad</label>
                            <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="Ciudad" value="<%= session.getAttribute("ciu") %> ">
                        </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                        <div class="form-group focused">
                            <label class="form-control-label" for="input-first-name">Nombre</label>
                            <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="Nombre" value="<%= session.getAttribute("n") %> ">
                        </div>
                        </div>
                        <div class="col-lg-6">
                        <div class="form-group focused">
                            <label class="form-control-label" for="input-last-name">Apellido</label>
                            <input type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Apellido" value="<%= session.getAttribute("a") %> ">
                        </div>
                        </div>
                        
                        
                    </div>
                    </div>
                    <hr class="my-4">
                    <!-- Address -->
                    <h6 class="heading-small text-muted mb-4">Informacion de contacto</h6>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-md-12">
                            
                            <div class="form-group focused">
                                <label class="form-control-label" for="input-email">Email</label>
                                <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="<%= session.getAttribute("a") %> ">
                                
                            </div>
                            <div class="form-group focused">
                                <label class="form-control-label" for="input-country">Contraseña</label>
                                <input type="password" id="input-country" class="form-control form-control-alternative" placeholder="Contraseña" value="<%= session.getAttribute("c") %> ">
                            </div>
                            </div>
                        </div>
                        <div class="row">
                            
                        </div>
                    </div>
                    <hr class="my-4">
                    
                </form>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
  </body>
</html>
