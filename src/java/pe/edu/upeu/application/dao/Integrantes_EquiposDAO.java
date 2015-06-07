/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.print.DocFlavor;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceEquiposDAO;
import pe.edu.upeu.application.interfaces.InterfaceIntegrantes_Equipos;

/**
 *
 * @author Alex
 */
public class Integrantes_EquiposDAO implements InterfaceIntegrantes_Equipos {

    ConexionBD conn;

    @Override
    
    public void INSERT_DATOS_Integrantes_equipo(String ID,String NO_PERSONA,String AP_PATERNO_SP,String AP_MATERNO_SP,String CO_ESTUDIANTE_SP,String NU_CELULAR_SP,String NU_DOC_DNI_SP,String CO_ELECTRONICO_PE_SP) {
       CallableStatement cst;
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            cst = conn.conex.prepareCall("{CALL RHSP_INSERT_JUGADOR(  ?, ?, ?, ?, ?)}");
            cst.setString(1, NO_PERSONA);
            cst.setString(2, AP_PATERNO_SP);
            cst.setString(3, AP_MATERNO_SP);
            cst.setString(4, CO_ESTUDIANTE_SP);
            cst.setString(5, NU_CELULAR_SP);
            cst.setString(6, NU_DOC_DNI_SP);
            cst.setString(7, CO_ELECTRONICO_PE_SP);
           

            cst.execute();
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("ERROR : " + e.getMessage());
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
        
    }

    @Override
    public String ID_MAX_PER() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void INSER_DET_CAT(String id_detealle, String id_cte, String id_per, String nu_cam) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
