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
            String query = "Call InsertarACarrito('"+carrito.getProductoId()+"','"+carrito.getPersonaId()+"','"+carrito.getCantidad()+"')";
            
            int res = 0;
            stmt.executeUpdate(query);
            
            ResultSet result = stmt.executeQuery("Call CantidadProductosCarrito('"+carrito.getPersonaId()+"')");
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
    
}
