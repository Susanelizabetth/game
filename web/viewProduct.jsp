<%-- 
    Document   : viewProduct
    Created on : Jul 24, 2021, 7:06:13 PM
    Author     : skylu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.util.List"%>
<%@page import="Entidades.Producto"%>
<%@page import="Datos.ProcesoProducto"%>


<html lang="en,es" dir="ltr">
     <%
            int pid  = Integer.parseInt(request.getParameter("pid"));
            ProcesoProducto productosDb = new ProcesoProducto();
            List<Producto> productos = productosDb.GetAllProductos();

            Producto selectedProducto = new Producto();
       for(Producto p : productos){
           if(p.getId() == pid){
               selectedProducto = p;
           }
       }
        %>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/viewProduct.css">
        <%@ include file="nav.jsp" %>
        
    <main class="container">

        <!-- Left Column / Headphones Image -->
        <div class="left-column">
            <img class="active" src="<%= selectedProducto.getFoto()%>" alt="">
        </div>


        <!-- Right Column -->
        <div class="right-column">

            <!-- Product Description -->
            <div class="product-description">
                <span><b>PUBLICADOR: <%= selectedProducto.getPublicador()%></b></span><br>
                <span><b>DESAROLLADOR: <%= selectedProducto.getDesarollador()%></b></span>
                <h1><%= selectedProducto.getNombre()%></h1>
                <p><%= selectedProducto.getDescripcion()%></p>
            </div>

            <!-- Product Configuration -->
            <div class="product-configuration">
                <!-- Cable Configuration -->
                <div class="cable-config">
                    <span>Plataforma</span>

                    <div class="cable-choose">
                       <button><%=selectedProducto.getPlataforma()%></button>
                    </div>

                    <a href="#">Obtener Ayuda</a>
                </div>
            </div>

            <!-- Product Pricing -->
            <div class="product-price">
                <span>$ <%=selectedProducto.getPrecio()%></span>
                <a href="#" class="cart-btn">Añadir al Carrito</a>
            </div>
        </div>
    </main>
<%@ include file="footer.jsp"  %>
