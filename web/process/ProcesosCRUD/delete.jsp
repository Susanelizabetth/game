<%@page import="Datos.ProcesoProducto"%>
<%
    int producto_id = Integer.parseInt(request.getParameter("pid"));
    
    ProcesoProducto productosDb = new ProcesoProducto();
    
    productosDb.DeleteProducto(producto_id);
    
    response.sendRedirect("../../CRUD.jsp");
%>
