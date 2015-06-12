/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.sql.Types;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceEquipo;

/**
 *
 * @author MILTON
 */
public class EquipoDAO implements InterfaceEquipo {

    ConexionBD conn;

    @Override
    public String INSERT_EQUIPO(String ID_EQUIPO, String NO_EQUIPO, String ID_TORNEO, String ES_EQUIPO, String LOGO_EQUIPO) {
        String id = "";
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            CallableStatement cst = this.conn.conex.prepareCall("{CALL RHSP_INSERT_TATD_EQUIPO( ?, ?, ?, ?, ?,? )} ");
            cst.setString(1, ID_EQUIPO);
            cst.setString(2, NO_EQUIPO);
            cst.setString(3, ID_TORNEO);
            cst.setString(4, ES_EQUIPO);
            cst.setString(5, LOGO_EQUIPO);
            cst.registerOutParameter(6, Types.CHAR);
            cst.execute();
            id = cst.getString(6);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("ERROR :" + e.getMessage());
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
        return id;
    }

}
