/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapeo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="inscripcion")

/**
 *
 * @author luis
 */
public class Inscripcion implements Serializable {
 
    @Id
    @OneToOne
    @JoinColumn(name="idestudiante")
    private Estudiante estudiante;
    
    @Id
    @OneToOne
    @JoinColumn(name="idgrupo")
    private Grupo grupo;
    
    @Column(name = "calificacion")
    private double calificacion;

    public Estudiante getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(Estudiante estudiante) {
        this.estudiante = estudiante;
    }

    public Grupo getGrupo() {
        return grupo;
    }

    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }

    public double getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(double calificacion) {
        this.calificacion = calificacion;
    }
    
    
    
}
