<%-- 
    Document   : CRUD
    Created on : Jul 20, 2021, 11:45:05 AM
    Author     : skylu
--%>
<%@page import="Entidades.Producto"%>
<%@page import="java.util.List"%>
<%@page import="Datos.ProcesoProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">

        <link rel="stylesheet" href="css/CRUD.css">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <%@ include file="nav.jsp" %>
    </head>
    <body>
        <%
            int pid  = Integer.parseInt(request.getParameter("pid"));
            ProcesoProducto productosDb = new ProcesoProducto();
            List<Producto> productos = productosDb.GetAllProductos();

            Producto selectedProducto = new Producto();
       for(Producto p : productos){
           if(p.getId() == pid){
               selectedProducto = p;
           }
       }
        %>
  
  
 
    <!-- Delete Modal HTML -->
    <div id="deleteEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="process/ProcesosCRUD/delete.jsp">
                    <div class="modal-header">
                        <h4 class="modal-title"><b>Eliminar Juego</b></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>¿Estas seguro que quieres eliminar el juego?</p>
                        <p class="text-warning"><small>Esta acción es irrevocable.</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="pid" value="<%= selectedProducto.getId() %>" />
                     
                        <input type="submit" class="btn btn-danger" value="Eliminar">
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
<%@ include file="footer.jsp"  %>
</html>