<%-- 
    Document   : RegistroUsuario
    Created on : 07/01/2021, 11:01:22 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/principal-style.css" type="text/css">
    <%@ include file="nav.jsp" %>
    
<div class="Reg">
        <div class="titulo-reg">
            <h2>Registrate!</h2>
        </div>
        <div class="Registro">
            <form action="process/registrar.jsp" method="post">
                <input type="text" name="name" id="name" placeholder="name" required>
                <input type="text" name="lastname" id="lastname" placeholder="last name" required>
                <input type="date" name="fechaNac" id="fechaNac" placeholder="fecha de nacimiento" required>
                <input type="text" name="celular" id="celular" placeholder="celular">

                <input type="text" name="username" id="username" placeholder="username" required>
                <input type="email" name="email" id="email" placeholder="email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" required>
                <input type="password" name="password" id="password" placeholder="password" required>
                <div class="div-city">
                    <p>ciudad</p>
                    <select name="city" id="city" placeholder="city" required>
                        <option value="Panama">Panama</option>
                        <option value="Mexico">Mexico</option>
                        <option value="Brazil">Brazil</option>
                        <option value="Ecuador">Ecuador</option>
                    </select> 
                </div>
                <div class="acep-ter">
                    <input type="checkbox" name="at" id="at">
                    <p>Acepta los términos y condiciones del servicio</p>
                </div>
                <div class="button-reg">
                    <button type="submit">Registrar</button>
                </div>
            </form>
            <div class="cuenta-ya" style="display: flex;">
                <p>Si ya posees una cuenta</p><a href="InicioSesion.html">INICIA SESIÓN</a>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp"  %>
    
