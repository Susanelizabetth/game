<%-- 
    Document   : Perfil
    Created on : 07/01/2021, 11:07:14 p. m.
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
    <%@ include file="nav.jsp" %>
<body>
    
    <div class="main-content">
    <!-- Top navbar -->
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
                <a href="index.jsp" class="btn btn-info">ir atrás</a>
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
                    <em class="ni location_pin mr-2"></i><%= session.getAttribute("ciu") %> 
                    </div>
                    <div class="h5 mt-4">
                    
                    </div>
                    <div>
                    <em class="ni education_hat mr-2" style= "font-weight: 800;"></i>UTP
                    </div>
                    <hr class="my-4">
                   
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
                                <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="<%= session.getAttribute("c") %> ">
                                
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