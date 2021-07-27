<%-- 
    Document   : addCarrito
    Created on : 07/26/2021, 10:35:56 p. m.
    Author     : susan
--%>

<%@page import="Datos.ProcesoCarrito"%>
<%@page import="Entidades.Carrito"%>
<%
    int producto_id = Integer.parseInt(request.getParameter("pid"));
    
    int persona_id = (int)session.getAttribute("ui");
    
    Carrito carrito = new Carrito();
    carrito.setCantidad(1);
    carrito.setPersonaId(persona_id);
    carrito.setProductoId(producto_id);
        
    ProcesoCarrito carritoDb = new ProcesoCarrito();
   
    int totalProductos = carritoDb.GuardarProductoCarrito(carrito);
    
    out.print(totalProductos);
%>
