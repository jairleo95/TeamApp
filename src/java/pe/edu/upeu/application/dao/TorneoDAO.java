/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceTorneo;
import pe.edu.upeu.application.model.V_Torneo;

/**
 *
 * @author MILTON
 */
public class TorneoDAO implements InterfaceTorneo {

    ConexionBD conn;

    @Override
    public List<V_Torneo> Listar_Torneo() {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT * FROM tatm_torneo";
        List<V_Torneo> list = new ArrayList<V_Torneo>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                V_Torneo v = new V_Torneo();
                v.setId_torneo(rs.getString("Id_torneo"));
                v.setNo_torneo(rs.getString("No_torneo"));
                v.setEs_torneo(rs.getString("Es_torneo"));
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
    
    @Override
    public List<Map<String, ?>> List_Torneo() {
        List<Map<String, ?>> lista = new ArrayList<Map<String, ?>>();
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "select ID_TORNEO, NO_TORNEO ||' - '|| LU_TORNEO ||' ('|| FE_INICIO||' - '|| FE_FIN||') ' as nombre from tatm_torneo where es_torneo='1' ";
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                Map<String, Object> rec = new HashMap<String, Object>();
                rec.put("id", rs.getString("id_torneo"));
                rec.put("nombre", rs.getString("nombre"));
                lista.add(rec);
            }
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("ERROR: " + e.getMessage());
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
        return lista;

    }

}
