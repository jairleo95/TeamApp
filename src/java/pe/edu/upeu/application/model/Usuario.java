/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.model;

/**
 *
 * @author alum.fial8
 */
public class Usuario {

    private String id_usuario;
    private String no_usuario;
    private String cl_password;
    private String id_tipo_usuario;
    private String id_persona;
    private String es_usuario;

    public Usuario(String id_usuario, String no_usuario, String cl_password, String id_tipo_usuario, String id_persona, String es_usuario) {
        this.id_usuario = id_usuario;
        this.no_usuario = no_usuario;
        this.cl_password = cl_password;
        this.id_tipo_usuario = id_tipo_usuario;
        this.id_persona = id_persona;
        this.es_usuario = es_usuario;
    }

    public Usuario() {
        this.id_usuario = "";
        this.no_usuario = "";
        this.cl_password = "";
        this.id_tipo_usuario = "";
        this.id_persona = "";
        this.es_usuario = "";
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNo_usuario() {
        return no_usuario;
    }

    public void setNo_usuario(String no_usuario) {
        this.no_usuario = no_usuario;
    }

    public String getCl_password() {
        return cl_password;
    }

    public void setCl_password(String cl_password) {
        this.cl_password = cl_password;
    }

    public String getId_tipo_usuario() {
        return id_tipo_usuario;
    }

    public void setId_tipo_usuario(String id_tipo_usuario) {
        this.id_tipo_usuario = id_tipo_usuario;
    }

    public String getId_persona() {
        return id_persona;
    }

    public void setId_persona(String id_persona) {
        this.id_persona = id_persona;
    }

    public String getEs_usuario() {
        return es_usuario;
    }

    public void setEs_usuario(String es_usuario) {
        this.es_usuario = es_usuario;
    }
}
