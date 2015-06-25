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
public class V_Categoria_Juego {
    
    String id_categoria_juego;
    String no_categoria;
    String id_torneo;
    String tipo_eliminacion;

    public String getId_categoria_juego() {
        return id_categoria_juego;
    }

    public void setId_categoria_juego(String id_categoria_juego) {
        this.id_categoria_juego = id_categoria_juego;
    }

    public String getNo_categoria() {
        return no_categoria;
    }

    public void setNo_categoria(String no_categoria) {
        this.no_categoria = no_categoria;
    }

    public String getId_torneo() {
        return id_torneo;
    }

    public void setId_torneo(String id_torneo) {
        this.id_torneo = id_torneo;
    }

    public String getTipo_eliminacion() {
        return tipo_eliminacion;
    }

    public void setTipo_eliminacion(String tipo_eliminacion) {
        this.tipo_eliminacion = tipo_eliminacion;
    }       
}
