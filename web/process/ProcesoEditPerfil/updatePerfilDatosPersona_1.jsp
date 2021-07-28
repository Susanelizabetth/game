<%-- 
    Document   : updatePerfilDatosPersona
    Created on : 26 jul. 2021, 16:14:13
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="Datos.ProcesoPersona"%>
<%@page import ="Entidades.Persona"%>
<%
    String Ciudad = request.getParameter("CiudadEdit");
    String Nombre = request.getParameter("NombreEdit");
    String Apellido = request.getParameter("ApellidoEdit");
    String Correo = request.getParameter("CorreoEdit");
    
    Persona persona = new Persona();
    persona.setCiudad(Ciudad);
    persona.setNombre(Nombre);
    persona.setApellido(Apellido);
    persona.setCorreo(Correo);
    
    ProcesoPersona personaDB = new ProcesoPersona();
    int resultado = personaDB.UpdatePersona(persona);
    if (resultado >= 1){
        response.sendRedirect("../../Perfil.jsp");
    }
%>
