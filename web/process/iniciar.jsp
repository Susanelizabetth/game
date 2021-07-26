<%-- 
    Document   : iniciar.jsp
    Created on : 07/20/2021, 12:54:54 a. m.
    Author     : susan
--%>


<%@page import="Entidades.Persona"%>
<%@page import="Datos.ProcesoUsuario"%>
<%@page import="Entidades.Usuario"%>
<%
    try{
        String user = request.getParameter("username");
        String password = request.getParameter("password");
        
        Usuario usuario = new Usuario();
        usuario.setUsername(user);
        usuario.setPassword(password);
        
        ProcesoUsuario usuarioDb = new ProcesoUsuario();
        
        Persona persona = usuarioDb.ValidarLoginUsuario(usuario);
        
         
           
       
        
        if (persona != null) {
            session.setAttribute("ui", persona.getId());  
            session.setAttribute("n", persona.getNombre());
            session.setAttribute("a", persona.getApellido());
            session.setAttribute("c", persona.getCorreo());
            session.setAttribute("ut", persona.getType_p());
            session.setAttribute("error", 0);
            response.sendRedirect("../loginType.jsp");
        }else{
            session.setAttribute("error", 1);
            
        }

    }
    catch(Exception e){
        
        session.setAttribute("error", 1);
        response.sendRedirect("../InicioSesion.jsp");
    }
    
%>
