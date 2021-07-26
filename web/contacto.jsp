<%-- 
    Document   : contacto
    Created on : 07/01/2021, 11:04:15 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="StyleSheet" href="css/EstiloContacto.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <%@ include file="nav.jsp" %>
    
    <div class="Margen">
    <h1>¿En que podemos ayudarte?</h1>
    
    <fieldset class="CajaL">
        <legend><b>Atención al cliente</b></legend>
        <p><b>Método de contacto con nuestro agentes</b></p>
        <label class="correo">Correo electrónico:</label>
        <input type="text" value="Gamersgamers@gam" disabled><br><br>
        <label class="Whatsapp">Whatsapp:</label>
        <input type="text" value="666-6420" disabled><br><br>
        <label><b>Redes Sociales</b></label><br><br>
        <div class="social">
            <a  href="#"><img class="DPF" src="image/FB.png" align="left" width="29px" height="29px"></a><div class="DPtext">Facebook</div><br>
            <a  href="#"><img class="DP" src="image/Img/IG.png" align="left" width="29px" height="29px"></a><div class="DPtext">Instagram</div><br>
            <a  href="#"><img class="DP" src="image/Img/Reddit.png" align="left" width="30px" height="30px"></a><div class="DPtext">Reddit</div><br>

        </div>
        <br><label><b>Noticias y actualizaciones</b></label><br><br>
            <a  href="#"><img class="DP" src="image/Img/Twitch.png" align="left" width="38px" height="40px"></a><div class="DPtext">Twitch</div><br>
            <a  href="#"><img class="DP" src="image/Img/youtube.png" align="left" width="39px" height="30px"></a><div class="DPtext">Youtube</div><br>
        
    </fieldset>
    <div class="CajaPadre">
        
        <fieldset class="Caja1">
        <legend><b>Preguntas Frecuentes</b></legend>
        <a href="default.asp" target="_blank"><p>No recibí el código de mi juego</p></a>
        <a href="default.asp" target="_blank"><p>No me permite completar la transacción</p></a>
        <a href="default.asp" target="_blank"><p>El juego que compré no es compatible con mi región</p></a>
        <a href="default.asp" target="_blank"><p>¿Como hago una devolución?</p></a>

        </fieldset><br>
   
    </div>
    <form action="process/ProcesoComen.jsp">
    <h2>Ayúdanos a mejorar</h2>
    <div class="CajaMadre">
        
        <fieldset class="Caja2">
            
            <legend><b>Dejanos tu retroalimentación</b></legend>
            
            <input type="text" name="tema" class="Tema" placeholder="Tema" maxlength="10" size="10">
        <br><br>
            <textarea class="comentarios" name="comentario" rows="10" cols="40" placeholder="Escribe aquí tus comentarios"></textarea>
            <input class="boton_1"type="submit" >
        </fieldset>
            
          
    </div>
    </form>
    <h2>Sucursales</h2>
    
    <div class="CajaMapa">
        
        <div class="cajabuscar"><form method="get" id="buscarform">
                <form>
                <input type="search" class="search-data" placeholder="Search" required>
                <button type="submit"></button>
            </form>
        </form></div>
        <br>
        <img class="Mapa" src="image/Img/Mapa.png">
    </div>
</div>

<%@ include file="footer.jsp"  %>