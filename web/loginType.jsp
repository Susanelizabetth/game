<%-- 
    Document   : loginType
    Created on : Jul 26, 2021, 6:21:05 PM
    Author     : skylu
--%>

<%
       int id = 0;
    if(session.getAttribute("ut") != null){
        id = (int)session.getAttribute("ut");
    } 
   
    
    if (id >= 1) {
        response.sendRedirect("CRUD.jsp");
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>