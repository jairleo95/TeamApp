/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.CallableStatement;
import java.sql.SQLException;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceNuevoUsuario;

/**
 *
 * @author Erick Alexander
 */
public class NuevoUsuarioDAO implements InterfaceNuevoUsuario {

    ConexionBD conn;

    public void Insert_USUARIOS(String ID_PERSONA, String NO_PERSONA, String AP_PATERNO,String c_uni, String NU_CELULAR, String NU_DOC_DNI, String ID_TIPO_PERSONA, String AP_MATERNO, String CO_ELECTRONICO, String ID_USUARIO, String corre_user, String CL_PASSWORD) {
        CallableStatement cst;
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            cst = conn.conex.prepareCall("{CALL TASP_INSERT_USUARIO( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )");
            cst.setString(1, null);
            cst.setString(2, NO_PERSONA);
            cst.setString(3, AP_PATERNO);
            cst.setString(4, c_uni);
            cst.setString(5, NU_CELULAR);
            cst.setString(6, NU_DOC_DNI);
            cst.setString(7, ID_TIPO_PERSONA);
            cst.setString(8, AP_MATERNO);
            cst.setString(9, CO_ELECTRONICO);
            cst.setString(10, ID_USUARIO);
            cst.setString(11, corre_user);
            cst.setString(12, CL_PASSWORD);
            cst.execute();
        } catch (SQLException ex) {
            throw new RuntimeException(ex.getMessage());
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }

        }

    }


}
