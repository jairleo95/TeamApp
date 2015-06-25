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
import pe.edu.upeu.application.interfaces.InterfaceCat_EquipoDAO;

/**
 *
 * @author MILTON
 */
public class Cat_EquipoDAO implements InterfaceCat_EquipoDAO {

    ConexionBD conn;

    @Override
    public void Insertar_Cat_equipo(String id_equipo, String Id_cat_juego) {
        String id = "";
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            CallableStatement cst = this.conn.conex.prepareCall("{CALL TASP_INSERT_CAT_EQUIPO( ?, ?, ?)}");
            cst.setString(1, id_equipo.trim());
            cst.setString(2, Id_cat_juego.trim());
            cst.setString(3, "1".trim());
            cst.execute();
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
    }

}
