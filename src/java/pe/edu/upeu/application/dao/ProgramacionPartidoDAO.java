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
import pe.edu.upeu.application.interfaces.InterfaceProrgamacionPartidoDAO;

/**
 *
 * @author Jairleo95
 */
public class ProgramacionPartidoDAO implements InterfaceProrgamacionPartidoDAO {

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
    public List<Map<String, ?>> Listar_Cronograma(String id_torneo, String id_cat_juego) {
        List<Map<String, ?>> lista = new ArrayList<Map<String, ?>>();
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "SELECT CRONOGRAMA_PARTIDOS_JUEGOS.*,RHFU_DETERMINAR_FIANLISTAS (ID_CATEGORIA_JUEGO,ID_TORNEO,ID_JUEGO) AS FINALISTA FROM CRONOGRAMA_PARTIDOS_JUEGOS where id_categoria_juego='" + id_cat_juego + "' and id_torneo='" + id_torneo + "' order by ID_LOZA_DEPORTIVA, id_juego asc";

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
                rec.put("id_equi_1", rs.getString("ID_EQUIPO_1"));
                rec.put("id_equi_2", rs.getString("ID_EQUIPO_2"));
                rec.put("no_equipo_1", rs.getString("no_equipo_1"));
                rec.put("no_equipo_2", rs.getString("no_equipo_2"));
                rec.put("finalista", rs.getString("finalista"));
                rec.put("id_serie", rs.getString("ID_SERIE"));
                rec.put("lu_loza", rs.getString("lu_loza"));
                rec.put("no_loza", rs.getString("NO_LOZA_DEPORTIVA"));
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

    @Override
    public boolean Programar_Juego(String id_torneo, String id_cat_juego, String tipo_juego, double tiempo_juego, double tiempo_espera) {
        CallableStatement cst;
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            if (tipo_juego.equals("1")) {
                cst = this.conn.conex.prepareCall("{CALL TASP_PROGRAMAR_PARTIDOS( ?, ?,?,?,? )} ");
                cst.setString(1, id_torneo);
                cst.setString(2, id_cat_juego);
                cst.setString(3, tipo_juego);
                cst.setDouble(4, tiempo_juego);
                cst.setDouble(5, tiempo_espera);
                cst.execute();
            } else if (tipo_juego.equals("2")) {
                cst = this.conn.conex.prepareCall("{CALL tasp_programar_partido_serie( ?, ?,?,? )} ");
                cst.setString(1, id_torneo);
                cst.setString(2, id_cat_juego);
                cst.setDouble(3, tiempo_juego);
                cst.setDouble(4, tiempo_espera);
                cst.execute();
            }
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
        return true;
    }

    @Override
    public boolean Eliminar_Programacion(String id_torneo, String id_cat_juego) {
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            CallableStatement cst = this.conn.conex.prepareCall("{CALL tasp_eliminar_prog_juego( ?, ? )} ");
            cst.setString(1, id_torneo);
            cst.setString(2, id_cat_juego);
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
        return true;
    }

    @Override
    public List<Map<String, ?>> Listar_Cat_juego(String id_torneo) {
        List<Map<String, ?>> lista = new ArrayList<Map<String, ?>>();
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "SELECT cj.ID_CATEGORIA_JUEGO, tj.BG_COLOR,tj.DE_ICONO,cj.NO_CATEGORA,tj.NO_TIPO_JUEGO FROM TATM_CATEGORIA_JUEGO cj, TATD_TIPO_JUEGO tj WHERE tj.ID_TIPO_JUEGO = cj.ID_TIPO_JUEGO and ID_TORNEO='" + id_torneo + "'";

            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                Map<String, Object> rec = new HashMap<String, Object>();
                rec.put("id_tipo_ju", rs.getString("ID_CATEGORIA_JUEGO"));
                rec.put("no_cat", rs.getString("NO_CATEGORA"));
                rec.put("de_icon", rs.getString("DE_ICONO"));
                rec.put("bg_color", rs.getString("BG_COLOR"));
                rec.put("no_jue", rs.getString("NO_TIPO_JUEGO"));
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
    public String Mostrar_Nombre_torneo(String id_torneo) {
        String no_tor = null;
        try {
            this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
            String sql = "SELECT NO_TORNEO FROM TATM_TORNEO WHERE ID_TORNEO='" + id_torneo.trim() + "'";

            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                no_tor = rs.getString("NO_TORNEO");
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
        return no_tor;
    }

}
