<%-- 
    Document   : Cerrar
    Created on : 07/27/2021, 12:15:07 p. m.
    Author     : susan
--%>

<%
    session.setAttribute("ui", null);
    response.sendRedirect("index.jsp");

%>