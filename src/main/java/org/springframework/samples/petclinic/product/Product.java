/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.springframework.samples.petclinic.product;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.springframework.core.style.ToStringCreator;

/**
 *
 * @author donaldoherr
 */
@Entity
@Table(name = "product")
public class Product {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isNew() {
        return this.id == null;
    }
    
    @Column(name = "nombre")
    @NotEmpty
    private String nombre;
    @Column(name = "descripcion")
    @NotEmpty
    private String descripcion;
    @Column(name = "precio")
    @NotEmpty
    private String precio;
    @Column(name = "existencia")
    @NotEmpty
    private String existencia;
    @Column(name = "fotografia")
    @NotEmpty
    private String fotografia;
    @Column(name = "status")  //status => 0 activo \ 1 eliminado
    private int status;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getExistencia() {
        return existencia;
    }

    public void setExistencia(String existencia) {
        this.existencia = existencia;
    }

    public String getFotografia() {
        return fotografia;
    }

    public void setFotografia(String fotografia) {
        this.fotografia = fotografia;
    }
    
   
    
    @Override
    public String toString() {
        return new ToStringCreator(this)

                .append("id", this.getId()).append("new", this.isNew())
                .append("nombre", this.getNombre())
                .append("descripcion", this.getDescripcion())
                .append("precio", this.getPrecio())
                .append("existencia", this.getExistencia())
                .append("fotografia", this.getFotografia()).toString();
    }
    
    
    
    
     
    
}
