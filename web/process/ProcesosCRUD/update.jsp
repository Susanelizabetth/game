<%-- 
    Document   : update
    Created on : Jul 21, 2021, 3:08:19 PM
    Author     : skylu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datos.ProcesoProducto"%>
<%@page import="Entidades.Producto"%>
<%
    String nombre = request.getParameter("nombreEdit");
    float precio = Float.parseFloat(request.getParameter("precioEdit"));
    String foto = request.getParameter("fotoEdit");
    int pid = Integer.parseInt(request.getParameter("pid"));
    
    Producto producto = new Producto();
    producto.setNombre(nombre);
    producto.setPrecio(precio);
    producto.setFoto(foto);
    producto.setId(pid);
    
    ProcesoProducto productoDB = new ProcesoProducto();
    int resultado = productoDB.UpdateProducto(producto);
    if (resultado >= 1) {
        response.sendRedirect("../../CRUD.jsp");
    }
   
%>