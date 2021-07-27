/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Entidades.Carrito;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author susan
 */
public class ProcesoCarrito {
     Connection _cn;
    
    public ProcesoCarrito(){
        _cn = new Conexion().OpenDb();
    }
    
    public int GuardarProductoCarrito(Carrito carrito){
         try{
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarACarrito('"+carrito.getProductoId()+"','"+carrito.getCantidad()+"','"+carrito.getPersonaId()+"')";
            
            int res = 0;
            stmt.executeUpdate(query);
            
            ResultSet result = stmt.executeQuery("Call TotalProductosCarrito('"+carrito.getPersonaId()+"')");
            while(result.next()){
                res = result.getInt("total");
            }
            
            result.close();
            stmt.close();
            return res;
        }
        catch(Exception e){
            int cx = 3;
        }
        return 0;
    }
    
     public List<Carrito> ObtenerProductosCarrito(int pid){
        try{
            Statement stmt = _cn.createStatement();
            String query ="Call ObtenerProductosCarrito('"+pid+"')";
            
            List<Carrito> carritos = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Carrito carrito = new Carrito();
                carrito.setCarritoId(result.getInt("carritoId"));
                carrito.setProductoId(result.getInt("productoId"));
                carrito.setFotoProducto(result.getString("foto"));
                carrito.setNombreProducto(result.getString("nombreProducto"));
                carrito.setCantidad(result.getInt("cantidad"));
                carrito.setPrecioProducto(result.getFloat("precio"));
                
                carritos.add(carrito);
            }
            return carritos;
        }
        catch(Exception e){
            int x = 1;
        }
        return null;
    }
    
}
