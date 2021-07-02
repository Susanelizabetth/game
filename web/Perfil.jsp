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
    <link rel="stylesheet" href="css/Perfil.css" type="text/css">
    <%@ include file="nav.jsp" %>
    
    <div class="profile-page">
    <div class="perfil-usuario">
        <h1>Perfil</h1>
        <img class="avatar" src="https://www.nicepng.com/png/detail/128-1280406_view-user-icon-png-user-circle-icon-png.png" alt="">
        <h1>Ramp16</h1>
        <h3>miembro desde: 1 mayo 2021</h3>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>

        <h2></h2>
        <h3>Juegos adquiridos</h3>
        <h3>Lista de amigos</h3>
        <h3>Notificaciones</h3>

        <div class="switch-button">
            <!-- Checkbox -->
            <input type="checkbox" name="switch-button" id="switch-label" class="switch-button__checkbox">
            <!-- Botón -->
            <label for="switch-label" class="switch-button__label"></label>
        </div>
        <a class="oa" href="CRUD.html"><h3>Opciones Avanzadas</h3></a>
    </div> 
    
    <div class="user-data">
        <div class="w3-card-4">
            <div class="w3-container w3-green">
                <h2>Datos de Usuario</h2>
            </div>
        
            <form class="w3-container">
                <p>
                    <label>Nombre de usuario: </label>
                    <input type="text" class="w3-input" required>
                    <p><button class="w3-button w3-black w3-round-large">Editar</button></p>
                </p>
                <p>
                    <label>Nombre y apellido: </label>
                    <input type="text" class="w3-input" required>
                    <p><button class="w3-button w3-black w3-round-large">Editar</button></p>
                </p>
                <p>
                    <label>Ciudad: </label>
                    <input type="text" class="w3-input" required>
                    <p><button class="w3-button w3-black w3-round-large">Editar</button></p>
                </p>
                <p>
                    <label>Correo electronico: </label>
                    <input type="text" class="w3-input" required>
                    <p><button class="w3-button w3-black w3-round-large">Editar</button></p>
                </p>
                <p>
                    <label>contraseña: </label>
                    <input type="password" class="w3-input" required>
                    <p><button class="w3-button w3-black w3-round-large">Editar</button></p>
                </p>
            </form>
        </div>

        <div class="metodo-pago">
            <h2>Metodo de pago</h2>
            <div class="pago-tarjeta">
                <div class="content-wrapper">
                    <div class="logo-wrapper">
                        <img src="https://i.pinimg.com/originals/da/d0/97/dad09734a97623bc89ee714df3f3b694.jpg">
                    </div>
                    <span class="text-container">
                        <span>Tarjeta de credito</span>
                    </span>
                </div>
            </div>
            <div class="metodo-paypal">
                <div class="content-wrapper">
                    <div class="logo-wrapper">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Antu_paypal.svg/640px-Antu_paypal.svg.png">
                    </div>
                    <span class="text-container">
                        <span>Paypal</span>
                    </span>
                </div>
            </div>

            <p><button class="w3-button w3-black w3-round-large">cambiar</button></p>
        </div>

        <div class="cuentas-relaciondas">
            <h2>cuentas relaciondas</h2>
            <p><button class="w3-button w3-black w3-round-large">Google</button></p>
            <p><button class="w3-button w3-black w3-round-large">Facebook</button></p>
            <p><button class="w3-button w3-black w3-round-large">Instagram</button></p>
            
            <p><button class="button-cuent-rel">cambiar</button></p>
        </div>

    </div>
</div>
<%@ include file="footer.jsp"  %>
