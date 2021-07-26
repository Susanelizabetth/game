/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;
import Entidades.Comentario;
import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author sixto
 */
public class ProcesoComentario {
    Connection _cn;
public ProcesoComentario(){
        _cn = new Conexion().OpenDb();
    }
public int GuardarComentario(Comentario comentario) {
        int resultado = 0;
        try {
            Statement stmt = _cn.createStatement();
            String query = "Call InsertarComentario('"+comentario.getComentario()+ "','" + comentario.getTema()+"')";

            resultado = stmt.executeUpdate(query);
            stmt.close();

            return resultado;
        } catch (Exception e) {
            int x = 1;
        }

        return resultado;
    }
  
    }