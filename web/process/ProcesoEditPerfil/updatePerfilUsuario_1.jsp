<%-- 
    Document   : updatePerfil
    Created on : 26 jul. 2021, 16:01:00
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Datos.ProcesoUsuario"%>
<%@page import="Entidades.Usuario"%>

<%
    String usuario = request.getParameter("un");
    
    Usuario un = new Usuario();
    un.setUsername(usuario);
    
    ProcesoUsuario usuarioBD = new ProcesoUsuario();
    int resultado = usuarioBD.UpdateUsuario(un);
    if (resultado >= 1){
        response.sendRedirect("../..Perfil.jsp");
    }
%>