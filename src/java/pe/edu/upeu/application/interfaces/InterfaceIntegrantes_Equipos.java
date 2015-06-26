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
 * @author alum.fial8
 */
public interface InterfaceIntegrantes_Equipos {

    public void INSERT_DATOS_Integrantes_equipo(String ID,String nombre,String ap_pater,String co_es,String cell,String dni,String ID_T_P, String ap_mater,String correo,String ca_equi ,String nu_camiseta);
    public String ID_MAX_PER ();
    public void INSER_DET_CAT (String id_detealle,String id_cte, String id_per,String nu_cam); 
    public List<Map<String, ?>> Listar_Integrantes(String nombre,String ap_pat,String ap_mat,String co_est,String nu_cam,String dni,String cell,String email);
}
