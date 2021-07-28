<%-- 
    Document   : cart-view
    Created on : 07/01/2021, 11:11:31 p. m.
    Author     : susan
--%>

<%@page import="Entidades.Carrito"%>
<%@page import="java.util.List"%>
<%@page import="Datos.ProcesoCarrito"%>
<%
  ProcesoCarrito carritoDb = new ProcesoCarrito();
  int persona_id = (int)session.getAttribute("ui");
  List<Carrito> productosCarrito = carritoDb.ObtenerProductosCarrito(persona_id);
  float total = 0.0f;
%>

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
        <%for(Carrito producto : productosCarrito){%>
        <div class="elementos">
            <img src="<%= producto.getFotoProducto() %>">
            <a><%= producto.getNombreProducto() %></a>
            <a><%= producto.getCantidad()%></a>
            <input type="button" class="boton-cart" value="Eliminar">
            <div class="price-item">
                <p><%= producto.getCantidad()*producto.getPrecioProducto() %></p>
            </div>
        </div>
        
    
<% total += producto.getCantidad()*producto.getPrecioProducto();
              }%>
        
        <div class="total-car">
            <p class="total">Total</p>
            <p><%= total %></p>
        </div>
        <div class="opcions">
            <div class="shop-continue">
                <img src="image/flecha-izquierda (1).svg" alt="">
                <a href="index.jsp">Continuar comprando</a>
            </div>
            <input type="button" class="boton-cart" value="Finalizar compra">
            
        </div>
    </div>

<%@ include file="footer.jsp"  %>
