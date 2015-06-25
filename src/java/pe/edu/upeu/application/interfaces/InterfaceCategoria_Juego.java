/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

import java.util.List;
import pe.edu.upeu.application.model.V_Categoria_Juego;

/**
 *
 * @author MILTON
 */
public interface InterfaceCategoria_Juego {

    public List<V_Categoria_Juego> Listar_catgeria_juego(String id_torneo);
    public List<V_Categoria_Juego> Listar_catgeria_juego_eq(String id_torneo, String id_equipo);
}
