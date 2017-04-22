/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapeo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="idioma")
/**
 *
 * @author luis
 */
public class Idioma implements Serializable {
    
    @Id@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "ididioma")
    private long ididioma;
    
    @Column(name = "nombre")
    private String nombre;
    
    @Column(name = "contacto")
    private String contacto;
    
    @Column(name = "informacion")
    private String informacion;
    
    public long getIdidioma() {
        return ididioma;
    }

    public void setIdidioma(long ididioma) {
        this.ididioma = ididioma;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getInformacion() {
        return informacion;
    }

    public void setInformacion(String informacion) {
        this.informacion = informacion;
    }

    
}
