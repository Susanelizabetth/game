<%-- 
    Document   : Busqueda
    Created on : 07/08/2021, 5:23:36 p. m.
    Author     : susan
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.Producto"%>
<%@page import="Datos.ProcesoProducto"%>


<!DOCTYPE html>

<html lang="en,es" dir="ltr">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="css/style.css" type="text/css">
      <link rel="stylesheet" href="css/busqueda.css">
      
      <%@ include file="nav.jsp" %>
      <%
        
        ProcesoProducto productosDb = new ProcesoProducto();
        List<Producto> productos = productosDb.GetAllProductos();
   
      %>
      
      <div class="sidebar">
         <a class="active1" href="">Juegos</a>
         <a class="active" href="#home">Populares</a>
         <a href="BDisparos.html">Disparos</a>
         <a href="BAventura.html">Aventura</a>
         <a href="BSimula.html">Simuladores</a>
      </div>

      <!---BUSQUEDA---->
    
   
      <div class="container-b">
         <h4 class="title">Juegos Populares</h4>
         <div class="row-b">
            <% for(Producto producto : productos){ %>
            <div class="col">
               <a href="Re-1.html"><img src="<%= producto.getFoto() %>" alt=""></a>
               <h4><%= producto.getNombre() %></h4>
               <div class="rating">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <p>$<%= producto.getPrecio() %></p>
               <a href="cart-view.html"><button>
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewbox="0 0 16 16">
                     <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
               </button></a>

            </div>
        <%}%>
         </div>
      </div>
      
   <%@ include file="footer.jsp"  %>
