/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.application.interfaces;

/**
 *
 * @author MILTON
 */
public interface InterfaceEquipo {
    public String INSERT_EQUIPO(String ID_EQUIPO, String NO_EQUIPO, String ID_TORNEO, String ES_EQUIPO, String LOGO_EQUIPO);
    public String obt_id_cat_equi(String id_juego,String id_equipo);
}
