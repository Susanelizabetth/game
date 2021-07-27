/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Entidades.Persona;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author susan
 */
public class ProcesoPersona {
     Connection _cn;
    
    public ProcesoPersona(){
        _cn = new Conexion().OpenDb();
    }
    public int RegistrarPersona(Persona persona){
        int resultado = 0;
        try{
            
            Statement smtm = _cn.createStatement();
            String query = "INSERT INTO Persona(nombre,apellido,correo,ciudad,cel,fechaNac,user_type)";
            query += "VALUES('"+persona.getNombre()+"','"+persona.getApellido()+"','"+persona.getCorreo()+"','"+persona.getCiudad()+"','"+persona.getTelefono()+"','"+persona.getFechaNacimiento()+"','"+persona.getType_p()+"')";
        
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 0;
        }
        
        return resultado;
    }    
    
    public int UpdatePersona(Persona persona){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = "Call UpdatePersona('"+persona.getId()+"','"+persona.getNombre()+"','"+persona.getApellido()+"','"+persona.getCorreo()+"','"+persona.getTelefono()+"','"+persona.getFechaNacimiento()+"','"+persona.getCiudad()+"')";
            
            resultado = stmt.executeUpdate(query);
            stmt.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
        }
        
        return resultado;
    }
    
}
