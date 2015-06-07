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
import pe.edu.upeu.application.interfaces.InterfaceUsuarioDAO;
import pe.edu.upeu.application.model.Usuario;

/**
 *
 * @author ALFA
 */
public class UsuarioDAO implements InterfaceUsuarioDAO {

    ConexionBD conn;

    @Override
    public List<Usuario> Validar_Logueo(String usuario, String clave) {
        this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
        String sql = "SELECT * FROM TATD_USUARIO WHERE TRIM(NO_USUARIO)='" + usuario.trim() + "' AND TRIM(CL_PASSWORD)='" + clave.trim() + "'";
        List<Usuario> list = new ArrayList<Usuario>();
        try {
            ResultSet rs = this.conn.query(sql);
            while (rs.next()) {
                Usuario v = new Usuario();
                v.setId_usuario(rs.getString("id_usuario"));
                v.setNo_usuario(rs.getString("no_usuario"));
                v.setCl_password(rs.getString("cl_password"));
                v.setId_tipo_usuario(rs.getString("id_tipo_usuario"));
                v.setId_persona(rs.getString("id_persona"));
                v.setEs_usuario(rs.getString("es_usuario"));
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
