/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Entidades.Producto;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author susan
 */
public class ProcesoProducto {
     Connection _cn;
    
    public ProcesoProducto(){
        _cn = new Conexion().OpenDb();
    }
    
    public List<Producto> GetAllProductos(){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call ObtenerProductos()";
            
            List<Producto> producto = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Producto productos = new Producto();
                productos.setNombre(result.getString("name_producto"));
                productos.setFoto(result.getString("imagen"));
                productos.setPrecio(result.getFloat("precio"));
                productos.setId(result.getInt("id_producto"));
                
                producto.add(productos);
            }
            
            result.close();
            stmt.close();
            
            return producto;
        }
        catch(Exception e){
            int x = 5;
        }
        return null;
    }

}
