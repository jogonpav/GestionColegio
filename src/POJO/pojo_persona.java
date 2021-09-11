/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POJO;

import java.sql.Date;
import java.time.LocalTime;


/**
 *
 * @author josep
 */
public class pojo_persona {
    String user;
    String contrasena;
    String tipo;
    String nombre;
    String identificacion;
    int usuario_id;
    Date fecha_ingreso;
    LocalTime hora_ingreso;

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public LocalTime getHora_ingreso() {
        return hora_ingreso;
    }

    public void setHora_ingreso(LocalTime hora_ingreso) {
        this.hora_ingreso = hora_ingreso;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }
    
    public Integer getUsuarios_id (){
        return usuario_id;
    
    }
    public void setUsuarios_id (int usuarios_id){
        this.usuario_id = usuarios_id;
    
    }

    
    
}
