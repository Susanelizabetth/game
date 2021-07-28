<%-- 
    Document   : compra
    Created on : 07/27/2021, 10:12:15 p. m.
    Author     : susan
--%>

<%@page import="Entidades.CompraDetalles"%>
<%@page import="Entidades.Compra"%>
<%@page import="Datos.ProcesoCarrito"%>
<%
    int personaId = (int)session.getAttribute("ui");
    ProcesoCarrito carritoDb = new ProcesoCarrito();
    Compra compra = carritoDb.GuardarCompra(personaId);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/compra.css">
        
     <%@ include file="nav.jsp" %>
        <table class="body-wrap">
    <tbody><tr>
        <td></td>
        <td class="container" width="600">
            <div class="content">
                <table class="main" width="100%" cellpadding="0" cellspacing="0">
                    <tbody><tr>
                        <td class="content-wrap aligncenter">
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tbody><tr>
                                    <td class="content-block">
                                        <h2>Gracias por su compra</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                        <table class="invoice">
                                            <tbody><tr>
                                                <td>id cliente: <%---= compra.getCliente() ---%><br>Invoice #12345<br>Fecha: <%--= compra.getFecha() --%></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="invoice-items" cellpadding="0" cellspacing="0">
                                                        <tbody>
                                          <%for(CompraDetalles detalle : compra.getDetalle()){%>
                                                        <tr>
                                                            <td><%= detalle.getProducto() %></td>
                                                            <td><%= detalle.getCantidad() %></td>
                                                            <td class="alignright"><%= detalle.getPrecio() %></td>
                                                        </tr>
                                         <%}%>
                                                        
                                                        <tr class="total">
                                                            <td class="alignright" width="80%">Total</td>
                                                            <td class="alignright"><%= compra.getTotal() %></td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                </tr>
                                
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
                </div>
        </td>
        <td></td>
    </tr>
</tbody></table>

<%@ include file="footer.jsp"  %>