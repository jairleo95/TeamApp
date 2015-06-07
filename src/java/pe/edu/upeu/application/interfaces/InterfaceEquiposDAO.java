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
public interface InterfaceEquiposDAO  {

     public int Cantidad_Equipos(String id_torneo);
     public List<Map<String, ?>> Listar_Cronograma();
     
     public String INSERT_EQUIPO(String ID_EQUIPO, String NO_EQUIPO, String ID_TORNEO, String ES_EQUIPO, String LOGO_EQUIPO);
     
}
