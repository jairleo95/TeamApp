/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceEquiposDAO;

/**
 *
 * @author Alex
 */
public class EquiposDAO implements InterfaceEquiposDAO {

    ConexionBD conn;

    @Override
    public int Cantidad_Equipos(String id) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "select count(*) from TATD_EQUIPO where ID_TORNEO = '" + id + "'";
        int nro = 0;
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                nro = rs.getInt(1);
            }
        } catch (SQLException e) {
        } finally {
            this.conn.close();
        }
        return nro;
    }

    @Override
    public List<Map<String, ?>> Listar_Cronograma() {
        List<Map<String, ?>> lista = new ArrayList<Map<String, ?>>();
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "SELECT * FROM CRONOGRAMA_PARTIDOS_JUEGOS order by ID_LOZA_DEPORTIVA, id_juego asc";

            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                Map<String, Object> rec = new HashMap<String, Object>();
                rec.put("id_cro", rs.getString("ID_CRONOGRAMA_JUEGO"));
                rec.put("de_cro", rs.getString("DE_CRONOGRAMA_JUEGO"));
                rec.put("ho_ini", rs.getString("HO_INICIO"));
                rec.put("ho_fin", rs.getString("HO_FIN"));
                rec.put("id_jue", rs.getString("ID_JUEGO"));
                rec.put("es_cro", rs.getString("ES_CRONOGRAMA_JUEGO"));
                rec.put("id_loza", rs.getString("ID_LOZA_DEPORTIVA"));
                rec.put("id_ca_ju", rs.getString("ID_CATEGORIA_JUEGO"));
                rec.put("id_equi_1", rs.getString("NO_EQ_1"));
                rec.put("id_equi_2", rs.getString("NO_EQ_2"));
                rec.put("id_equi_1", rs.getString("ID_EQUIPO_1"));
                rec.put("id_equi_2", rs.getString("ID_EQUIPO_2"));
                rec.put("no_equipo_1", rs.getString("no_equipo_1"));
                rec.put("no_equipo_2", rs.getString("no_equipo_2"));
                lista.add(rec);
            }
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("Error!");
        } finally {
            try {
                this.conn.close();
            } catch (Exception e) {
            }
        }
        return lista;
    }

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
