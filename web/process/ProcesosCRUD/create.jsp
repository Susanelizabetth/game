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
     String Descripcion = request.getParameter("descripcion");
    String Publicador = request.getParameter("publicador");
    String Desarollador = request.getParameter("desarollador");
    String Plataforma = request.getParameter("plataforma");

    
    Producto producto = new Producto();
    producto.setNombre(nombre);
    producto.setPrecio(precio);
    producto.setFoto(foto);
    producto.setDescripcion(Descripcion);
    producto.setPublicador(Publicador);
    producto.setDesarollador(Desarollador);
    producto.setPlataforma(Plataforma);
    
    ProcesoProducto productoDB = new ProcesoProducto();
    int resultado = productoDB.GuardarProducto(producto);
    if (resultado >= 1) {
        response.sendRedirect("../../CRUD.jsp");
    }
%>