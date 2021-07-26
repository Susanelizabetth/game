/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author susan
 */
public class Producto {

    /**
     * @return the Plataforma
     */
    public String getPlataforma() {
        return Plataforma;
    }

    /**
     * @param Plataforma the Plataforma to set
     */
    public void setPlataforma(String Plataforma) {
        this.Plataforma = Plataforma;
    }

    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
    }

    /**
     * @return the Nombre
     */
    public String getNombre() {
        return Nombre;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    /**
     * @return the Precio
     */
    public Float getPrecio() {
        return Precio;
    }

    /**
     * @param Precio the Precio to set
     */
    public void setPrecio(Float Precio) {
        this.Precio = Precio;
    }

    /**
     * @return the Foto
     */
    public String getFoto() {
        return Foto;
    }

    /**
     * @param Foto the Foto to set
     */
    public void setFoto(String Foto) {
        this.Foto = Foto;
    }
    private int Id;
    private String Nombre;
    private Float Precio;
    private String Foto;
    private String Descripcion;
    private String Publicador;
    private String Desarollador;
    private String Plataforma;

    /**
     * @return the Descripcion
     */
    public String getDescripcion() {
        return Descripcion;
    }

    /**
     * @param Descripcion the Descripcion to set
     */
    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    /**
     * @return the Publicador
     */
    public String getPublicador() {
        return Publicador;
    }

    /**
     * @param Publicador the Publicador to set
     */
    public void setPublicador(String Publicador) {
        this.Publicador = Publicador;
    }

    /**
     * @return the Desarollador
     */
    public String getDesarollador() {
        return Desarollador;
    }

    /**
     * @param Desarollador the Desarollador to set
     */
    public void setDesarollador(String Desarollador) {
        this.Desarollador = Desarollador;
    }
    
}
