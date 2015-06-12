/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

import java.util.List;
import java.util.Map;
import pe.edu.upeu.application.model.V_Listar_partido;

/**
 *
 * @author Laptop Sistemas
 */
public interface InterfaceControl_Partido {

    public List<V_Listar_partido> Listar_Partido();

    public String Mostrar_nombre(String id_cat_equipo);

    public String Mostrar_categoria_juego(String id_juego);

    public String listar_goles(String id_juego, String id_cat_juego);
}
