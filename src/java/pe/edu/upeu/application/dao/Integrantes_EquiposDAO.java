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
import pe.edu.upeu.application.interfaces.InterfaceIntegrantes_Equipos;

/**
 *
 * @author Alex
 */
public class Integrantes_EquiposDAO implements InterfaceIntegrantes_Equipos {

    ConexionBD conn;

    @Override

    public void INSERT_DATOS_Integrantes_equipo(String ID_PERSONA, String NO_PERSONA, String AP_PATERNO, String CO_ESTUDIANTE, String NU_CELULAR, String NU_DOC_DNI, String ID_TIPO_PERSONA, String AP_MATERNO, String CO_ELECTRONICO_PE, String ID_CATEGORIA_EQUIPO, String NU_CAMISETA,String id_cat_juego) {
        CallableStatement cst;
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            cst = conn.conex.prepareCall("{CALL TASP_INSERT_JUGADOR(  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)}");
            cst.setString(1, null);
            cst.setString(2, NO_PERSONA);
            cst.setString(3, AP_PATERNO);
            cst.setString(4, CO_ESTUDIANTE);
            cst.setString(5, NU_CELULAR);
            cst.setString(6, NU_DOC_DNI);
            cst.setString(7, ID_TIPO_PERSONA);
            cst.setString(8, AP_MATERNO);
            cst.setString(9, CO_ELECTRONICO_PE);
            cst.setString(10, ID_CATEGORIA_EQUIPO);
            cst.setString(11, id_cat_juego.trim());
            cst.setString(12, NU_CAMISETA);
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
