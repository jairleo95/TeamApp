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
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceControl_Partido;
import pe.edu.upeu.application.model.V_Listar_partido;

/**
 *
 * @author Laptop Sistemas
 */
public class Control_PartidoDAO implements InterfaceControl_Partido {

    ConexionBD conn;

    @Override
    public List<V_Listar_partido> Listar_Partido() {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "select * from CRONOGRAMA_PARTIDOS_JUEGOS WHERE ID_EQUIPO_1 is not null and ID_EQUIPO_2 is not null";
        List<V_Listar_partido> list = new ArrayList<V_Listar_partido>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                V_Listar_partido v = new V_Listar_partido();
                v.setId_juego(rs.getString("Id_juego"));
                v.setId_equipo_1(rs.getString("Id_equipo1"));
                v.setId_equipo_2(rs.getString("Id_equipo2"));
                v.setHo_inicio(rs.getString("Ho_inicio"));
                v.setHo_fin(rs.getString("Ho_fin"));
                v.setId_cronograma_partido(rs.getString("id_cronograma_juego"));
                v.setId_cat_equipo_1(rs.getString("Id_equipo_1"));
                v.setId_cat_equipo_2(rs.getString("Id_equipo_2"));
                v.setNo_equipo_1(rs.getString("No_equipo_1"));
                v.setNo_equipo_2(rs.getString("No_equipo_2"));
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
    public String Mostrar_nombre(String id_cat_equipo) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT e.NO_EQUIPO FROM TATD_EQUIPO e,TATD_CATEGORIA_EQUIPO ce WHERE e.ID_EQUIPO = ce.ID_EQUIPO and ce.ID_CATEGORIA_EQUIPO='" + id_cat_equipo.trim() + "'";
        String nom = null;
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                nom = rs.getString(1);
            }
        } catch (SQLException e) {
        } finally {
            this.conn.close();
        }
        return nom;
    }

    @Override
    public String Mostrar_categoria_juego(String id_juego) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT ct.NO_CATEGORA FROM TATM_JUEGO j, TATM_CATEGORIA_JUEGO ct WHERE j.ID_CATEGORIA_JUEGO = ct.ID_CATEGORIA_JUEGO and j.ID_JUEGO='" + id_juego.trim() + "'";
        String nom = null;
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                nom = rs.getString(1);
            }
        } catch (SQLException e) {
        } finally {
            this.conn.close();
        }
        return nom;
    }

    @Override
    public String listar_goles(String id_juego, String id_cat_juego) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT COUNT(*) FROM TATD_CONTROL_PARTIDO WHERE TI_CONTROL='1' and ID_JUEGO='" + id_juego.trim() + "' and ID_CATEGORIA_EQUIPO='" + id_cat_juego.trim() + "'";
        String nom = null;
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                nom = rs.getString(1);
            }
        } catch (SQLException e) {
        } finally {
            this.conn.close();
        }
        return nom;
    }

    @Override
    public void Agregar_gol(String id_cat_equipo, String id_juego, String ti_control, String US_CREACION) {
        String id = "";
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            CallableStatement cst = this.conn.conex.prepareCall("{CALL TASP_INSERTAR_GOL( ?, ?, ?, ?)}");
            cst.setString(1, id_cat_equipo.trim());
            cst.setString(2, id_juego.trim());
            cst.setString(3, ti_control.trim());
            cst.setString(4, US_CREACION.trim());
            //cst.registerOutParameter(6, Types.CHAR);
            cst.execute();
            //id = cst.getString(6);
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

    @Override
    public List<Map<String, ?>> Listar_Jugadores(String id_cat_equipo) {
        List<Map<String, ?>> Lista = new ArrayList<Map<String, ?>>();
       try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "SELECT ce.ID_DETALLE_CAT_EQUIPO,ce.NU_CAMISETA,p.NO_PERSONA,p.AP_PATERNO,p.AP_MATERNO FROM TATD_DETALLE_CAT_EQUIPO ce,TATH_PERSONA p WHERE p.ID_PERSONA = ce.ID_PERSONA and  ID_CATEGORIA_EQUIPO='"+id_cat_equipo.trim()+"'";
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                Map<String, Object> rec = new HashMap<String, Object>();
                rec.put("id", rs.getString("ID_DETALLE_CAT_EQUIPO"));
                rec.put("nu_cam", rs.getString("NU_CAMISETA"));
                rec.put("no_per", rs.getString("NO_PERSONA"));
                rec.put("ap_pat", rs.getString("AP_PATERNO"));
                rec.put("ap_mat", rs.getString("AP_MATERNO"));
                Lista.add(rec);
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
        return Lista;
    }

}
