<%-- 
    Document   : cart-view
    Created on : 07/01/2021, 11:11:31 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cart-style.css">
    <%@ include file="nav.jsp" %>
    
    <div class="cart-view">
        <h1>Mi Carrito</h1>
        <div class="elementos">
            <img src="https://cdn.shopify.com/s/files/1/0690/3073/products/days_300x300.png?v=1466273435">
            <a href="./html/RevisionContenido.html">Days Gone</a>
            <input type="number" name="cantidad"  value="1" id="cantidad">
            <input type="button" class="boton-cart" value="Eliminar">
            <div class="price-item">
                <p class="antes">45.99$</p>
                <p>30.00$</p>
            </div>
        </div>
        <div class="elementos">
            <img src="https://cdn.shopify.com/s/files/1/0690/3073/products/days_300x300.png?v=1466273435">
            <a href="./html/RevisionContenido.html">Days Gone</a>
            <input type="number" name="cantidad"  value="1" id="cantidad">
            <input type="button" class="boton-cart" value="Eliminar">
            <div class="price-item">
                <p class="antes">45.99$</p>
                <p>30.00$</p>
            </div>
        </div>
        <div class="elementos">
            <img src="https://cdn.shopify.com/s/files/1/0690/3073/products/days_300x300.png?v=1466273435">
            <a href="./html/RevisionContenido.html">Days Gone</a>
            <input type="number" name="cantidad"  value="1" id="cantidad">
            <input type="button" class="boton-cart" value="Eliminar">
            <div class="price-item">
                <p class="antes">45.99$</p>
                <p>30.00$</p>
            </div>
        </div>
        
        <div class="total-car">
            <p class="total">Total</p>
            <p>70.99$</p>
        </div>
        <div class="opcions">
            <div class="shop-continue">
                <img src="image/flecha-izquierda (1).svg" alt="">
                <p>Continuar comprando</p>
            </div>
            <input type="button" class="boton-cart" value="Finalizar compra">
            
        </div>
    </div>

<%@ include file="footer.jsp"  %>
