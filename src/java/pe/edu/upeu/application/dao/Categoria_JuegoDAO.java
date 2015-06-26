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
import pe.edu.upeu.application.interfaces.InterfaceCategoria_Juego;
import pe.edu.upeu.application.model.V_Categoria_Juego;

/**
 *
 * @author MILTON
 */
public class Categoria_JuegoDAO implements InterfaceCategoria_Juego {

    ConexionBD conn;

    @Override
    public List<V_Categoria_Juego> Listar_catgeria_juego(String id_torneo) {
       this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT * FROM tatm_categoria_juego where id_torneo='" + id_torneo.trim() + "'";
        List<V_Categoria_Juego> list = new ArrayList<V_Categoria_Juego>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                V_Categoria_Juego v = new V_Categoria_Juego();
                v.setId_categoria_juego(rs.getString("Id_categoria_juego"));
                v.setNo_categoria(rs.getString("No_categora"));
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
    public List<V_Categoria_Juego> Listar_catgeria_juego_eq(String id_torneo, String id_equipo) {
        
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT ID_CATEGORIA_JUEGO, NO_CATEGORA FROM  TATM_CATEGORIA_JUEGO WHERE ID_TORNEO='" + id_torneo.trim() + "' and ID_CATEGORIA_JUEGO in(SELECT ID_CATEGORIA_JUEGO FROM TATD_CATEGORIA_EQUIPO where ID_EQUIPO='" + id_equipo.trim() + "')";
        List<V_Categoria_Juego> list = new ArrayList<V_Categoria_Juego>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                V_Categoria_Juego v = new V_Categoria_Juego();
                v.setId_categoria_juego(rs.getString("ID_CATEGORIA_JUEGO"));
                v.setNo_categoria(rs.getString("NO_CATEGORA"));
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
