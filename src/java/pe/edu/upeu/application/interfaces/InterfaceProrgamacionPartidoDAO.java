/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

import java.util.List;
import java.util.Map;

/**
 *
 * @author Alex
 */
public interface InterfaceProrgamacionPartidoDAO {

    public int Cantidad_Equipos(String id_torneo);

    public List<Map<String, ?>> Listar_Cronograma(String id_torneo, String id_cat_juego );

    public String INSERT_EQUIPO(String ID_EQUIPO, String NO_EQUIPO, String ID_TORNEO, String ES_EQUIPO, String LOGO_EQUIPO);

    public boolean Programar_Juego(String id_torneo, String id_cat_juego, String tipo_juego,double tiempo_juego,double tiempo_espera);

    public boolean Eliminar_Programacion(String id_torneo, String id_cat_juego);
    
    public List<Map<String, ?>> Listar_Cat_juego(String id_torneo);
    
    public String Mostrar_Nombre_torneo(String id_torneo);
}
