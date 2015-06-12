/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.application.model;

/**
 *
 * @author Laptop Sistemas
 */
public class V_Listar_partido {
    private String id_cronograma_partido;
    private String de_cronograma_juego;
    private String ho_inicio;
    private String ho_fin;
    private String id_juego;
    private String es_cronograma_juego;
    private String id_loza_deportiva;
    private String id_categoria_juego;
    private String id_cat_equipo_1;
    private String id_cat_equipo_2;
    private String id_equipo_1;
    private String id_equipo_2;
    private String no_equipo_1;
    private String no_equipo_2;

    public V_Listar_partido(String id_cronograma_partido, String de_cronograma_juego, String ho_inicio, String ho_fin, String id_juego, String es_cronograma_juego, String id_loza_deportiva, String id_categoria_juego, String id_cat_equipo_1, String id_cat_equipo_2, String id_equipo_1, String id_equipo_2, String no_equipo_1, String no_equipo_2) {
        this.id_cronograma_partido = id_cronograma_partido;
        this.de_cronograma_juego = de_cronograma_juego;
        this.ho_inicio = ho_inicio;
        this.ho_fin = ho_fin;
        this.id_juego = id_juego;
        this.es_cronograma_juego = es_cronograma_juego;
        this.id_loza_deportiva = id_loza_deportiva;
        this.id_categoria_juego = id_categoria_juego;
        this.id_cat_equipo_1 = id_cat_equipo_1;
        this.id_cat_equipo_2 = id_cat_equipo_2;
        this.id_equipo_1 = id_equipo_1;
        this.id_equipo_2 = id_equipo_2;
        this.no_equipo_1 = no_equipo_1;
        this.no_equipo_2 = no_equipo_2;
    }
    public V_Listar_partido() {
        this.id_cronograma_partido = "";
        this.de_cronograma_juego = "";
        this.ho_inicio = "";
        this.ho_fin = "";
        this.id_juego = "";
        this.es_cronograma_juego = "";
        this.id_loza_deportiva = "";
        this.id_categoria_juego = "";
        this.id_cat_equipo_1 = "";
        this.id_cat_equipo_2 = "";
        this.id_equipo_1 = "";
        this.id_equipo_2 = "";
        this.no_equipo_1 = "";
        this.no_equipo_2 = "";
    }

    public String getId_cronograma_partido() {
        return id_cronograma_partido;
    }

    public void setId_cronograma_partido(String id_cronograma_partido) {
        this.id_cronograma_partido = id_cronograma_partido;
    }

    public String getDe_cronograma_juego() {
        return de_cronograma_juego;
    }

    public void setDe_cronograma_juego(String de_cronograma_juego) {
        this.de_cronograma_juego = de_cronograma_juego;
    }

    public String getHo_inicio() {
        return ho_inicio;
    }

    public void setHo_inicio(String ho_inicio) {
        this.ho_inicio = ho_inicio;
    }

    public String getHo_fin() {
        return ho_fin;
    }

    public void setHo_fin(String ho_fin) {
        this.ho_fin = ho_fin;
    }

    public String getId_juego() {
        return id_juego;
    }

    public void setId_juego(String id_juego) {
        this.id_juego = id_juego;
    }

    public String getEs_cronograma_juego() {
        return es_cronograma_juego;
    }

    public void setEs_cronograma_juego(String es_cronograma_juego) {
        this.es_cronograma_juego = es_cronograma_juego;
    }

    public String getId_loza_deportiva() {
        return id_loza_deportiva;
    }

    public void setId_loza_deportiva(String id_loza_deportiva) {
        this.id_loza_deportiva = id_loza_deportiva;
    }

    public String getId_categoria_juego() {
        return id_categoria_juego;
    }

    public void setId_categoria_juego(String id_categoria_juego) {
        this.id_categoria_juego = id_categoria_juego;
    }

    public String getId_cat_equipo_1() {
        return id_cat_equipo_1;
    }

    public void setId_cat_equipo_1(String id_cat_equipo_1) {
        this.id_cat_equipo_1 = id_cat_equipo_1;
    }

    public String getId_cat_equipo_2() {
        return id_cat_equipo_2;
    }

    public void setId_cat_equipo_2(String id_cat_equipo_2) {
        this.id_cat_equipo_2 = id_cat_equipo_2;
    }

    public String getId_equipo_1() {
        return id_equipo_1;
    }

    public void setId_equipo_1(String id_equipo_1) {
        this.id_equipo_1 = id_equipo_1;
    }

    public String getId_equipo_2() {
        return id_equipo_2;
    }

    public void setId_equipo_2(String id_equipo_2) {
        this.id_equipo_2 = id_equipo_2;
    }

    public String getNo_equipo_1() {
        return no_equipo_1;
    }

    public void setNo_equipo_1(String no_equipo_1) {
        this.no_equipo_1 = no_equipo_1;
    }

    public String getNo_equipo_2() {
        return no_equipo_2;
    }

    public void setNo_equipo_2(String no_equipo_2) {
        this.no_equipo_2 = no_equipo_2;
    }
    
}
