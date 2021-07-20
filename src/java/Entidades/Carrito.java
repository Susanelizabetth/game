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
public class Carrito {

    /**
     * @return the PersonaId
     */
    public int getPersonaId() {
        return PersonaId;
    }

    /**
     * @param PersonaId the PersonaId to set
     */
    public void setPersonaId(int PersonaId) {
        this.PersonaId = PersonaId;
    }

    /**
     * @return the ProductoId
     */
    public int getProductoId() {
        return ProductoId;
    }

    /**
     * @param ProductoId the ProductoId to set
     */
    public void setProductoId(int ProductoId) {
        this.ProductoId = ProductoId;
    }

    /**
     * @return the Cantidad
     */
    public int getCantidad() {
        return Cantidad;
    }

    /**
     * @param Cantidad the Cantidad to set
     */
    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    /**
     * @return the NombreProducto
     */
    public String getNombreProducto() {
        return NombreProducto;
    }

    /**
     * @param NombreProducto the NombreProducto to set
     */
    public void setNombreProducto(String NombreProducto) {
        this.NombreProducto = NombreProducto;
    }

    /**
     * @return the FotoProducto
     */
    public String getFotoProducto() {
        return FotoProducto;
    }

    /**
     * @param FotoProducto the FotoProducto to set
     */
    public void setFotoProducto(String FotoProducto) {
        this.FotoProducto = FotoProducto;
    }

    /**
     * @return the CarritoId
     */
    public int getCarritoId() {
        return CarritoId;
    }

    /**
     * @param CarritoId the CarritoId to set
     */
    public void setCarritoId(int CarritoId) {
        this.CarritoId = CarritoId;
    }

    /**
     * @return the PrecioProducto
     */
    public float getPrecioProducto() {
        return PrecioProducto;
    }

    /**
     * @param PrecioProducto the PrecioProducto to set
     */
    public void setPrecioProducto(float PrecioProducto) {
        this.PrecioProducto = PrecioProducto;
    }
    
    
    private int ProductoId;
    private int Cantidad;
    private String NombreProducto;
    private String FotoProducto;
    private int CarritoId;
    private float PrecioProducto;
    private int PersonaId;
}
