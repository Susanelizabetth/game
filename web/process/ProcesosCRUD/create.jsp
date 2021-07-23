<%-- 
    Document   : create
    Created on : Jul 21, 2021, 8:39:12 AM
    Author     : skylu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datos.ProcesoProducto"%>
<%@page import="Entidades.Producto"%>
<%
    String nombre = request.getParameter("nombre");
    float precio = Float.parseFloat(request.getParameter("precio"));
    String foto = request.getParameter("foto");

    
    Producto producto = new Producto();
    producto.setNombre(nombre);
    producto.setPrecio(precio);
    producto.setFoto(foto);
    
    ProcesoProducto productoDB = new ProcesoProducto();
    int resultado = productoDB.GuardarProducto(producto);
    if (resultado >= 1) {
        response.sendRedirect("../../CRUD.jsp");
    }
%>