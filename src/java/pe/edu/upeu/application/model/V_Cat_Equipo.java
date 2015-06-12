/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.model;

/**
 *
 * @author MILTON
 */
public class V_Cat_Equipo {

    private String id_categoria_equipo;
    private String id_equipo;
    private String id_categoria_juego;
    private String es_categoria_equipo;

    public V_Cat_Equipo(String id_categoria_equipo, String id_equipo, String id_categoria_juego, String es_categoria_equipo) {
        this.id_categoria_equipo = id_categoria_equipo;
        this.id_equipo = id_equipo;
        this.id_categoria_juego = id_categoria_juego;
        this.es_categoria_equipo = es_categoria_equipo;
    }

    public V_Cat_Equipo() {
        this.id_categoria_equipo = "";
        this.id_equipo = "";
        this.id_categoria_juego = "";
        this.es_categoria_equipo = "";
    }

    public String getId_categoria_equipo() {
        return id_categoria_equipo;
    }

    public void setId_categoria_equipo(String id_categoria_equipo) {
        this.id_categoria_equipo = id_categoria_equipo;
    }

    public String getId_equipo() {
        return id_equipo;
    }

    public void setId_equipo(String id_equipo) {
        this.id_equipo = id_equipo;
    }

    public String getId_categoria_juego() {
        return id_categoria_juego;
    }

    public void setId_categoria_juego(String id_categoria_juego) {
        this.id_categoria_juego = id_categoria_juego;
    }

    public String getEs_categoria_equipo() {
        return es_categoria_equipo;
    }

    public void setEs_categoria_equipo(String es_categoria_equipo) {
        this.es_categoria_equipo = es_categoria_equipo;
    }

}
