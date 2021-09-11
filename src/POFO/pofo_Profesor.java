/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POFO;

/**
 *
* @author @jogonpav
 */
public class pofo_Profesor extends pofo_persona{
    String titulo;
    String anios_exp;
    String id_profesor;
    String id_curso_asignado;
    String nom_curso_asig;

    public String getId_curso_asignado() {
        return id_curso_asignado;
    }

    public void setId_curso_asignado(String id_curso_asignado) {
        this.id_curso_asignado = id_curso_asignado;
    }

    public String getNom_curso_asig() {
        return nom_curso_asig;
    }

    public void setNom_curso_asig(String nom_curso_asig) {
        this.nom_curso_asig = nom_curso_asig;
    }
    
    public String getId_profesor() {
        return id_profesor;
    }

    public void setId_profesor(String id_profesor) {
        this.id_profesor = id_profesor;
    }
    
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAnios_exp() {
        return anios_exp;
    }

    public void setAnios_exp(String anios_exp) {
        this.anios_exp = anios_exp;
    }

    
}
