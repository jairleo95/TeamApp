/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.application.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceControl_Partido;
import pe.edu.upeu.application.model.V_Listar_partido;

/**
 *
 * @author Laptop Sistemas
 */
public class Control_PartidoDAO implements InterfaceControl_Partido{
ConexionBD conn;
    @Override
    public List<V_Listar_partido> Listar_Partido() {
          this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "";
        List<V_Listar_partido> list = new ArrayList<V_Listar_partido>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                V_Listar_partido v = new V_Listar_partido();
                v.setId_juego(rs.getString("id_usuario"));
                v.setId_equipo_1(rs.getString("id_usuario"));
                v.setId_equipo_2(rs.getString("id_usuario"));
                v.setHo_fin(rs.getString("id_usuario"));
                v.setHo_fin(rs.getString("id_usuario"));
                v.setId_cronograma_partido(rs.getString("id_usuario"));
                v.setId_cat_equipo_1(rs.getString("Id_equipo_1"));
                v.setId_cat_equipo_2(rs.getString("Id_equipo_2"));
                list.add(v);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("Error!" + e.getMessage());
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        return list;
    }
    
}
