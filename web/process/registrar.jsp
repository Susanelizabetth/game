<%-- 
    Document   : registrar
    Created on : 07/19/2021, 11:13:54 p. m.
    Author     : susan
--%>
<%@page import="Entidades.Usuario"%>
<%@page import="Entidades.Persona"%>
<%@page import="Datos.ProcesoUsuario"%>
<%@page import="Datos.ProcesoPersona"%>
<%
    try{
        String nombre = request.getParameter("name");
        String apellido = request.getParameter("lastname");
        String fecha = request.getParameter("fechaNac");
        String email = request.getParameter("email");
        String telefono = request.getParameter("celular");
        String ciudad = request.getParameter("city");
        String user = request.getParameter("username");
        String password = request.getParameter("password");
        int tipousuario = Integer.parseInt(request.getParameter("tipo"));
       

        ProcesoPersona personasDb = new ProcesoPersona();
        ProcesoUsuario usuariosDb = new ProcesoUsuario();

        Persona persona = new Persona();
        persona.setNombre(nombre);
        persona.setApellido(apellido);
        persona.setFechaNacimiento(fecha);
        persona.setCorreo(email);
        persona.setTelefono(telefono);
        persona.setCiudad(ciudad);

        Usuario usuario = new Usuario();
        usuario.setUsername(user);
        usuario.setPassword(password);

        int savedPerson = personasDb.RegistrarPersona(persona);
        if (savedPerson > 0) {
            int savedUser = usuariosDb.GuardarUsuario(usuario, email);
            if (savedUser > 0) {
                    out.println("<h2>Usuario y persona Registrado correctamente</h2>");
                    response.sendRedirect("../InicioSesion.jsp");
                    return;
                }
        }else{
            out.println("<h2>Algo paso, no se inserto</h2>");
        }
    }
    catch(Exception e){}
    response.sendRedirect("../RegistroUsuario.jsp");

    
%>
