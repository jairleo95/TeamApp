/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

/**
 *
 * @author alum.fial8
 */
public interface InterfaceIntegrantes_Equipos {

    public void INSERT_DATOS_Integrantes_equipo(String ID,String nombre,String ap_pater,String ap_mater,String co_est,String cell,String dni,String correo);
    public String ID_MAX_PER ();
    public void INSER_DET_CAT (String id_detealle,String id_cte, String id_per,String nu_cam); 
}
