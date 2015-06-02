/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

import java.sql.ResultSet;
import java.sql.SQLException;
import pe.edu.upeu.application.dao.EquiposDAO;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;

/**
 *
 * @author Alex
 */
public class InterfaceEquiposDAO implements EquiposDAO {

    ConexionBD conn;

    @Override
    public int Cantidad_Equipos(String id) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql =  "select count(*) from TATD_EQUIPO where ID_TORNEO = '"+id+"'";
        int nro = 0;
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()){
                nro = rs.getInt(1);
            }
        } catch (SQLException e)  {
        } finally {
        this.conn.close();
        }
        return nro;
    }

}
