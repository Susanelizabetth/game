/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Entidades.Persona;
import Entidades.Usuario;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author susan
 */
public class ProcesoUsuario {
    Connection _cn;
    
    public ProcesoUsuario(){
        _cn = new Conexion().OpenDb();
    }
    
     public int GuardarUsuario(Usuario usuario,String correo){
        int resultado =0;
        try{
            Statement smtm = _cn.createStatement();
            String queryId = "SELECT id FROM persona WHERE correo='"+correo+"'";
            int personaId = 0;
            
            ResultSet result = smtm.executeQuery(queryId);
            while(result.next()){
                personaId = result.getInt("id");
            }
            
            String query = "INSERT INTO usuario(usuario,password,id_persona,type_user )";
            query += "VALUES ('"+usuario.getUsername()+"','"+usuario.getPassword()+"','"+personaId+"','"+usuario.getType_p()+"')";
            
            resultado = smtm.executeUpdate(query);
            smtm.close();
            
            return resultado;
        }
        catch(Exception e){
            int x = 1;
            out.println(e);
        }
        return resultado;
    }
    
    public Persona ValidarLoginUsuario(Usuario usuario){
        try{
            Statement stmt = _cn.createStatement();
            String query = "CALL ValidarUser('"+usuario.getUsername()+"','"+usuario.getPassword()+"')";
            
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Persona persona = new Persona();
                persona.setNombre(result.getString("nombre"));
                persona.setApellido(result.getString("apellido"));
                persona.setCorreo(result.getString("correo"));
                persona.setId(result.getInt("id"));
                persona.setCiudad(result.getString("ciudad"));
                usuario.setType_p(result.getInt("type_user"));
                return persona;
            }
        }
        catch(Exception e){
            int x = 0;
        }
        return null;
    }
    
    public int UpdateUsuario(Usuario usuario){
        int resultado = 0;
        try{
            Statement stmt = _cn.createStatement();
            String query = " Call UpdateUsuario('"+usuario.getUsername()+"','"+usuario.getPassword()+"')";
        
            resultado = stmt.executeUpdate(query);
            stmt.close();
        }catch(Exception e){
            int x = 1;
        }
        return resultado;
    }
}
