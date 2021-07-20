<%-- 
    Document   : InicioSesion
    Created on : 07/01/2021, 10:48:07 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/InicioSesion.css" type="text/css">
        <%@ include file="nav.jsp" %>
        
         <div class="login-page">
     
            <div class="form">
                
                <img class="logo-login" id="img" src="https://i.ibb.co/6wxDKhH/Whats-App-Image-2021-05-21-at-10-42-35-AM.jpg" alt="">
                
                <p id="p1">+ Únete y descubre más titulos a los que jugar.</p>
                <p id="p2">+ Ofertas y juegos exclusivos que te harán reír de la competencia</p>
                
                <h1>Inicio de Sesión</h1>
                <form action="process/iniciar.jsp" method="post" class="login-form">
                    <input type="text" name="username" placeholder="Nombre de Usuario"/>
                    <input type="password" name="password" placeholder="contaseña"/>
                    <button type="submit">Iniciar Sesión</button>
                    <p class="message"><a href="#">Has olvidado tu contraseña?</a></p>
                    <p class="message">Aun no posees una cuenta? <a href="#">Registrate</a></p>
                </form>
            </div>

            <div class="sign-in-social-media">
                <div class="google-sign-in-button">
                    <div class="content-wrapper">
                        <div class="logo-wrapper">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg">
                        </div>
                        <span class="text-container">
                            <span>Inicia sesión con google</span>
                        </span>
                    </div>
                </div>
                <div class="facebook-sign-in-button">
                    <div class="content-wrapper">
                        <div class="logo-wrapper">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png">
                        </div>
                        <span class="text-container">
                            <span>Inicia sesión con faceb</span>
                        </span>
                    </div>
                </div>
                <div class="instagram-sign-in-button">
                    <div class="content-wrapper">
                        <div class="logo-wrapper">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/e/e7/Instagram_logo_2016.svg">
                        </div>
                        <span class="text-container">
                            <span>Inicia sesión con insta</span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    
<%@ include file="footer.jsp"  %>