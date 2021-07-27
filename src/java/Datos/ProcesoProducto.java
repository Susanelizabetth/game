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
                productos.setNombre(result.getString("nombre"));
                productos.setFoto(result.getString("imagen"));
                productos.setPrecio(result.getFloat("precio"));
                productos.setId(result.getInt("id"));
                productos.setDescripcion(result.getString("descripcion"));
                productos.setPublicador(result.getString("publicador"));
                productos.setDesarollador(result.getString("desarollador"));
                productos.setPlataforma(result.getString("plataforma"));
                
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
    
    public int GuardarProducto(Producto producto) {
        int resultado = 0;
        try {
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarProducto('" + producto.getNombre() + "','" + producto.getFoto() + "','" + producto.getPrecio()+"','"+producto.getDesarollador()+"','"+producto.getDescripcion()+"','"+producto.getPlataforma()+"','"+producto.getPublicador()+"')";

            resultado = stmt.executeUpdate(query);
            stmt.close();

            return resultado;
        } catch (Exception e) {
            int x = 1;
        }

        return resultado;
    }

    public int UpdateProducto(Producto producto){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call UpdateProducto('"+producto.getId()+"','"+producto.getNombre()+"','"+producto.getPrecio()+"','"+producto.getFoto()+"','"+producto.getDescripcion()+"','"+producto.getDesarollador()+"','"+producto.getPublicador()+"','"+producto.getPlataforma()+"')";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
        }
        
        return resultado;
    }
    
    public int DeleteProducto(int pid) {
        try {
            Statement stmt = _cn.createStatement();
            String query = "CALL DeleteProducto('" + pid + "')";

            return stmt.executeUpdate(query);
        } catch (Exception e) {
            int x = 1;
        }
        return 0;
    }
    public List<Producto> GetAventura(){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call BusquedaAventura()";
            
            List<Producto> producto = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Producto productos = new Producto();
                productos.setNombre(result.getString("nombre"));
                productos.setFoto(result.getString("imagen"));
                productos.setPrecio(result.getFloat("precio"));
                productos.setId(result.getInt("id"));
                
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
    
    public List<Producto> GetSimula(){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call BusquedaSimulacion()";
            
            List<Producto> producto = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Producto productos = new Producto();
                productos.setNombre(result.getString("nombre"));
                productos.setFoto(result.getString("imagen"));
                productos.setPrecio(result.getFloat("precio"));
                productos.setId(result.getInt("id"));
                
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
    
    public List<Producto> GetDisparos(){
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call BusquedaDisparos()";
            
            List<Producto> producto = new ArrayList<>();
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Producto productos = new Producto();
                productos.setNombre(result.getString("nombre"));
                productos.setFoto(result.getString("imagen"));
                productos.setPrecio(result.getFloat("precio"));
                productos.setId(result.getInt("id"));
                
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



