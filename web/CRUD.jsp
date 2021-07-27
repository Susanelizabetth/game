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
    
        <%
            ProcesoProducto productosDb = new ProcesoProducto();
            List<Producto> productos = productosDb.GetAllProductos();

        %>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Administración  <b>CRUD</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Añadir Juego</span></a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Imagen</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <%  final int pid;
                        for (Producto producto : productos) {%>
                    <tr>
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td><%=producto.getId()%></td>
                        <th scope="row"> <img class="img-fluid" height="150" width="150" src="<%= producto.getFoto()%>" alt="<%= producto.getNombre()%>"/></th>
                        <td><%=producto.getNombre()%></td>
                        <td><%=producto.getPrecio()%></td>
                        <td>
                            <a href="editCRUD.jsp?pid=<%= producto.getId()%>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="deleteProducto.jsp?pid=<%= producto.getId()%>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <%}%>


                </table>
                <div class="clearfix">

                </div>
            </div>
        </div>
        <!-- Create Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="process/ProcesosCRUD/create.jsp">
                        <div class="modal-header">
                            <h4 class="modal-title">Añadir Juego</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="nombre" required>
                            </div>
                            <div class="form-group">
                                <label>Foto</label>
                                <input type="url" class="form-control" required="false" name="foto">
                            </div>
                            <div class="form-group">
                                <label>Precio</label>
                                <input type="text" class="form-control" required name="precio">
                            </div>
                            <div class="form-group">
                                <label>Plataforma</label>
                                <input type="text" class="form-control" name="plataforma" required>
                            </div>
                            <div class="form-group">
                                <label>Descripción</label>
                                <textarea name="descripcion" class="form-control" requiered>
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label>Desarollador</label>
                                <input type="text" class="form-control" name="desarollador" required>
                            </div>
                            <div class="form-group">
                                <label>Publicador</label>
                                <input type="text" class="form-control" name="publicador" required>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
      

<%@ include file="footer.jsp"  %>

