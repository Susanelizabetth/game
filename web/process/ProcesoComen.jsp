<%-- 
    Document   : ProcesoComen
    Created on : 07/24/2021, 10:55:39 PM
    Author     : sixto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datos.ProcesoComentario"%>
<%@page import="Entidades.Comentario"%>
 <% 
    String tema=request.getParameter("tema");
    String comentario=request.getParameter("comentario");
    
    Comentario comentarios = new Comentario();
    comentarios.setTema(tema);
    comentarios.setComentario(comentario);

    ProcesoComentario comentarioDB = new ProcesoComentario();
    int resultado = comentarioDB.GuardarComentario(comentarios);
    if (resultado >= 1) {
        response.sendRedirect("../contacto.jsp");
    }
    %>