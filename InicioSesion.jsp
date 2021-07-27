<%-- 
    Document   : AAAAAAAAAA
    Created on : 26 jul. 2021, 15:31:39
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <title>Animated Login Form</title>
        <link rel="stylesheet" href="css/InicioSesion.css" type="text/css" media=screen>
    </head>
    <body>
        <div class="center">
            <img class="logo-login" id="img" src="C:\Users\Usuario\OneDrive\Documentos\NetBeansProjects\game\web\image\logo.png" alt="">
            <p id="p1">+ Únete y descubre más titulos a los que jugar.</p>
            <p id="p2">+ Ofertas y juegos exclusivos que te harán reír de la competencia</p>
            <H1>Login</H1>
            <form method="post">
                <div class="txt_field">
                    <input type="text" required>
                    <span></span>
                    <label>Username</label>
                </div>
                <div class="txt_field">
                    <input type="password" required>
                    <span></span>
                    <label>contraseña?</label>
                </div>
                <div class="pass">Olvidaste tu contraseña?</div>
                <input type="submit" value="Login">
                <div class="signup_link">
                    Aun no eres miembro? <a href="#">Registrate</a>
                </div>
            </form>
        </div>
    </body>
</html>