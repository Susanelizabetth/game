<%-- 
    Document   : loginType
    Created on : Jul 26, 2021, 6:21:05 PM
    Author     : skylu
--%>

<%
     int u_type = (int)session.getAttribute("ut");
   
    
    if (u_type >= 1) {
        response.sendRedirect("CRUD.jsp");
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>